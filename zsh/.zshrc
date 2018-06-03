source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/home/jlervin/.scripts:$PATH
export PATH=/home/jlervin/squash:$PATH
export PATH=/home/jlervin/squash-devel:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

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


#PROMPT="%K{8}%F{11} » %K{0}%F{6} [%F{7}%1~%F{6}]%F{2} %f%k "
PROMPT="%F{3}%~ %F{5}>%f  "
