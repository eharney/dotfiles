# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias colorstrip="perl -pe 's/\e\[?.*?[\@-~]//g'"
alias rhldap="ldapsearch -x -LLL -h ldap -b ou=users,dc=redhat,dc=com"

export PS1="e@\h \W [\j] $ "

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM=true
export GIT_PS1_SHOWSTASHSTATE=true
source /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='e@\h \W [\j] $(declare -F __git_ps1 &>/dev/null && __git_ps1 "(%s)")\$ '

# Security concerns related to libbfd probing.
alias strings='strings -a'