# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# get rid of all the sit_setup stuff,

# Define prompt
if [ "$PS1" ]; then
    PS1="\h:\W> "
fi

# source $PSPKG_ROOT/etc/set_env.sh

if ! echo ${PATH} | /bin/grep -q /usr/local/bin ; then
    PATH=${PATH}:/usr/local/bin
fi

umask 0002
PATH=$PATH:/reg/common/tools/bin
# PATH=$PATH:/afs/slac/g/lcls/tools/script:/reg/common/tools/bin

# Setup EPICS development environment
# epicssetup=/reg/g/pcds/setup/epicsenv-3.14.12.sh
# echo "Running $epicssetup"
# source $epicssetup

export LANG=en_US.UTF-8

# Set EPICS_SITE_CONFIG
export EPICS_SITE_CONFIG=$EPICS_SITE_TOP/RELEASE_SITE
export  REPO='file:///afs/slac/g/pcds/vol2/svn/pcds'

source /reg/g/pcds/setup/python27.sh

export LS_COLORS='di=94:ex=32:ln=95:mi=31'
export EDITOR='/reg/neh/home/apra/.emacs-nw'

alias    h='history'
alias   ip='/sbin/ifconfig'
alias   ll='ls -l --color'
alias  lspci='/sbin/lspci'
alias   cp='cp -ip'
alias   rm='rm -i'
alias  amoioc=/reg/g/pcds/pyps/config/amo/iocmanager.sh
alias  sxrioc=/reg/g/pcds/pyps/config/sxr/iocmanager.sh
alias  tstioc=/reg/g/pcds/pyps/config/tst/iocmanager.sh
alias nmake='make distclean;make'

alias  ssh='ssh -XY '
alias px='xauth list | grep `echo $DISPLAY | sed -e s/\.0\$// -e s@localhost@$HOSTNAME/unix@` | sed -e "s/^/xauth add /"'

alias eioc='pushd /reg/g/pcds/package/epics/3.14/ioc'
alias dioc='pushd /reg/g/pcds/package/epics/3.14-dev/ioc'
alias emod='pushd /reg/g/pcds/package/epics/3.14/modules'
alias dmod='pushd /reg/g/pcds/package/epics/3.14-dev/modules'
alias sioc='pushd /reg/d/iocCommon/sioc'
alias hioc='pushd /reg/d/iocCommon/hioc'
alias hosts='pushd /reg/d/iocCommon/hosts'
alias data='pushd /reg/d/iocData'
alias proc='\ps auxww | grep procServ | grep -v $USER | grep -v caRepeater'
alias mechome='/reg/g/pcds/package/epics/3.14-dev/screens/edm/mec/current/mechome &'
alias cxihome='ssh -Y -X cxi-control /reg/g/pcds/package/epics/3.14-dev/screens/edm/cxi/current/cxihome &'
alias mfxhome='ssh -Y -X mfx-control /reg/g/pcds/package/epics/3.14-dev/screens/edm/mfx/current/mfxhome &'
alias xcshome='ssh -Y -X xcs-control /reg/g/pcds/package/epics/3.14-dev/screens/edm/xcs/current/xcshome &'
alias xpphome='ssh -Y -X xpp-control /reg/g/pcds/package/epics/3.14-dev/screens/edm/xpp/current/xpphome &'
alias sxrhome='ssh -Y -X sxr-control /reg/g/pcds/package/screens/edm/sxr/sxrhome &'
alias sxrhomenew='ssh -Y -X sxr-control /reg/g/pcds/package/screens/edm/sxr/sxrhomenew &'
alias amohome='ssh -Y -X amo-control /reg/g/pcds/package/screens/edm/amo/amohome &'
alias  win='xterm -bg black -fg white -cr orange -fn 10x20 -s -sl 9000 &'
alias ipmi='~jyin/scripts/ipmi.sh'
alias console='/reg/common/tools/bin/console'
alias a2ps='/usr/bin/a2ps --columns=2 --sides=2'
alias  lpr='/usr/bin/lpr -P mec-pc85810printer'
alias lpr2='/usr/bin/lpr -P B999F2COPIER'
alias launchMotor='~jyin/launch-motor.sh'
alias power='/reg/common/tools/bin/power'
alias amocam='/reg/g/pcds/pyps/config/amo/camviewer.sh'
alias xrtQook='python /reg/neh/home/apra/.conda/envs/myenv/bin/xrtQook.pyw'
alias vscreens='setupEpics; pushd /reg/g/pcds/package/epics/3.14-dev/ioc/fee/HXRvacuum/vacuumScreens; edm -x -eolc vac_instrument_main.edl'

