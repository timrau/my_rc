# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1="[\u@\h \w/] "
PS2="> "

eval "`dircolors -b`"
mesg n
umask 0077
ulimit -v 8388608

alias ..="cd .."
alias ...="cd ../.."
alias rm="rm -i"
alias ls="ls -F --color=auto"
alias ll="ls -alF --color=auto"
alias sl="ls"
alias tmux="tmux -2"
alias svnsum='svn status | grep -v "^?"'

# Let GitHub ask for password through terminal instead of GUI dialog
unset SSH_ASKPASS
