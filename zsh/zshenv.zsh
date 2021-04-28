# Where are the dotfiles
DOTPATH=$HOME/.dotfiles

# Source the profile folder
source $DOTPATH/common/profile.sh

# Source the local config if it exists
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
