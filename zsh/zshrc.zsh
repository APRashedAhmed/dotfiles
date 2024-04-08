# Top level zshrc file

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

source ~/.profile

# Where are the dotfiles
DOTPATH=$HOME/.dotfiles
# Start by sourcing the common script. This gives all the common shell setep,
# aliases, functions, etc.
source $DOTPATH/common/commonrc.sh

# Define where the zsh folder is
ZSHPATH=$DOTPATH/zsh
# Load zsh aliases
source $ZSHPATH/aliases.zsh

# Change default zim location
export ZIM_HOME=$DOTPATH/zsh/zim
# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Source Brown setup while I am at brown
source $DOTPATH/groups/brown.sh

# Source local zsh setup if it exists
[[ -f ~/.local/.zshrc ]] && source ~/.local/.zshrc


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
