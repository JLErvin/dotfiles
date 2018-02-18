#/usr/bin/env fish

set PATH /usr/local/bin /usr/sbin $PATH
set PATH /usr/local/bin /home/void/.scripts $PATH

function fish_prompt
    set_color green
    echo (dirs) '> '
end
