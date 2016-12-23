# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export GIT_EDITOR="emacs"
export GREP_OPTIONS=--exclude=\*.svn\*
export SVN_EDITOR=emacs

export RSENSE_HOME='/opt/local/share/rsense-0.2'

export EDITOR='mate'

export EC2_URL='https://eu-west-1.ec2.amazonaws.com'


alias be="bundle exec"
alias bi='bundle install --path .bundle/gems --binstubs .bundle/bin'

export GIT_EDITOR="mate -w"

alias spec='spec -c'
alias cuke='cucumber'

alias gpl="git pull --rebase; git submodule update --init --recursive"
alias gst="git status"
alias gitdc="git diff --cached"
alias gitd="git diff"
alias gitc="git commit -m"
alias gcm="git commit -m"

alias grepa='grep -ir'

alias e='open -a /Applications/Aquamacs\ Emacs.app/'
alias m="$HOME/bin/mate"

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
alias sc="cd ~/Workspace/soundcloud"
alias work="cd ~/Workspace/"
alias jw="work; cd josephwilk"

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin
export PATH=$PATH:/usr/local/sbin:~/bin

#export JAVA_VERSION=1.7
#export JAVA_HOME=$(/usr/libexec/java_home -v $JAVA_VERSION)

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.rvm/scripts/rvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Tensorflow compile .so
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/Users/josephwilk/Workspace/c++/tensorflow/bazel-bin/tensorflow/:"
