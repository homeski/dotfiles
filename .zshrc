# Plugins
autoload -U compinit
compinit

source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Plugin settings
# zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# zsh-autosuggestions
# If no lowercase match, match against uppercase
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Env
export EDITOR=/usr/bin/vim
export PATH=${PATH}:~/bin
# Breakup words cleanly when using ctrl+w
export WORDCHARS=''

# History
setopt extended_history
setopt HIST_IGNORE_ALL_DUPS
HISTCONTROL=ignoredups
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Aliases
if (( $+commands[bat] )); then
  alias cat='bat -p --paging=never'
fi
alias dev='cd ~/development'
alias gst='git status'
alias home='cd ~'
alias ll='ls -l --color=auto'
alias tlst='tmux ls'
alias tmat='tmux attach -t'
alias tnew='tmux new -s'

# oc autocomplete
if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

# Fix keybindings
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Starship
eval "$(starship init zsh)"
