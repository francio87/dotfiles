# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#PS1='[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\]] '

export PS1="\[\033[38;5;2m\]\w\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
HISTSIZE= HISTFILESIZE= # HIST infinita
HISTCONTROL=ignoredups

# User specific aliases and functions
alias ll='ls --color=auto -hal'
alias ls='ls --color=auto'
alias ssc='~/.config/scripts/ssc.sh'
alias nano='vim'
#alias dotconf='/usr/bin/git --git-dir=/home/dav/.cfg/ --work-tree=/home/dav'

ex ()
{
   if [ -f $1 ] ; then
     case $1 in
       *.tar.bz2)   tar xjf $1   ;;
       *.tar.gz)    tar xzf $1   ;;
       *.bz2)       bunzip2 $1   ;;
       *.rar)       unrar x $1     ;;
       *.gz)        gunzip $1    ;;
       *.tar)       tar xf $1    ;;
       *.tbz2)      tar xjf $1   ;;
       *.tgz)       tar xzf $1   ;;
       *.zip)       unzip $1     ;;
       *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
       *)           echo "'$1' cannot be extracted via ex()" ;;
     esac
   else
     echo "'$1' is not a valid file"
   fi
}
