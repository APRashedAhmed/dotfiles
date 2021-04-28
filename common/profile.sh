# Add local bin folder if it exists
private_bin=(
    $HOME/bin
    $HOME/.local/bin
)
for bin in $private_bin; do
    if [ -d $bin ] ; then
	if [[ ':$PATH:' != *':$bin:'* ]]; then
	    export PATH=$bin:$PATH
	fi
    fi
done

# Add CUDA to the path if there is a directory for it and it isnt already there
if [ -d "/usr/local/cuda/bin/" ]; then
    if [[ '$PATH' != *'*/cuda*/bin'* ]]; then
	export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
	export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
    fi
fi

# Source local profile if it exists
[[ -f ~/.local/.profile ]] && source ~/.local/.profile

