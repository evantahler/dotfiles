umask 027

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Colors!
alias ls='ls -G'
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \$(parse_git_branch)\n> "
export PATH=$PATH:/usr/local/mysql/bin:/opt/local/bin
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin

#SSH helpers
alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

#sublime text
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

#nvm
source $(brew --prefix nvm)/nvm.sh

#rails
export RAILS_ENV="development"
export RACK_ENV="development"

#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias r="rbenv exec"
alias rb="rbenv exec bundle exec"
alias rbr="rbenv exec bundle exec rake"
