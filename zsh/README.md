# ZSH

`zsh` is my shell of choice. It is a modern shell that proivdes meaningful functionality
and has sane configruation (looking at you `fish`). 

I ditched `oh-my-zsh` a while back as it was more overhead than I needed. 
I opted instead to simply source my autocompletion and syntax highlighting
plugins. 

My `.zshrc` contains a custom function to start `nvim`.
This is so `nvim` can function as a server, which is crucial for working with my 
themeing application `squash`. 
Using `neovim-remote`, I can send remote commands to all opened instanes of `nvim`
simply by finding their socket. 
If you are using vanilla `nvim`, this kind of function is not necessary. 
Regular `vim` should be able to support remote functionality as long as it 
is compiled with client-server enabled. 
