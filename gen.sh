#!/bin/bash -e

cmd_file="_i3_commands_list"
bash_file="i3_completion.sh"

i3_version=$(i3 -v | awk '{print $3}')

cd $(dirname "$(/bin/readlink -f "$0")")

Xephyr :1 &
xepyhr_pid=$!
sleep 0.5
DISPLAY=:1 i3 &
sleep 0.5
i3_socket=$(DISPLAY=:1 i3 --get-socketpath)

src/find-commands.pl "$i3_socket" > "$cmd_file"

kill $xepyhr_pid

src/create-complete.pl "$cmd_file" > "$bash_file"

sed -i "1i# i3 version: $i3_version" "$cmd_file"
sed -i "1i# i3 version: $i3_version" "$bash_file"

echo "command list written to '$cmd_file'"
echo "bash completion script written to '$bash_file'"