function cdioc()
{
        pushd $WORK_AREA/epics/ioc/$1/current
}
export cdioc

function cdmod()
{
        pushd $WORK_AREA/trunk/pcds/epics/modules/$1/current
}
export cdmod

#eclipse
export PATH=/reg/common/package/eclipse4.2:$PATH

#
# PLC aliases 
#
# command templates
#regular size
# reg_plc_com="rdesktop -g 1200x800 -a 32 -x 0x80 -r disk:GEN=${PLC_DIR} -r disk:Package=/reg/common/package -r disk:$MECD -r disk:$CXID -r disk:PLC=$PLC_DIR"
# # big size
# big_plc_com="rdesktop -g 1900x960 -a 32 -x 0x80 -r disk:Package=/reg/common/package -r disk:${MECD} -r disk:${!CXID} -r disk:PLC=${PLC_DIR} -r disk:${XCSD}"
# # big size
# mega_plc_com="rdesktop -g 2100x1181 -a 32 -x 0x80 -r disk:Package=/reg/common/package -r disk:${MECD} -r disk:${!CXID} -r disk:PLC=${PLC_DIR} -r disk:${XCSD}"
# # small size
# small_plc_com="rdesktop -g 1020x640 -a 32 -x 0x80 -r disk:GEN=$PLC_DIR -r disk:Package=/reg/common/package -r disk:$MECD -r disk:$CXID -r disk:PLC=$PLC_DIR"
# alias plcpc1='$reg_plc_com plc-prg-01 &' 
# alias smallplcpc1='$small_plc_com plc-prg-01 &' 
# alias bigplcpc1='${big_plc_com} plc-prg-01 &' 
# alias megaplcpc1='${mega_plc_com} plc-prg-01 &' 
# alias plcpc2='$reg_plc_com plc-prg-02 &' 
# alias smallplcpc2='$small_plc_com plc-prg-02 &' 
# alias bigplcpc2='${big_plc_com} plc-prg-02 &' 
# alias megaplcpc2='${mega_plc_com} plc-prg-02 &' 
# alias plcpc3='$reg_plc_com plc-prg-03 &' 
# alias smallplcpc3='$small_plc_com plc-prg-03 &' 
# alias bigplcpc3='$big_plc_com plc-prg-03 &'
# alias megaplcpc3='${mega_plc_com} plc-prg-03 &' 
# alias plcpc4='$reg_plc_com plc-prg-04 &' 
# alias smallplcpc4='$small_plc_com plc-prg-04 &' 
# alias bigplcpc4='$big_plc_com plc-prg-04 &'
# alias megaplcpc4='${mega_plc_com} plc-prg-04 &' 

# --------------------------------------------------------------------
# 'Non-standard' Bash Scripts
# --------------------------------------------------------------------

# Conda

# source /reg/g/pcds/setup/plcenv.sh
# source ~/bin/setupEpics
# source /reg/g/pcds/setup/pyca27.sh

export PSPKG_RELEASE=controls-0.1.0
export PSPKG_ROOT=/reg/g/pcds/pkg_mgr
source $PSPKG_ROOT/etc/set_env.sh


# Python path additions
export PYTHONPATH=/reg/common/package/psp/2.0.0-python2.7/x86_64-rhel6-gcc44-opt/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/reg/common/package/kerberos/1.1.1-python2.7/x86_64-rhel6-gcc44-opt/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=$PYTHONPATH:/reg/common/package/release/amo-dev/x86_64-rhel7-gcc41-opt/python/lib/python2.7/site-packages
export PYTHONPATH=$PYTHONPATH:/reg/neh/home/apra/work/python/modules
export PYTHONPATH=$PYTHONPATH:/reg/neh/home/apra/work/python/hutchPython

