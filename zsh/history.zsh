# HISTORY
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
HISTCONTROL=ignoredups:erasedups
HISTIGNORE="exit"

setopt inc_append_history # Update History in all windows on command execution
