# The ZSH configurations to define the $ZDOTDIR
export XDG_CONFIG_HOME="$HOME/.zsh"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export ZDOTDIR="$XDG_CONFIG_HOME"


# The history configuration
export HISTFILE="$ZDOTDIR/.zsh_history"     # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
