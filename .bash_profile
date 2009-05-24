export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

export GREP_OPTIONS=--exclude=\*.svn\*
export SVN_EDITOR=vim

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

#Commands
alias gits="git status"
alias gitb="git branch -a"
alias gitc="git commit -m"

alias m="mate"
alias e="emacs"
alias gem="sudo gem"

alias ss="script/server"
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
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#Directories
alias work="cd ~/Workspace/"
alias rb="work; cd ruby"
alias jw="rb; cd josephwilk"
alias cuke="jw; cd cucumber"
alias rspec="rb; cd rspec/"

# BASH Completion
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
complete -C ~/.bash_completion.ruby.d/rake_and_cap_completion/rake_and_cap_completion.rb -o default rake
complete -C ~/.bash_completion.ruby.d/rake_and_cap_completion/rake_and_cap_completion.rb -o default cap
