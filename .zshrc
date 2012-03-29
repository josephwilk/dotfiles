if [[ -s /Users/josephwilk/.rvm/scripts/rvm ]] ; then source /Users/josephwilk/.rvm/scripts/rvm ; fi


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails textmate)

source $ZSH/oh-my-zsh.sh

export GIT_EDITOR="emacs"
export GREP_OPTIONS=--exclude=\*.svn\*
export SVN_EDITOR=emacs

export RSENSE_HOME='/opt/local/share/rsense-0.2'

export EDITOR='mate'

export EC2_URL='https://eu-west-1.ec2.amazonaws.com'

echo 'if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi' >> ~/.$profile fi


alias gitd="git diff --cached"
alias gitc="git commit -m"
alias gcm="git commit -m"
alias be="bundle exec"

export GIT_EDITOR="mate -w"

alias spec='spec -c'
alias cuke='cucumber'

#Songkick
#export SK_NAMESPACE=default

#alias cukes='cucumber _0.3.11.6_'

alias gpl="git pull --rebase; git submodule update --init --recursive"
alias gst="git status"

alias ssh-joe="ssh joe@of1-dev-joe"
alias ssh-ci="ssh of1-dev-ci"

alias sk="cd ~/Workspace/ruby/sk"
alias skweb="sk; cd skweb"
alias api="skweb; cd vendor/api"
alias silod="SONGKICK_ENV=features SK_NAMESPACE=default SONGKICK_DEBUG=info ./bin/silovatord run"
alias cuke_siloless="NO_SILOVATOR=1 SK_NAMESPACE=default cucumber"

alias mysql="/usr/bin/mysql"

alias grepa='grep -ir'

alias e='open -a /Applications/Aquamacs\ Emacs.app/'
alias m="$HOME/bin/mate"

alias ss="script/server"
alias sc="script/console"

alias as='autospec'

alias ls="ls -G"
alias l='ls -l'
alias la='ls -lhAF'
alias ssh="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="ln -s"
alias sed='sed -E'
alias l='ls -1'
alias la='ls -lhAF'
alias ll='ls -lhF'
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias dir="lt"
alias dot="l."
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd ..;ls"
alias ...="cd ../.."
alias ....="cd ../../.."

#Directories
alias work="cd ~/Workspace/"
alias rb="work; cd ruby"
alias jw="rb; cd josephwilk"
alias cuke="jw; cd cucumber"
alias srspec="rb; cd rspec/"


# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin
export PATH=$PATH:/usr/local/sbin:~/bin

export HIVE_HOME=/usr/local/Cellar/hive/0.7.1/libexec
export JAVA_HOME="$(/usr/libexec/java_home)"

fortune | cowsay | lolcat
