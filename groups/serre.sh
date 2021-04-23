# Things useful or specific to serre-lab machines

# Shared Conda setup taken from the following slab page as of 2021-04-22
# https://serrelab.slab.com/posts/anaconda-shared-across-nodes-0lzk7nv6

if globhost brown.edu || globhost serre || globhost x; then
    mkdir -p /media/data_cifs/projects/prj_shared/conda/$USER/envs
    
    export CONDA_PKGS_DIRS="/media/data_cifs/projects/prj_shared/anaconda3/pkgs"
    export CONDA_ENVS_DIRS="/media/data_cifs/projects/prj_shared/conda/$USER/envs"

    shell=$(basename $(readlink -f /proc/$$/exe))

    # Check if .local/bin is in the path and add if not
    if [[ ':$PATH:' != *':$HOME/.local/bin:'* ]]; then
	export PATH=$HOME/.local/bin:$PATH
    fi

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/media/data_cifs/projects/prj_shared/anaconda3/bin/conda' 'shell.$shell' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
	eval "$__conda_setup"
    else
	if [ -f "/media/data_cifs/projects/prj_shared/anaconda3/etc/profile.d/conda.sh" ]; then
	    . "/media/data_cifs/projects/prj_shared/anaconda3/etc/profile.d/conda.sh"
	else
	    export PATH="/media/data_cifs/projects/prj_shared/anaconda3/bin:$PATH"
	fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi
