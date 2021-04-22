# Things useful or specific to serre-lab machines

# Shared Conda setup taken from the following slab page as of 2021-04-22
# https://serrelab.slab.com/posts/anaconda-shared-across-nodes-0lzk7nv6

if globhost brown.edu || globhost serre || globhost x; then
    mkdir -p /media/data_cifs/projects/prj_shared/conda/$USER/envs
    
    export CONDA_PKGS_DIRS="/media/data_cifs/projects/prj_shared/anaconda3/pkgs"
    export CONDA_ENVS_DIRS="/media/data_cifs/projects/prj_shared/conda/$USER/envs"

    if [[ ':$PATH:' != *'/media/data_cifs/projects/prj_shared/anaconda3/bin:'* ]]; then
	export PATH=/media/data_cifs/projects/prj_shared/anaconda3/bin:$PATH
    fi
    
    /media/data_cifs/projects/prj_shared/anaconda3/bin/conda init
fi
