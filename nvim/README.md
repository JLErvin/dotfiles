<div align='center'>
    <h1>neovim</h1><br>
</div>

`neovim` is an alternative to `vim` with modern features.
I use a special verison of `nvim` called `neovim-remote` which allows
a client-server model. This allows one to send commands to all active
instances of `nvim` without having windows foucsed. To see this in practice,
look at my themeing application [squash](https://github.com/JLErvin/squash)

### Plugins

To manage plugins, I use `neobundle`.
I use the following plugins:

* `vim-colorschemes`: collection of colorschemes
* `base16-vim`: collection of base16 colorschemes
* `nerdcommenter`: tools to easily manage comments
* `syntastic`: syntax checking
* `SimpylFold`: better code folding
* `ncm2`: autocompletion manager

Note: `ncm2` requires that `nvim` is compiled with python support.
This can be easily accomplished by using `nvr-remote`:

```
pip3 install neovim-remote
```
