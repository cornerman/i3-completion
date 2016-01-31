#!/bin/bash
set -e

i3_git="https://github.com/i3/i3"
i3_version=$(i3 -v | awk '{print $3}')

root_dir=$(dirname "$(/bin/readlink -f "$0")")
test_file="666-command-completion.t"
cmd_file="_i3_commands_list"
bash_file="i3_completion.sh"
repo_dir=${1:-"$root_dir/i3"}

if [ ! -d "$repo_dir" ]; then
    git clone "$i3_git" "$repo_dir"
fi

cd "$repo_dir"
git fetch
git checkout "$i3_version"
make

cd testcases
ln -sf "$root_dir/src/$test_file" t/
./complete-run.pl "t/$test_file" || true
mv _i3_commands_list "$root_dir"

cd "$root_dir"
src/create-complete.pl "$cmd_file" > "$bash_file"

sed -i "1i# i3 version: $i3_version" "$cmd_file"
sed -i "1i# i3 version: $i3_version" "$bash_file"

echo "bash completion script written to '$bash_file'"
