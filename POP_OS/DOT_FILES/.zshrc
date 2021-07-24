# Created by newuser for 5.8

# My PS1 configuration
export PS1='%B%F{108}[%n%f%F{112}@%f%b%F{062}%~]%f 
 ⚡ '
export PS2='
 ⚡ '

export TERM="xterm-256color"                      # getting proper colors
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# To enable the syntax highlighting
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# My aliases
# LS Aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# GREP Aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Other Aliases
alias cls='clear'
alias zload='source $ZDOTDIR/.zshrc'
alias vi='vim'
alias iv='vim'

# To confirm before overriting something
alias cp='cp -i'
alias mv='mv -i'
#alias rm='rm -i'
