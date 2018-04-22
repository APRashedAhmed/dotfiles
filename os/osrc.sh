# Script to source operating-system-specific files

# Where are the dotfiles
DOTPATH=$HOME/.dotfiles
# Define where the os folder is
OSPATH=$DOTPATH/os

function check_wsl()
{
    # Check if 'Microsoft' is in osrelease. /proc/version can also be checked
    if grep -q "Microsoft" /proc/sys/kernel/osrelease; then
	return 0
    else
	return 1
    fi
}
    
# Check if this is a WSL build. Add more OSs as necessary
if check_wsl ; then
    source $OSPATH/wslrc.sh
fi

# Source the local config if it exists
[[ -f ~/.osrc.local ]] && source ~/.osrc.local
