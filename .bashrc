# .bashrc

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


PS1="\e[0;32m\w\e[0;00m $ "


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
HISTSIZE= HISTFILESIZE= # HIST infinita
HISTCONTROL=ignoredups

# User specific aliases and functions
alias ll='ls -hal'
alias ssc='~/.scripts/ssc.sh'
alias nano='vim'
alias dotcfg='/usr/bin/git --git-dir=/home/dav/.cfgz/ --work-tree=/home/dav'
