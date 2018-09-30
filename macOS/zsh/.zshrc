source $HOME/.antigen.zsh

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

bindkey -v

alias n="nvim"
alias e="emacs"


antigen apply

PROMPT="%F{3}%~ %F{5}>%f  "
