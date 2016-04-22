#!/usr/bin/env perl

use List::MoreUtils qw(uniq);
use List::Util qw[min max];
use Data::Dumper;

$num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "Usage: create-complete.pl <commands_file>\n";
    exit;
}

my $file = $ARGV[0];

open(my $handle, '<', $file) or die "could not open $file";
my @lines = <$handle>;
close($handle);

# get command prefixes sorted by number of words
my @tokens = ([""]);
for (my $i = 0; ; $i++) {
    my $maxlen = 0;
    my @curr = map { my @split = split(/ /, $_); my $len = scalar @split; $maxlen = max($maxlen, $len); my $join = ( $len > $i ? join(' ', @split[0..$i]) : "" ); $join =~ s/\s+$//; $join } @lines;
    @curr = grep { $_ ne "" } @curr;
    push(@tokens, [uniq(@curr)]);
    if ($maxlen == $i) {
        last;
    }
}

# build up completion rules
my $rules = "";
for (my $x = scalar @tokens -1; $x > 0; $x--) {
    my @curr = @{$tokens[$x - 1]};
    my @next = @{$tokens[$x]};
    for (my $y = 0; $y < scalar @curr; $y++) {
        my $start = $curr[$y];
        my @cmd = split(/ /, $start);

        my @next_match = grep { my $tmp = $_; $tmp =~ s/(^| )[^ ]+$//; $start eq $tmp } @next;
        @next_match = map { my @next_cmd = split(/ /, $_); $next_cmd[scalar @next_cmd -1] } @next_match;
        @next_match = map { $_ eq "<word>" ? "WORD" : $_ } @next_match;

        next if ($start =~ m/(\[ .+ = .+( \])?)|(\[ \])$/);

        my $condition = "";
        my $cmd_len = scalar @cmd;
        for (my $i = $cmd_len -1; $i >= 0; $i--) {
            my $part = $cmd[$i];
            if ($part eq "[") {
               $condition = $condition . " (\$\{COMP_WORDS\[COMP_CWORD-" . ($cmd_len - $i) . "\]\} == \"[\" || \$\{COMP_WORDS\[COMP_CWORD-" . ($cmd_len - $i + 1) . "\]\} == \"=\") &&";
            } elsif ($part ne "<word>") {
               $condition = $condition . " \$\{COMP_WORDS\[COMP_CWORD-" . ($cmd_len - $i) . "\]\} == \"" .  $part . "\" &&";
            }
        }

        $condition =~ s/\&\&$//;
        if ($condition eq "") {
            $condition = " \$cur != -* && (\$COMP_CWORD == 1 || \$\{COMP_WORDS[COMP_CWORD-1]\} == \"]\" || \$\{COMP_WORDS[COMP_CWORD-2]\} == \"-t\" || \$\{COMP_WORDS[COMP_CWORD-2]\} == \"-s\") ";
        } else {
            $condition = " \$COMP_CWORD -gt " . $cmd_len . " && (" . $condition . ") ";
        }

        $rules .= "\n\t# $start\n";
        $rules .= "\tif [[" . $condition . "]] ; then\n";

        my $complete_string = join (" ", @next_match);
        if ($complete_string ne "") {
            $rules .= "\t\tlocal opts=\"" . $complete_string . "\"\n";
            $rules .= "\t\tCOMPREPLY=( \$(compgen -W \"\$opts\" -- \$cur) )\n";
        }

        $rules .= "\t\treturn 0\n";
        $rules .= "\tfi\n";
    }
}

printf '
_i3-msg() 
{
    local cur prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

%s
    # options
    if [[ ${cur} == -* ]] ; then
        local opts="-q -v -h -s -t --quiet --version --help --socket"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    if [[ ${prev} == "-t" ]] ; then
        local opts="get_workspaces get_outputs get_tree get_marks get_bar_config get_version"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    if [[ ${prev} == "-s" || ${prev} == "--socket" ]] ; then
        COMPREPLY=( $(compgen -f -- ${cur}) )
        return 0
    fi
}

complete -F _i3-msg i3-msg
', $rules;
