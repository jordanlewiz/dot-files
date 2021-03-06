# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

[[ -f /opt/boxen/env.sh ]] && source /opt/boxen/env.sh

ZSH_THEME="robbyrussell"

plugins=(
    brew
    bundler
    gem
    git
    osx
    pow
    powder
    python
    rails
    rake
    rbenv
    zeus
    zsh-syntax-highlighting
)


# source ${HOME}/.zshenv
source ${ZSH}/oh-my-zsh.sh

#  kill any processes that are turned up by a `ps aux  | grep {your argument here}`
function snipe_processes() {
  selector=$1
  kill -9 `ps aux | grep $selector | grep -v grep | awk '{print $2}'`
}

function dbm() {
  bundle exec rake db:migrate
  bundle exec rake db:test:prepare
}


function rsp() {
  touch ~/.pow/restart.txt
}


function bil() {
  bundle install --local &&
  bundle exec spring binstub --all
}

function boxenate() {
  cd ~/src/our-boxen &&
  git pull &&
  bundle install --local &&
  boxen --debug --stealth
}

alias be="bundle exec"
alias bec="bundle exec cucumber"
alias fa="alias -p | grep"
alias fs="bundle exec foreman start"
alias gcav="git commit -av"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gcv="git commit -v"
alias gdh="gd head"
alias gfo="git fetch origin"
alias gl="git smart-log"
alias grhard="git reset --hard"
alias gs="git status"
alias gtm="cd ~/src/marketplace"
alias gtob="cd ~/src/our-boxen"
alias otf="open http://themeforest.dev/"
alias pr="touch ~/.pow/restart.txt"
alias reload!="source ~/.zshrc"
alias s.="subl ."
alias sshci="ssh ci-public"
alias va="~/src/toolbox/gpg/scripts/view_asset"
alias zr="zeus rspec"
alias zt="zeus test"
alias bb="git buildkite"

# docker-osx-dev
export DOCKER_CERT_PATH=/Users/jordanlewiz/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
