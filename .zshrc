# Plugins
autoload -U compinit
compinit

source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Env
export PATH=${PATH}:~/bin
# If no lowercase match, match against uppercase
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# Breakup words cleanly when using ctrl+w
export WORDCHARS=''

# History
setopt extended_history
HISTCONTROL=ignoredups
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Aliases
alias dev='cd ~/Development'
alias gst='git status'
alias ll='ls -l --color=auto'
alias tlst='tmux ls'
alias tmat='tmux attach -t'
alias tnew='tmux new -s'

# oc autocomplete
if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

eval "$(starship init zsh)"
