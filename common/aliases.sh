# Aliases common to all unix shells

# # ls and variants

# Add color by default
alias ls='ls --color=auto'
# size,show type,human readable
alias l='ls -lAFh'
# long list,show almost all,show type,human readable
alias la='ls -lAFh'
# sorted by date,recursive,show type,human readable
alias lr='ls -tRFh'
# long list,sorted by date,show type,human readable
alias lt='ls -ltFh'
# long list,reverse sorted by date,show type,human readable
alias ltr='ls -ltFhr'
# long list
alias ll='ls -lFh'
# dot files
alias ldot='ls -ld .*'


# # Grep and find

# Add color to grep
alias grep='grep --color'
# Grep recursively, following softlinks, show line number, show filename, and
# the context of the line i.e. 5 lines +/- the match, excluding the VCS dirs
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
# Find directories
alias findd='find . -type d -name'
alias findf='find . -type f -name'


# # Resource Usage

# 1k block size and human readable
alias df='df -kh'
alias du='du -kh'

# # Miscellaneous

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'

# # Always wear a condom

# General safety for these commands
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Always be verbose and disallow recursive changes
if [[ ${OSTYPE} == linux* ]]; then
  alias chmod='chmod --preserve-root -v'
  alias chown='chown --preserve-root -v'
fi


# Include custom aliases if they're defined
[[ -f ~/.aliases.local ]] && source ~/.aliases.local
