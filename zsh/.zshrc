#!/usr/bin/env zsh

source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux
export TERM=xterm-256color

nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}

alias n="nvim"
alias ls="ls --color -F"
alias tmux="tmux -2"

PROMPT="%F{3}%~ %F{5}>%F "

