umask 027

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \$(parse_git_branch)\n> "
export PATH=$PATH:/usr/local/mysql/bin:/opt/local/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin

#general
alias linecount="awk '{a+=\$1}END{print a}'"
alias diskspace="du -k | grep -v './.*\/'"
alias ds='du -k  | grep -v "\/.*\/"'
alias dir='ls -lF'
alias lr='ls -alrt'
alias l='ls -alF'
alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

#mysql alias
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

#textmate
export EDITOR="$HOME/bin/mate -w"
alias mate='~/bin/mate'

#sublime text
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

#node
alias n='node'

#nvm
. ~/.nvm/nvm.sh

#rails
alias ss='script/server'
alias sc='script/console'

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias r="rbenv exec"
alias rb="rbenv exec bundle exec"
alias rbr="rbenv exec bundle exec rake"