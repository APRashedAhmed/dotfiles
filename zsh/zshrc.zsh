# Top level zshrc file

# Where are the dotfiles
export DOTPATH=$HOME/.dotfiles
# Define where the zsh folder is
export ZSHPATH=$DOTPATH/zsh

# Start by sourcing the common script. This gives all the common shell setep,
# aliases, functions, etc.
source $DOTPATH/common/setup.sh

# Load zsh aliases
source $ZSHPATH/aliases.zsh

# Change default zim location
export ZIM_HOME=$DOTPATH/zsh/zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
