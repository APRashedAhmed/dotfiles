# Things useful or specific to serre-lab machines

alias ssh='ssh -XY'

export p1='serrep1.services.brown.edu'
export p2='serrep2.services.brown.edu'
export p3='serrep3.services.brown.edu'
export p4='serrep4.services.brown.edu'
# X Nodes
export x7='x7.clps.brown.edu'
export x8='x8.clps.brown.edu'
export x9='x9.clps.brown.edu'

# Aliases for p nodes
alias p1='ssh abdullah@$p1'
alias p2='ssh abdullah@$p2'
alias p3='ssh abdullah@$p3'
alias p4='ssh abdullah@$p4'
# X Nodes
alias x7='ssh abdullah_rashed@$x7'
alias x8='ssh abdullah@$x8'
alias x9='ssh abdullah@$x9'

# Nvidia-smi
alias nsmi='nvidia-smi'

# This only applies to machines which can see data_cifs
if globhost brown.edu; then
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
fi

#     # >>> conda initialize >>>
#     # !! Contents within this block are managed by 'conda init' !!
#     __conda_setup="$('/home/abdullah/data_cifs/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#     if [ $? -eq 0 ]; then
# 	eval "$__conda_setup"
#     else
# 	if [ -f "/home/abdullah/data_cifs/miniconda3/etc/profile.d/conda.sh" ]; then
# 	    . "/home/abdullah/data_cifs/miniconda3/etc/profile.d/conda.sh"
# 	else
# 	    export PATH="/home/abdullah/data_cifs/miniconda3/bin:$PATH"
# 	fi
#     fi
#     unset __conda_setup
#     # <<< conda initialize <<<
# fi