alias setupEpics='source /reg/g/pcds/setup/epicsenv-cur.sh'
# alias setupPLC='~jyin/scripts/plcenv_jing.sh'
alias setupPLC='source /reg/g/pcds/setup/plcenv.sh'
alias setupPyca='source /reg/g/pcds/setup/pyca27.sh'
alias ps_make='$PSPKG_ROOT/ps_make'
alias setupML='source ~davidsch/scripts/mlearntut-setup.sh'
alias setupAna='source /reg/g/psdm/etc/ana_env.sh'

# I know this looks like a good idea but it does not work as intended. This will
# be kept here in case you come up with this bright idea.. again..
# alias setupApra='source ~apra/.bashrc'

alias psr='ssh psrelay'
alias psrcd='sshcd psrelay'
alias psl='ssh pslogin'
alias psd='ssh psdev'
alias psd2='ssh psdev02'
alias psd5='ssh psdev105'
alias psd6='ssh psdev106'
alias psa='ssh psana'
alias psdcd='sshcd psdev'
alias pslcd='sshcd pslogin'
alias psacd='sshcd psana'
alias psd2cd='sshcd psdev02'
alias psd5cd='sshcd psdev105'
alias psd6cd='sshcd psdev106'
alias amoc='sshcd amo-console'
alias amod='sshcd amo-daq'
alias sxrc='sshcd sxr-console'
alias sxrd='sshcd sxr-daq'
alias emacs='emacs -q'
alias cmake='make distclean'
alias mv="mv -i"
alias cntlrel="/reg/neh/home/mcbrowne/bin/cntlrel"
alias sxrp='/reg/neh/home/apra/work/python/hutchPython/sxr/sxrpython.sh'
alias amop='/reg/neh/home/apra/work/python/hutchPython/amo/amopython.sh'
alias cdamop='cd /reg/neh/home/apra/work/python/hutchPython/amo/'
alias cdsxrp='cd /reg/neh/home/apra/work/python/hutchPython/sxr/'
alias chrome='google-chrome'
alias pmgrUtils='/reg/neh/home/apra/work/python/modules/pmgr/pmgrUtils.sh'
alias pmgr='/reg/neh/home/apra/work/python/modules/pmgr/pmgr.sh'
alias devconfig='/reg/neh/home/apra/work/python/modules/devconfig/devconfig.sh'
alias ..='cd ..;'
alias lltr='ls -ltr --color'
alias tpack='tar cvzf'
alias tunpack='tar zxvf'
alias mpc='ssh lcls-pc85184'
alias sw='pushd /reg/g/pcds/pyps/apps/skywalker'
alias apps='pushd /reg/g/pcds/pyps/apps'

export DEV=/reg/g/pcds/package/epics/3.14-dev/
export REL=/reg/g/pcds/package/epics/3.14/
export APPS=/reg/g/pcds/pyps/apps/
export IMSCFG=/reg/neh/home/apra/work/ims_cfgs/

# Redhat version on the current machine
rhelver=$(lsb_release -rs | cut -f1 -d.)
alias rver="lsb_release -rs | cut -f1 -d."

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/reg/common/package/epicsca/3.14.12/lib/rhel6-x86_64

# Adds the pvs in the passed archive to the archiver using processRequestFile
function archive()
{
    /reg/common/tools/bin/processRequestFile $@
}

