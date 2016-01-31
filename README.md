# i3-completion
bash completion for i3 commands

```
i3-msg <TAB>
```

## bash

```
source /path/to/i3_completion.sh
```

## zsh

```
autoload bashcompinit && bashcompinit
source /path/to/i3_completion.sh
```

## generation

Optionally, you can also generate the command list and completion script
yourself:

```
./gen.sh [i3_dir]

```

This will first clone the i3 repository into the directory ```i3_dir```
(default: ./i3) unless it already exists. Then, checkout the currently running
i3 version and make. Afterwards, the test case is run to generate the list of
legal commands and the bash completion script is created. You will need all i3
development and testing dependencies.
