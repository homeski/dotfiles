#!/bin/bash

zsh=~/.zsh
[ ! -d "${zsh}" ] && mkdir ${zsh}
[ ! -d "${zsh}/fzf-tab" ] && git clone git@github.com:Aloxaf/fzf-tab.git ${zsh}/fzf-tab
[ ! -d "${zsh}/zsh-autosuggestions" ] && git clone git@github.com:zsh-users/zsh-autosuggestions.git ${zsh}/zsh-autosuggestions
[ ! -d "${zsh}/zsh-history-substring-search" ] && git clone git@github.com:zsh-users/zsh-history-substring-search.git ${zsh}/zsh-history-substring-search
[ ! -d "${zsh}/zsh-syntax-highlighting" ] && git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${zsh}/zsh-syntax-highlighting
