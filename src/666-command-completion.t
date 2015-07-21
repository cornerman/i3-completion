#!perl

use i3test;
use List::MoreUtils qw(firstidx uniq);
use Data::Dumper;

# define bogus symbol to be fed to i3. border seems to only accepts numbers somehow
my $bogus = "1337";

# result file
my $file = "/tmp/_i3_commands_list";

sub try_command {
    my $cmd = shift;

    print "try: " . $cmd . "\n";

    # restarting and exiting is not a good idea, so take care of these commands
    # manually: just reload instead - which has the same syntax
    $cmd =~ s/^(exit|restart)/reload/g;

    # issue the command
    my $response = cmd $cmd;

    return $response;
}

sub build_completions {
    my $response = shift;

    # get the error description, this corresponds to the tokens which the i3
    # parser expected us to send. we remove the first token, as this is a
    # description
    my $error = $response->[0]->{error};
    my @tokens = split(/:/, defined($error) ? $error : (":"));
    if (!defined($tokens[1])) {
        return ();
    }

    @tokens = split(/,/, $tokens[1]);

    # remove spaces and quotes. 
    @tokens = map { $_ =~ tr/\'//d; $_ } @tokens;
    # TODO: strange " to " completion option
    # this is different than the "to" - handled later
    @tokens = grep { $_ ne " to " }  @tokens;
    @tokens = map { $_ =~ tr/ //d; $_ } @tokens;
    
    # remove criteria, this is handled elsewhere
    @tokens = map { $_ =~ m/\[|\]/ ? () : $_ } @tokens;

    # take care of the ambigous "... to ..." construction, completion option
    # "to" with lhs on the left, and rhs on the right side
    my $idx = firstidx { $_ eq "to" } @tokens;   
    if ($idx > -1) {
        my @rhs = @tokens;
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

        @tokens = @merged;
    }

    # TODO: care about types?
    @tokens = map { $_ eq "<string>" ? "<word>" : $_ } @tokens;

    return uniq(@tokens);
} 

sub get_completions {
    my $cmd = shift;

    print "complete: " . $cmd . "\n";

    # issue the command
    my $response_cmd = try_command($cmd);

    # gather info from successful commands
    my @add_complete = ();

    # check whether the command was successful
    my $parse_error = $response_cmd->[0]->{parse_error} || defined($response_cmd->[1]);
    if (!$parse_error) {
        print "first success!\n";
        push(@add_complete, "<end>");
    }

    # issue test command with bogus suffix
    my $response_bogus = try_command($cmd . " " .$bogus);

    # check whether the command was successful
    my $parse_error_bogus = $response_bogus->[0]->{parse_error} || defined($response_bogus->[1]);
    if (!$parse_error_bogus) {
        print "second success!\n";
        push(@add_complete, "<word>");
    }

    # build up completions
    my @complete = (build_completions($response_cmd), build_completions($response_bogus));
    @complete = (@complete, @add_complete);
    @complete = uniq(@complete);

    print "completed:" . Dumper(@complete);
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

    print "enter get_commands\n";
    my @cmds = ();
    foreach my $token (@tokens) {
        print "TOKEN: $token\n";
        my @current = get_completions($token);
        if (scalar @current > 0) { 

            # TODO: chain of words...
            if ($token =~ m/(<word>$)/ && !($token =~ m/position <word>( <word>)?$/)) {
                @current = grep { $_ ne "<word>" } @current;
            }

            if ($token =~ m/(px|ppt|to)$/ || $token =~ /[^>]$/) {
                @current = grep { $_ ne "px" && $_ ne "ppt" } @current;
            }

            if ($token =~ m/to$/) {
                @current = grep { !($_ =~ m/to|<end>/) } @current;
            }

            if ($token =~ m/--no-startup-id/) {
                @current = grep { $_ ne "--no-startup-id" } @current;
            }

            print Dumper(@current);
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
is(scalar @cmds, 364, "number of commands ok.");

print "\n-> results written to: $file\n";

done_testing;

