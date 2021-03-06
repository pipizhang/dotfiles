# Basic
alias l='ls -ahlF'
alias l.='ls -dhlF .*'
alias ll='ls -hlF'
alias ls='ls --color=auto'
alias more='less'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias ce='cd /etc'
alias ch='cd /service/sites'
alias cp='cp -i'
alias cs='cd /usr/local/app'
alias ct='cd /opt'
alias dev='cd /u/dev'
alias tmp='cd /u/tmp'
alias vms='cd /u/dev/vms'

alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias grep='grep --colour=auto'

alias df='df -h'
alias free='free -m'
alias np='nano -w PKGBUILD'
alias pack='ack --pager="less -R"'
alias po='popd'
alias pu='pushd'
alias rz='rz -e'
alias r='reset'

# Tools
alias si='socli'
alias siq='socli -iq'
alias tg='tig'
alias vi='vim -X'
alias wget='wget --user-agent=""'
alias http='http --style=monokai'
alias https='http --verify=no'
alias scurl='curl --socks5 127.0.0.1:1080 '
alias sshnull='ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no"'

