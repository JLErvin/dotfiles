<div align='center'>
    <h1>tmux</h1><br>
</div>

`tmux` is a very powerful terminal multiplexer which allows for multiple sessions within a single terminal window.
I use tmux for virtually all software development. 

If you plan to use `tmux` with vim, consider adding the following to your `.zshrc` or `.bashrc`.

```bash
alias tmux="tmux -2"
```

This will eliminate the second of lag when switiching between modes in `vim`. 
