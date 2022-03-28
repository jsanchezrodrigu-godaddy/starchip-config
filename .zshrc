export ZSH="/home/jairosanchez/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# -------------------------------------------------
# zsh plugins
# -------------------------------------------------

plugins=(git)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------
# auto-completion
# -------------------------------------------------

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# -------------------------------------------------
# Golang config
# -------------------------------------------------

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# -------------------------------------------------
# Personal aliases
# -------------------------------------------------

# Clean, compact git status
alias gs="git status -sb"

# open zshrc file
alias zshrc='code ~/.zshrc'

# golang workspace
alias gw=''

# -------------------------------------------------
# Personal functions
# -------------------------------------------------


# -------------------------------------------------
# Visual shell implementation
# -------------------------------------------------

export STARSHIP_CONFIG=~/.config/starship.toml
export STARSHIP_CACHE=~/.starship/cache

# start starship
eval "$(starship init zsh)"
