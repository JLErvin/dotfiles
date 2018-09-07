<div align='center'>
    <h1>zsh</h1><br>
</div>

`zsh` is a powerful shell that provides lots of modern and useful features.
I use `antigen` as a plugin manager for oh-my-zsh.
Most notably, I use `heroku` which provides very powerful and efficient autocompletion. 

Other notable features: 

```bash
alias tmux="tmux -2"
```

This allows tmux to be used more efficiently with `vim` and reduces lag when switching between modes.


```bash
nvim() {
    local fn="$(mktemp -u "/tmp/nvimsocket-XXXXXXX")"
    NVIM_LISTEN_ADDRESS=$fn /usr/bin/nvim $@
}
```

This redefines `nvim` to always start on a socket, allowing me to use `nvr-remote` and reload all active
instaces of `nvim` at once. 


![Imgur](https://i.imgur.com/UwKN3Fr.png)
