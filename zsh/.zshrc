export PATH=/home/jlervin/.scripts:$PATH
export PATH=/home/jlervin/squash:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1

#alias n="nvim"
alias pac="pacman -Qq | wc -l"
alias space="df -h"
alias rmorphans="pacman -Rns $(pacman -Qtdq)"
alias projector="xrandr --output HDMI-1 --same-as eDP-1"
alias zzz="systemctl suspend"

nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}

source /home/jlervin/.antigen.zsh

antigen use oh-my-zsh

#antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme gallois
#antigen theme minimal
antigen theme nanotech

antigen apply
