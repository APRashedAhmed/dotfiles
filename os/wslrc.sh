# WSL Specific setup

# Set the x11 display. Make sure the x11 server is running!
export DISPLAY=localhost:0

# Getting docker to work properly for WSL

# Start the docker machine
export VBOX_MSI_INSTALL_PATH='/mnt/c/Program\ Files/Oracle/VirtualBox/'
pushd -q /mnt/c/Program\ Files/Docker\ Toolbox/
# Get env variables from docker-machine, convert paths, ignore comments, and strip double quotes. 
$(./docker-machine.exe env --shell bash | sed 's/C:/\/c/' | sed 's/\\/\//g' | sed 's:#.*$::g' | sed 's/"//g' )
popd > /dev/null
# Change /mnt/c/ to /c/ in current working directory path
cd $(pwd | sed 's/\/mnt\/c\//\/c\//')
# See the following gist for more details on the code above:
# https://gist.github.com/jwilson8767/00a46f5ca63327d5bfd802f87b702c8d
