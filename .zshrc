# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/homeski/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Start customization
alias dev='cd ~/dev'
alias gst='git status'
# End customization

# Start oh-my-zsh 
export ZSH=/home/homeski/.oh-my-zsh

ZSH_THEME="random"

plugins=(git)

source $ZSH/oh-my-zsh.sh
# End oh my-zsh
