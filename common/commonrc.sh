# Common setup for various shells

# Where are the dotfiles
DOTPATH=$HOME/.dotfiles
# Define where the zsh folder is
COMMONPATH=$DOTPATH/common

# Common setup

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacs -nw'
else
    export EDITOR='emacs -nw'
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Default user
export DEFAULT_USER="apra"

# Default machine
export DEFAULT_LOCALHOST="apra-xps-13"

# Keep track of wherever we are
export HOSTNAME=$(hostname -A)

# Common aliases
source $COMMONPATH/aliases.sh
# Common functions
source $COMMONPATH/functions.sh

# Source the local config if it exists
[[ -f ~/.local/.commonrc ]] && source ~/.local/.commonrc

# Source Operating System scripts
source $DOTPATH/os/osrc.sh
