#if you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/joshuaervin/wal
export PATH=$PATH:/home/joshuaervin/.config/lemonbar

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"



# Uncomment these lines if you wish to use the powerline package
#if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

POWERLEVEl_9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
#antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
#antigen theme https://github.com/bhilburn/powerlevel9k
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.

# Tell Antigen that you're done.
antigen apply

alias tmux="TERM=screen-256color-bce tmux"


# ORDER
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  vi_mode
  jobs
  exit_code
  char
)

# PROMPT
SPACESHIP_PROMPT_SYMBOL=""
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# TIME
SPACESHIP_TIME_SHOW=false
SPACESHIP_TIME_PREFIX="at "
SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_TIME_FORMAT=false
SPACESHIP_TIME_12HR=false
SPACESHIP_TIME_COLOR="yellow"


# USER
SPACESHIP_USER_SHOW=true
SPACESHIP_USER_PREFIX="with "
SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_USER_COLOR="yellow"
SPACESHIP_USER_COLOR_ROOT="red"

# HOST
SPACESHIP_HOST_SHOW=true
SPACESHIP_HOST_PREFIX="at "
SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_HOST_COLOR="green"

# DIR
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR="cyan"


# HG
SPACESHIP_HG_SHOW=true
SPACESHIP_HG_PREFIX="on "
SPACESHIP_HG_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_HG_SYMBOL="☿ "
# HG BRANCH
SPACESHIP_HG_BRANCH_SHOW=true
SPACESHIP_HG_BRANCH_PREFIX="$SPACESHIP_HG_SYMBOL"
SPACESHIP_HG_BRANCH_SUFFIX=""
SPACESHIP_HG_BRANCH_COLOR="magenta"


# VI_MODE
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"
SPACESHIP_VI_MODE_COLOR="white"

# EXIT CODE
SPACESHIP_EXIT_CODE_SHOW=false
SPACESHIP_EXIT_CODE_PREFIX="("
SPACESHIP_EXIT_CODE_SUFFIX=") "
SPACESHIP_EXIT_CODE_SYMBOl="✘ "
SPACESHIP_EXIT_CODE_COLOR="red"

prompt_context() {}
