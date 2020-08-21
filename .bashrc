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
