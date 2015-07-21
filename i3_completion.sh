
_i3-msg() 
{
    local cur prev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"


	# move window to absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 9 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "to" && ${COMP_WORDS[COMP_CWORD-8]} == "window" && ${COMP_WORDS[COMP_CWORD-9]} == "move" ) ]] ; then
		return 0
	fi

	# move container to absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 9 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "to" && ${COMP_WORDS[COMP_CWORD-8]} == "container" && ${COMP_WORDS[COMP_CWORD-9]} == "move" ) ]] ; then
		return 0
	fi

	# move window to position <word> px <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "window" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move container to position <word> px <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "container" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move window to absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "window" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "window" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move window absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "window" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move container to absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "container" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "container" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move container absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "container" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# move to absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "to" && ${COMP_WORDS[COMP_CWORD-8]} == "move" ) ]] ; then
		return 0
	fi

	# resize grow up <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "up" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow down <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "down" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow left <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "left" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow right <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "right" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow width <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "width" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow height <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "height" && ${COMP_WORDS[COMP_CWORD-7]} == "grow" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink up <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "up" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink down <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "down" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink left <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "left" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink right <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "right" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink width <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "width" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink height <word> px or <word> ppt
	if [[ $COMP_CWORD -gt 8 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "px" && ${COMP_WORDS[COMP_CWORD-6]} == "height" && ${COMP_WORDS[COMP_CWORD-7]} == "shrink" && ${COMP_WORDS[COMP_CWORD-8]} == "resize" ) ]] ; then
		return 0
	fi

	# move window to position <word> px <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to position <word> <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move window position <word> px <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move container to position <word> px <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to position <word> <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move container position <word> px <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move to position <word> px <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move window to absolute position <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to absolute position <word> <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "window" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move container to absolute position <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to absolute position <word> <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "container" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move to absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "to" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# move absolute position <word> px <word> px
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "absolute" && ${COMP_WORDS[COMP_CWORD-7]} == "move" ) ]] ; then
		return 0
	fi

	# resize grow up <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "up" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow up <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "up" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow down <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "down" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "down" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow left <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "left" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "left" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow right <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "right" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "right" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow width <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "width" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "width" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize grow height <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "height" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "height" && ${COMP_WORDS[COMP_CWORD-6]} == "grow" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink up <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "up" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "up" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink down <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "down" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "down" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink left <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "left" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "left" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink right <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "right" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "right" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink width <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "width" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "width" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# resize shrink height <word> px or <word>
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "height" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word> or <word> ppt
	if [[ $COMP_CWORD -gt 7 && ( ${COMP_WORDS[COMP_CWORD-1]} == "ppt" && ${COMP_WORDS[COMP_CWORD-3]} == "or" && ${COMP_WORDS[COMP_CWORD-5]} == "height" && ${COMP_WORDS[COMP_CWORD-6]} == "shrink" && ${COMP_WORDS[COMP_CWORD-7]} == "resize" ) ]] ; then
		return 0
	fi

	# move window to workspace number <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace number <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to left <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to left <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to right <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to right <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to up <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to up <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to down <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to down <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to position <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to position <word> <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position <word> px <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position <word> <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to position <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to position <word> <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position <word> px <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position <word> <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move to position <word> px <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to position <word> <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move position <word> px <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "px" && ${COMP_WORDS[COMP_CWORD-5]} == "position" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to absolute position center
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move window to absolute position <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position <word> <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "window" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to absolute position center
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# move container to absolute position <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position <word> <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "container" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute position <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute position <word> <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "to" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position <word> px <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position <word> <word> px
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "absolute" && ${COMP_WORDS[COMP_CWORD-6]} == "move" ) ]] ; then
		return 0
	fi

	# resize grow up <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "up" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow up <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "up" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "down" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "down" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "left" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "left" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "right" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "right" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "width" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "width" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "height" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "height" && ${COMP_WORDS[COMP_CWORD-5]} == "grow" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "up" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "up" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "down" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "down" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "left" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "left" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "right" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "right" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "width" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "width" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word> px or
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "height" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word> or <word>
	if [[ $COMP_CWORD -gt 6 && ( ${COMP_WORDS[COMP_CWORD-2]} == "or" && ${COMP_WORDS[COMP_CWORD-4]} == "height" && ${COMP_WORDS[COMP_CWORD-5]} == "shrink" && ${COMP_WORDS[COMP_CWORD-6]} == "resize" ) ]] ; then
		local opts="ppt"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to workspace next_on_output
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace prev_on_output
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace next
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace prev
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace current
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace back_and_forth
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to workspace number
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to workspace <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace number <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace next_on_output
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace prev_on_output
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace next
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace prev
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace current
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace back_and_forth
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace number
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to workspace <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace number <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace number <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to output <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to output <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to left <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window left <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to left <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container left <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to left <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to right <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window right <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to right <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container right <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to right <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to up <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window up <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to up <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container up <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to up <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to down <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window down <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to down <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container down <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to down <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to position center
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to position <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position <word> <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to position center
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container to position <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position <word> <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to position <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to position <word> <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position <word> px <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position <word> <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-4]} == "position" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window to absolute position
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position center
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move window absolute position <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "window" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to absolute position
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position center
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move container absolute position <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "container" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute position center
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		return 0
	fi

	# move to absolute position <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "to" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position <word> <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "absolute" && ${COMP_WORDS[COMP_CWORD-5]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow up <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow up <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "width" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "width" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "height" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "height" && ${COMP_WORDS[COMP_CWORD-4]} == "grow" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "width" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "width" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word> px
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "height" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word> or
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-1]} == "or" && ${COMP_WORDS[COMP_CWORD-3]} == "height" && ${COMP_WORDS[COMP_CWORD-4]} == "shrink" && ${COMP_WORDS[COMP_CWORD-5]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename workspace <word> to <word>
	if [[ $COMP_CWORD -gt 5 && ( ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "workspace" && ${COMP_WORDS[COMP_CWORD-5]} == "rename" ) ]] ; then
		return 0
	fi

	# move window to workspace
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window workspace next_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace prev_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace next
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace prev
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace current
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace back_and_forth
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window workspace number
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window workspace <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container to workspace
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container workspace next_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace prev_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace next
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace prev
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace current
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace back_and_forth
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container workspace number
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container workspace <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace next_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace prev_on_output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace next
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace prev
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace current
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace back_and_forth
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to workspace number
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to workspace <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace number <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window output <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container to output
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container output <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to output <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to scratchpad
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container to scratchpad
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to left
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window left <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to left
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container left <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to left <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move left <word> px
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "left" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to right
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window right <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to right
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container right <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to right <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move right <word> px
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "right" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to up
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window up <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to up
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container up <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to up <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move up <word> px
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "up" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to down
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window down <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to down
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container down <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to down <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move down <word> px
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "down" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window to position
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position center
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move window position <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to position
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position center
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move container position <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to position center
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move to position <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position <word> px
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "px" && ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position <word> <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-3]} == "position" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window to absolute
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute position
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "window" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to absolute
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute position
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "container" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute position
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "to" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position center
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		return 0
	fi

	# move absolute position <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "absolute" && ${COMP_WORDS[COMP_CWORD-4]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow up <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "width" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "height" && ${COMP_WORDS[COMP_CWORD-3]} == "grow" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "width" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "height" && ${COMP_WORDS[COMP_CWORD-3]} == "shrink" && ${COMP_WORDS[COMP_CWORD-4]} == "resize" ) ]] ; then
		local opts="px or"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename workspace to <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "rename" ) ]] ; then
		return 0
	fi

	# rename workspace <word> to
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-1]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" && ${COMP_WORDS[COMP_CWORD-4]} == "rename" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar hidden_state hide <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "hide" && ${COMP_WORDS[COMP_CWORD-3]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar hidden_state show <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "show" && ${COMP_WORDS[COMP_CWORD-3]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar hidden_state toggle <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "toggle" && ${COMP_WORDS[COMP_CWORD-3]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar mode dock <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "dock" && ${COMP_WORDS[COMP_CWORD-3]} == "mode" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar mode hide <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "hide" && ${COMP_WORDS[COMP_CWORD-3]} == "mode" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar mode invisible <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "invisible" && ${COMP_WORDS[COMP_CWORD-3]} == "mode" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# bar mode toggle <word>
	if [[ $COMP_CWORD -gt 4 && ( ${COMP_WORDS[COMP_CWORD-2]} == "toggle" && ${COMP_WORDS[COMP_CWORD-3]} == "mode" && ${COMP_WORDS[COMP_CWORD-4]} == "bar" ) ]] ; then
		return 0
	fi

	# move window to
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "to" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window workspace
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container to
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "to" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container workspace
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to workspace
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move workspace next_on_output
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace prev_on_output
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace next
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace prev
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace current
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "current" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace back_and_forth
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move workspace number
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move workspace <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move window output
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container output
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to output
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move output <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move window scratchpad
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move container scratchpad
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move to scratchpad
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move window left
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container left
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to left
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move left <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "left" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window right
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container right
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to right
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move right <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "right" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window up
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container up
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to up
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move up <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "up" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window down
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container down
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to down
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move down <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "down" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="px"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window position
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container position
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to position
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position center
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "center" && ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		return 0
	fi

	# move position <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "position" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="px WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window absolute
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "window" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container absolute
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "container" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to absolute
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "to" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute position
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "absolute" && ${COMP_WORDS[COMP_CWORD-3]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# exec --no-startup-id <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "--no-startup-id" && ${COMP_WORDS[COMP_CWORD-3]} == "exec" ) ]] ; then
		return 0
	fi

	# border normal <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "normal" && ${COMP_WORDS[COMP_CWORD-3]} == "border" ) ]] ; then
		return 0
	fi

	# border pixel <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "pixel" && ${COMP_WORDS[COMP_CWORD-3]} == "border" ) ]] ; then
		return 0
	fi

	# layout toggle split
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "split" && ${COMP_WORDS[COMP_CWORD-2]} == "toggle" && ${COMP_WORDS[COMP_CWORD-3]} == "layout" ) ]] ; then
		return 0
	fi

	# layout toggle all
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "all" && ${COMP_WORDS[COMP_CWORD-2]} == "toggle" && ${COMP_WORDS[COMP_CWORD-3]} == "layout" ) ]] ; then
		return 0
	fi

	# workspace number <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "number" && ${COMP_WORDS[COMP_CWORD-3]} == "workspace" ) ]] ; then
		return 0
	fi

	# focus output <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "output" && ${COMP_WORDS[COMP_CWORD-3]} == "focus" ) ]] ; then
		return 0
	fi

	# resize grow up
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow down
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow left
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow right
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow width
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "width" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize grow height
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "height" && ${COMP_WORDS[COMP_CWORD-2]} == "grow" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink up
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink down
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink left
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink right
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink width
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "width" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink height
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "height" && ${COMP_WORDS[COMP_CWORD-2]} == "shrink" && ${COMP_WORDS[COMP_CWORD-3]} == "resize" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename workspace to
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "to" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "rename" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename workspace <word>
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" && ${COMP_WORDS[COMP_CWORD-3]} == "rename" ) ]] ; then
		local opts="to"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar hidden_state hide
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "hide" && ${COMP_WORDS[COMP_CWORD-2]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar hidden_state show
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "show" && ${COMP_WORDS[COMP_CWORD-2]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar hidden_state toggle
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar mode dock
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "dock" && ${COMP_WORDS[COMP_CWORD-2]} == "mode" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar mode hide
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "hide" && ${COMP_WORDS[COMP_CWORD-2]} == "mode" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar mode invisible
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "invisible" && ${COMP_WORDS[COMP_CWORD-2]} == "mode" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar mode toggle
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "mode" && ${COMP_WORDS[COMP_CWORD-3]} == "bar" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ class =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "class" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ instance =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "instance" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ window_role =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "window_role" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ con_id =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "con_id" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ id =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "id" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ con_mark =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "con_mark" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ title =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "title" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ urgent =
	if [[ $COMP_CWORD -gt 3 && ( ${COMP_WORDS[COMP_CWORD-1]} == "=" && ${COMP_WORDS[COMP_CWORD-2]} == "urgent" && (${COMP_WORDS[COMP_CWORD-3]} == "[" || ${COMP_WORDS[COMP_CWORD-4]} == "=") ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move window
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "window" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="to workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move container
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "container" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="to workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move to
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "to" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move workspace
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="next_on_output prev_on_output next prev current back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move output
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move scratchpad
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		return 0
	fi

	# move left
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move right
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move up
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move down
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move position
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "position" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="center WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move absolute
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "absolute" && ${COMP_WORDS[COMP_CWORD-2]} == "move" ) ]] ; then
		local opts="position"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# exec --no-startup-id
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "--no-startup-id" && ${COMP_WORDS[COMP_CWORD-2]} == "exec" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# exec <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "exec" ) ]] ; then
		return 0
	fi

	# shmlog <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "shmlog" ) ]] ; then
		return 0
	fi

	# debuglog toggle
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "debuglog" ) ]] ; then
		return 0
	fi

	# debuglog on
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "on" && ${COMP_WORDS[COMP_CWORD-2]} == "debuglog" ) ]] ; then
		return 0
	fi

	# debuglog off
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "off" && ${COMP_WORDS[COMP_CWORD-2]} == "debuglog" ) ]] ; then
		return 0
	fi

	# border normal
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "normal" && ${COMP_WORDS[COMP_CWORD-2]} == "border" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# border pixel
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "pixel" && ${COMP_WORDS[COMP_CWORD-2]} == "border" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# border none
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "none" && ${COMP_WORDS[COMP_CWORD-2]} == "border" ) ]] ; then
		return 0
	fi

	# border toggle
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "border" ) ]] ; then
		return 0
	fi

	# border 1pixel
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "1pixel" && ${COMP_WORDS[COMP_CWORD-2]} == "border" ) ]] ; then
		return 0
	fi

	# layout default
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "default" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout stacked
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "stacked" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout stacking
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "stacking" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout tabbed
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "tabbed" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout splitv
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "splitv" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout splith
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "splith" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		return 0
	fi

	# layout toggle
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "layout" ) ]] ; then
		local opts="split all"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# append_layout <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "append_layout" ) ]] ; then
		return 0
	fi

	# workspace next_on_output
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# workspace prev_on_output
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev_on_output" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# workspace next
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "next" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# workspace prev
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "prev" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# workspace back_and_forth
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "back_and_forth" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# workspace number
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "number" && ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# workspace <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "workspace" ) ]] ; then
		return 0
	fi

	# focus left
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "left" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus right
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "right" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus up
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "up" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus down
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "down" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus output
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "output" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# focus tiling
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "tiling" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus floating
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "floating" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus mode_toggle
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "mode_toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus parent
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "parent" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# focus child
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "child" && ${COMP_WORDS[COMP_CWORD-2]} == "focus" ) ]] ; then
		return 0
	fi

	# kill window
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "window" && ${COMP_WORDS[COMP_CWORD-2]} == "kill" ) ]] ; then
		return 0
	fi

	# kill client
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "client" && ${COMP_WORDS[COMP_CWORD-2]} == "kill" ) ]] ; then
		return 0
	fi

	# fullscreen global
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "global" && ${COMP_WORDS[COMP_CWORD-2]} == "fullscreen" ) ]] ; then
		return 0
	fi

	# split horizontal
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "horizontal" && ${COMP_WORDS[COMP_CWORD-2]} == "split" ) ]] ; then
		return 0
	fi

	# split vertical
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "vertical" && ${COMP_WORDS[COMP_CWORD-2]} == "split" ) ]] ; then
		return 0
	fi

	# split v
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "v" && ${COMP_WORDS[COMP_CWORD-2]} == "split" ) ]] ; then
		return 0
	fi

	# split h
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "h" && ${COMP_WORDS[COMP_CWORD-2]} == "split" ) ]] ; then
		return 0
	fi

	# floating enable
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "enable" && ${COMP_WORDS[COMP_CWORD-2]} == "floating" ) ]] ; then
		return 0
	fi

	# floating disable
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "disable" && ${COMP_WORDS[COMP_CWORD-2]} == "floating" ) ]] ; then
		return 0
	fi

	# floating toggle
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "toggle" && ${COMP_WORDS[COMP_CWORD-2]} == "floating" ) ]] ; then
		return 0
	fi

	# mark <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "mark" ) ]] ; then
		return 0
	fi

	# unmark <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "unmark" ) ]] ; then
		return 0
	fi

	# resize grow
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "grow" && ${COMP_WORDS[COMP_CWORD-2]} == "resize" ) ]] ; then
		local opts="up down left right width height"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize shrink
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "shrink" && ${COMP_WORDS[COMP_CWORD-2]} == "resize" ) ]] ; then
		local opts="up down left right width height"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename workspace
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" && ${COMP_WORDS[COMP_CWORD-2]} == "rename" ) ]] ; then
		local opts="to WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# nop <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "nop" ) ]] ; then
		return 0
	fi

	# scratchpad show
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "show" && ${COMP_WORDS[COMP_CWORD-2]} == "scratchpad" ) ]] ; then
		return 0
	fi

	# mode <word>
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-2]} == "mode" ) ]] ; then
		return 0
	fi

	# bar hidden_state
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "hidden_state" && ${COMP_WORDS[COMP_CWORD-2]} == "bar" ) ]] ; then
		local opts="hide show toggle"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar mode
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "mode" && ${COMP_WORDS[COMP_CWORD-2]} == "bar" ) ]] ; then
		local opts="dock hide invisible toggle"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ class
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "class" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ instance
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "instance" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ window_role
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "window_role" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ con_id
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "con_id" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ id
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "id" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ con_mark
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "con_mark" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ title
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "title" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [ urgent
	if [[ $COMP_CWORD -gt 2 && ( ${COMP_WORDS[COMP_CWORD-1]} == "urgent" && (${COMP_WORDS[COMP_CWORD-2]} == "[" || ${COMP_WORDS[COMP_CWORD-3]} == "=") ) ]] ; then
		local opts="="
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# move
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "move" ) ]] ; then
		local opts="window container to workspace output scratchpad left right up down position absolute"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# exec
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "exec" ) ]] ; then
		local opts="--no-startup-id WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# exit
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "exit" ) ]] ; then
		return 0
	fi

	# restart
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "restart" ) ]] ; then
		return 0
	fi

	# reload
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "reload" ) ]] ; then
		return 0
	fi

	# shmlog
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "shmlog" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# debuglog
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "debuglog" ) ]] ; then
		local opts="toggle on off"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# border
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "border" ) ]] ; then
		local opts="normal pixel none toggle 1pixel"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# layout
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "layout" ) ]] ; then
		local opts="default stacked stacking tabbed splitv splith toggle"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# append_layout
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "append_layout" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# workspace
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "workspace" ) ]] ; then
		local opts="next_on_output prev_on_output next prev back_and_forth number WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# focus
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "focus" ) ]] ; then
		local opts="left right up down output tiling floating mode_toggle parent child"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# kill
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "kill" ) ]] ; then
		local opts="window client"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# open
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "open" ) ]] ; then
		return 0
	fi

	# fullscreen
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "fullscreen" ) ]] ; then
		local opts="global"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# split
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "split" ) ]] ; then
		local opts="horizontal vertical v h"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# floating
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "floating" ) ]] ; then
		local opts="enable disable toggle"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# mark
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "mark" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# unmark
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "unmark" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# resize
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "resize" ) ]] ; then
		local opts="grow shrink"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# rename
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "rename" ) ]] ; then
		local opts="workspace"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# nop
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "nop" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# scratchpad
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "scratchpad" ) ]] ; then
		local opts="show"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# mode
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "mode" ) ]] ; then
		local opts="WORD"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# bar
	if [[ $COMP_CWORD -gt 1 && ( ${COMP_WORDS[COMP_CWORD-1]} == "bar" ) ]] ; then
		local opts="hidden_state mode"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# [
	if [[ $COMP_CWORD -gt 1 && ( (${COMP_WORDS[COMP_CWORD-1]} == "[" || ${COMP_WORDS[COMP_CWORD-2]} == "=") ) ]] ; then
		local opts="] class instance window_role con_id id con_mark title urgent"
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

	# 
	if [[ $cur != -* && ($COMP_CWORD == 1 || ${COMP_WORDS[COMP_CWORD-1]} == "]" || ${COMP_WORDS[COMP_CWORD-2]} == "-t" || ${COMP_WORDS[COMP_CWORD-2]} == "-s") ]] ; then
		local opts="move exec exit restart reload shmlog debuglog border layout append_layout workspace focus kill open fullscreen split floating mark unmark resize rename nop scratchpad mode bar ["
		COMPREPLY=( $(compgen -W "$opts" -- $cur) )
		return 0
	fi

    # options
    if [[ ${cur} == -* ]] ; then
        local opts="-t -s"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    if [[ ${prev} == "-t" ]] ; then
        local opts="get_workspaces get_outputs get_tree get_marks get_bar_config get_version"
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

    if [[ ${prev} == "-s" ]] ; then
        COMPREPLY=( $(compgen -f -- ${cur}) )
        return 0
    fi
}

complete -F _i3-msg i3-msg
