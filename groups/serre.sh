# Things useful or specific to serre-lab machines

# This only applies to machines which can see data_cifs
if globhost brown.edu || globhost serre || globhost x; then
    export CONDA_PKGS_DIRS="/media/data/conda/pkgs"
    export CONDA_ENVS_DIRS="/media/data/conda/abdullah/envs"
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/media/data/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
	eval "$__conda_setup"
    else
	if [ -f "/media/data/anaconda/etc/profile.d/conda.sh" ]; then
	    . "/media/data/anaconda/etc/profile.d/conda.sh"
	else
	    export PATH="/media/data/anaconda/bin:$PATH"
	fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
    cuda_path='/usr/local/cuda-10.0/bin'
    if [[ ':$PATH:' != *':$cuda_path:'* ]]; then
	export PATH=$cuda_path:$PATH
    fi  
fi
