source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

export PATH=/home/jlervin/.scripts:$PATH
export PATH=/home/jlervin/squash:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export GEM_HOME=$HOME/.gem
export XDG_MUSIC_DIR=$HOME/music

alias pac="pacman -Qq | wc -l"
alias space="df -h"
alias projector="xrandr --output HDMI-1 --same-as eDP-1"
alias zzz="systemctl suspend"
alias tmux="tmux -2"

bindkey -v

nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}

alias n="nvim"
alias e="emacs"

antigen apply

PROMPT="%F{3}%~ %F{5}>%f  "
