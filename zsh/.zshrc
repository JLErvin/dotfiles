source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme gallois
antigen apply

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.scripts:$PATH
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}

alias n="nvim"

PROMPT="%F{3}%~ %F{5}>%f  "
