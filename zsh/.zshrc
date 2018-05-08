source /home/jlervin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/home/jlervin/.scripts:$PATH
export PATH=/home/jlervin/squash:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

#alias n="nvim"
alias pac="pacman -Qq | wc -l"
alias space="df -h"
alias rmorphans="pacman -Rns $(pacman -Qtdq)"
alias projector="xrandr --output HDMI-1 --same-as eDP-1"
alias zzz="systemctl suspend"
alias tmux="tmux -2"

nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}

PROMPT="%K{8}%F{11} » %K{0}%F{6} [%F{7}%1~%F{6}]%F{2} %f%k "
