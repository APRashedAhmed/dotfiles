# Top level zshrc file

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
