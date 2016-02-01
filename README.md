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
./gen.sh

```

Runs your ```i3``` binary in ```Xephyr```. It then sends bogus commands to this i3 instance in order to learn a list of available commands. From there, the bash completion script is generated.
