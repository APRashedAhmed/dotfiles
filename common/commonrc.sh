# Common setup for various shells

# Where are the dotfiles
DOTPATH=$HOME/.dotfiles
# Define where the zsh folder is
COMMONPATH=$DOTPATH/common

# Common setup

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# We will need miniconda for all setups
export PATH="$HOME/miniconda3/bin:$PATH"

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

# Common aliases
source $COMMONPATH/aliases.sh

# Source the local config if it exists
[[ -f ~/.local/.commonrc ]] && source ~/.local/.commonrc

# Source Operating System scripts
source $DOTPATH/os/osrc.sh
