# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
#alias gca="git add --all && git commit --amend --no-edit"
#alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
#alias gpsf="git push --force"
#alias gpl="git pull --rebase --autostash"
#alias gb="git branch"
#alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
#alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

# Docker
alias dl="docker_list"
alias dcon="dot docker connect"
alias dstart="dot docker container_start"
alias dstop="dot docker container_stop"
alias dremove="dot docker container_remove"
alias di="docker images"

# Personal
alias reload="source ~/.zshrc"
alias home="cd ~"
alias cdr="home; cd repos"
alias cdptk="cdr; cd projectrak-cloud"
alias cdepx="cdr; cd exporter-cloud"
alias un="nvm use node"

alias idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea"

alias java17='export JAVA_HOME=$JAVA_17_HOME; export PATH=$JAVA_HOME/bin:$PATH'
alias java21='export JAVA_HOME=$JAVA_21_HOME; export PATH=$JAVA_HOME/bin:$PATH'