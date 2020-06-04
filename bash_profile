alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &amp;'  
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias del='~/bin/deleteFile'  

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=$PATH:/Users/Ning/bin:/opt/local/bin:/opt/local/sbin/:/Volumes/iMacBAK/Dev/android-sdk-mac_86/platform-tools/:.:/usr/texbin/:/Users/Ning/bin/

test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Settings for Mapnik.framework Installer to enable Mapnik programs and python bindings
#export PATH=/Library/Frameworks/Mapnik.framework/Programs:$PATH
#export PYTHONPATH=/Library/Frameworks/Mapnik.framework/Python:$PYTHONPATH

#export PATH=/System/Library/Frameworks/Python.framework/Versions/2.7:$PATH
#export PYTHONPATH=/System/Library/Frameworks/Python.framework/Versions/2.7:$PYTHONPATH

##
# Your previous /Users/Ning/.bash_profile file was backed up as /Users/Ning/.bash_profile.macports-saved_2011-11-28_at_13:14:05
##

export PATH=/usr/local/mysql/bin/:$PATH
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# MacPorts Installer addition on 2012-05-02_at_22:47:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/Ning/anaconda3/bin:$PATH"  # commented out by conda initialize
#export PATH="/Users/Ning/anaconda3/envs/py36/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/HPCCSystems/6.4.30/clienttools/bin:$PATH"

#export CUDA_HOME=/usr/local/cuda
#export DYLD_LIBRARY_PATH=${CUDA_HOME}/lib:${CUDA_HOME}/extras/CUPTI/lib:/Developer/NVIDIA/CUDA-10.0/lib
#export LD_LIBRARY_PATH=$DYLD_LIBRARY_PATH
#export PATH=$DYLD_LIBRARY_PATH:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Ning/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Ning/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Ning/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Ning/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

