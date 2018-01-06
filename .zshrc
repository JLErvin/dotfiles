# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/jlervin/.oh-my-zsh
export PATH=/home/jlervin/.scripts:$PATH
export PATH=/home/jlervin/.scripts/popup:$PATH
export PATH=/home/jlervin/squash:$PATH
export PATH=/usr/local/MATLAB/R2017b/bin:$PATH
export PATH=/home/jlervin/.gem/ruby/2.4.0/bin:$PATH
export PATH=/home/jlervin/.dynamic-colors/bin:$PATH

fignore=(class)

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /home/jlervin/antigen.zsh
source $HOME/.dynamic-colors/completions/dynamic-colors.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme gallois

# Tell Antigen that you're done.
antigen apply

#autoload -Uz promptinit
#promptinit
#prompt minimal