# SSH to psbuild rhel7, tunneling through psdev if necessary
function psb()
{
    # Parse inputs for with psbuild machine to ssh to
    if [ $# -eq 1 ]; then
        psbhost=psbuild-rhel$1
        if [ $1 -eq 7 ]; then
            psbhost+="-02"
        fi
    elif [ $# -eq 2 ]; then
        psbhost=psbuild-rhel$1-0$2
    else
        psbhost=psbuild-rhel7-02
    fi
        
    # Check if the machine is reachabled on port 22
    if timeout 1 bash -c "cat < /dev/null > /dev/tcp/${psbhost}/22"; then
        sshcd $psbhost
    else
        # Tunnel through psdev if not
        ssh -t psdev "ssh -t $psbhost"
    fi
}

# Launch IOC manager for the inputted hutch
function iocman()
{    
    /reg/g/pcds/pyps/config/$1/iocmanager.sh
}

# ssh to a host and then cd to the directory you were just in. Can handle 
# running additional commands once in the new machine
function sshcd()
{
    if [ $# -eq 1 ]; then 
        cmdStr="cd '$(pwd)'; bash --rcfile /reg/neh/home/apra/.bashrc"
    else
        cmdStr="cd '$(pwd)'; bash --rcfile /reg/neh/home/apra/.bashrc -ci ${@:2}"
    fi
    ssh -t "$1" $cmdStr;
}

# Checks if the current host name contains the passed str argument
function chkhost()
{
    if [[ "$HOSTNAME" == *"$1"* ]]
    then
        return 0
    else
        return 1
    fi
}

# Developer Emacs
# Shell Script that launches emacs on pslogin because it has the most recent 
# version of emacs and has internet access for package access.
function demacs() 
{
    # Check if this is pslogin or rhel7 - lauch normally if true
    if [[ $rhelver == 7 ]] || chkhost lcls-pc ; then
        if [ $# -eq 0 ]; then
            command emacs
        else
            command emacs "$@"
        fi      
    # Check if this is psdev - ssh to pslogin then emacs if true
    else
        if [ $# -eq 0 ]; then
            ssh -t psdev command emacs
        else
            ssh -t psdev command emacs "$(pwd)/$@"
        fi
    # # ssh into psdev first, then to pslogin and run emacs 
    # else
    #   if [ $# -eq 0 ]; then
    #       ssh -t psdev "ssh -t pslogin command emacs"
    #   else
    #       ssh -t psdev "ssh -t pslogin command emacs '$(pwd)/$@'"
    #   fi
    fi
}

# Deletes random file-turds created by emacs or other text editors in a dir
function Clean()
{
    rm -f *.pyc
    rm -f *~
    rm -f *#
}


# Run amo-python from an amo machine. Default to amo-console.
function apython()
{
    origDir="$(pwd)"
    cdamop
    if chkhost amo; then
        ./amopython.sh
    elif chkhost psdev || chkhost psusr; then
        sshcd amo-console "apython; exit"
    else
        sshcd psdev "apython; exit"
    fi
    cd $origDir
}

# Run sxr-python from an sxr machine. Default to sxr-console.
function spython()
{
    origDir="$(pwd)"
    cdsxrp
    if chkhost sxr; then
        ./sxrpython.sh
    elif chkhost psdev || chkhost psusr; then
        sshcd sxr-console "spython; exit"
    else
        sshcd psdev "spython; exit"
    fi
    cd $origDir
}

# Activates the inputted conda env for rhel7
function Activate()
{
    source ~apra/environment/conda_setup.sh prod7
    source activate $1
    export PYTHONPATH=$PYTHONPATH:/reg/neh/home/apra/work/python/modules
    export PYTHONPATH=$PYTHONPATH:/reg/neh/home/apra/work/python/hutchPython
    export PYTHONPATH=$PYTHONPATH:/reg/neh/home/apra/env/
    export PYTHONPATH=$PYTHONPATH:/reg/neh/home5/apra/.conda/envs/myenv/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/reg/common/package/epicsca/3.14.12/lib/rhel6-x86_64

}
function Deactivate()
{
    source deactivate
    source ~apra/.bashrc
}

# Opens a plc-node session on the inputted machine index with settings for my
# lcls desktop screen, setting the proper env before and after running
function mybigplc()
{
    source /reg/g/pcds/setup/plcenv.sh
    my_plc_com="rdesktop -g 1916x1172 -a 32 -x 0x80 -r disk:Package=/reg/common/package -r disk:${MECD} -r disk:${!CXID} -r disk:PLC=${PLC_DIR} -r disk:${XCSD}"
    plc_cmd="${my_plc_com} plc-prg-0$1 &"
    eval $plc_cmd
    source ~apra/.bashrc
}

if chkhost lcls-pc; then
    export PATH="/u/lu/apra/miniconda3/bin:$PATH"
fi 
