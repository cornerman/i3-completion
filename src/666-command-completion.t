#!perl

use i3test;
use List::MoreUtils qw(firstidx uniq);
use Data::Dumper;

# define bogus symbol to be fed to i3. border seems to only accepts numbers somehow
my $bogus = "1337";

# result file
my $file = "_i3_commands_list";

sub try_command {
    my $cmd = shift;

    print "try: $cmd\n";

    # restarting and exiting is not a good idea, so take care of these commands
    # manually: just reload instead - which has the same syntax
    $cmd =~ s/^(exit|restart)/reload/g;

    # TODO: numbers work for all commands, so replace all placeholders with bogus
    # symbols again...
    $cmd =~ s/<word>/$bogus/g;

    # issue the command
    my $response = cmd $cmd;

    print "response" . Dumper($response->[0]) . "\n";

    return $response;
}

sub build_completions {
    my $cmd = shift;
    my $response = shift;

    # get the error description, this corresponds to the tokens which the i3
    # parser expected us to send. we remove the first token, as this is a
    # description
    my $error = $response->[0]->{error};
    if (!defined($error)) {
        return ();
    }

    my @tokens = split(/:/, $error);
    if (!defined($tokens[1])) {
        return ();
    }

    # these are the expected commands
    @tokens = split(/,/, $tokens[1]);

    # remove spaces and quotes.
    @tokens = map { $_ =~ tr/\'//d; $_ } @tokens;

    # TODO: strange " to " completion option
    # this is different than the "to" - handled later
    @tokens = grep { $_ ne " to " }  @tokens;
    @tokens = map { $_ =~ tr/ //d; $_ } @tokens;

    # remove criteria, this is handled elsewhere
    @tokens = map { $_ =~ m/\[|\]/ ? () : $_ } @tokens;

    # only options after first command
    my @existing = split(/ /, $cmd);
    if (scalar @existing  > 1 && @existing[@existing - 1] !~ m/-(-[a-z]+)+/) {
        @tokens = grep { $_ !~ m/-(-[a-z]+)+/ } @tokens;
    }

    # TODO: take care of the ambigous "... to ..." construction, completion option
    # "to" with lhs on the left, and rhs on the right side
    my $idx = firstidx { $_ eq "to" } @tokens;
    if ($idx > -1) {
        my @rhs = grep { $_ !~ /-(-[a-z]+)+/ } @tokens;
        my @lhs = splice @rhs, 0, $idx + 1;
        pop(@lhs);
        my @merged;
        for my $b (@rhs) {
            for my $a (@lhs) {
                push(@merged, $a . " to " . $b);
                push(@merged, $a . " " . $b);
            }
            push(@merged, "to " . $b);
            push(@merged, $b);
        }

        if (scalar @merged == 0) {
            @merged = ("to");
        }

        my @opts = grep { $_ =~ /-(-[a-z]+)+/ } @tokens;
        @tokens = (@merged, @opts);
    }

    # TODO: care about types?
    @tokens = map { $_ eq "<string>" || $_ eq "<number>" ? "<word>" : $_ } @tokens;

    return uniq(@tokens);
}

sub get_completions {
    my $cmd = shift;

    # gather info from successful commands
    my @complete = ();

    # issue the command
    my $response_cmd = try_command($cmd);

    # check whether the command was successful
    my $parse_error = $response_cmd->[0]->{parse_error} || defined($response_cmd->[1]);
    @complete = build_completions($cmd, $response_cmd);

    if (!$parse_error) {
        push(@complete, "<end>");

        # issue test command with bogus suffix
        my $bogus_cmd = $cmd . " " .$bogus;
        my $response_bogus = try_command($bogus_cmd);
        if (!defined($response_bogus->[1])) {
            # check whether the command was successful
            my $parse_error_bogus = $response_bogus->[0]->{parse_error};
            if (!$parse_error_bogus) {
                push(@complete, "<word>");
            }

            @complete = (@complete, build_completions($bogus_cmd, $response_bogus));
        }
    }

    return uniq(@complete);
}

sub get_criteria {
    my $cmd = "[";

    my @criteria = get_completions($cmd);

    my @crit_cmds = ("[ ]");
    foreach my $crit (@criteria) {
        push(@crit_cmds, "[ $crit = <word> ]");
    }

    return @crit_cmds;
}

sub get_commands {
    my @tokens = @_;

    my @cmds = ();
    foreach my $token (@tokens) {
        my @current = get_completions($token);
        if (scalar @current > 0) {

            # TODO: chain of words...
            if ($token =~ m/(<word>$)/ && !($token =~ m/set|position <word>( <word>)?$/)) {
                @current = grep { $_ ne "<word>" } @current;
            }

            if ($token =~ m/(px|ppt|to)$/ || $token =~ /[^>]$/) {
                @current = grep { $_ ne "px" && $_ ne "ppt" } @current;
            }

            if ($token =~ m/to$/) {
                @current = grep { $_ !~ m/to|<end>/ } @current;
            }

            # option duplicates
            my @opts = grep { $_ =~ m/-(-[a-z]+)+/ } split(/ /, $token);
            my %existing = map {($_, 1)} @opts;
            @current = grep {!$existing{$_}} @current;

            # finished word
            if (grep { $_ eq "<end>"} @current) {
                push(@cmds, $token);
                @current = grep { $_ ne "<end>" } @current;
            }

            @current = map { $token . " " . $_ } @current;
            @cmds = (@cmds, get_commands(@current));
        }
    }

    return uniq(@cmds);
}

# get criteria rules
my @criteria = get_criteria();

# get completions, we start with a bogus command
my @complete = get_completions($bogus);
@complete = map { $_ eq "<end>" ? () : $_ } @complete;
my @cmds = get_commands(@complete);
@cmds = (@cmds, @criteria);

# write results
open (MYFILE, '>', $file) or die "could not open $file";
print MYFILE join("\n", @cmds);
close (MYFILE);

# check
is(scalar @cmds, 418, "number of commands ok.");

print "\n-> results written to: $file\n";

done_testing;

