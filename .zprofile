# clear

# zsh config
#
ZSH="/Users/thrashr888/.oh-my-zsh"
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME=powerlevel10k/powerlevel10k
ZSH_CUSTOM=/usr/local/opt
COMPLETION_WAITING_DOTS="true"
ENABLE_CORRECTION="false"
DISABLE_AUTO_TITLE="false"
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user time go_version node_version vcs status newline dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_TIME_FORMAT="%D{%m/%d %H:%M:%S.%.}"
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_HIDE_TAGS=true
plugins=(aws osx colorize colored-man-pages)
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user ram load battery aws nvm go_version newline dir_writable dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)


# env
#
ulimit -n 8192
export LANG=en_US.UTF-8
export ENV=local
export CLICOLOR=true
# export TERM="xterm-256color"
export AWS_HOME=/Users/thrashr888/.aws
export AWS_DEFAULT_PROFILE=play
export AWS_PROFILE=play
export AWS_REGION=us-east-1
export GITHUB_USER=thrashr888
export DEVELOPMENT=true
export NODE_ENV=development
export GO_ENV=development
# export GO111MODULE=on
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_INSTALL_CLEANUP=1
# export EDITOR=/usr/local/bin/code
export PGDATA=/usr/local/var/postgresql@9.6
export RUBYOPT='-w -W0' # squelch ruby warnings

# Atlas
export TFE_ORG=pthrasher_v2
# export TFE_FQDN=localhost:3000
# export TFE_ADDRESS=https://tfe-zone-8ad632e4.ngrok.io
export NOMAD_HOST_PORT_https=444
export NOMAD_HOST_PORT_http=8081
export AR_LOG_LEVEL=warn
export EMBER_CLI_TESTS=true
export DISABLED_FEATURE_FLAGS="queue-manager,login-recaptcha,vcs-next"
export GOOGLE_APPLICATION_CREDENTIALS="${HOME}/.gcp-creds.json"
export GITHUB_POLICY_SET_BRANCH=master
export GITHUB_POLICY_SET_PATH=/
export GITHUB_POLICY_SET_IDENTIFIER=thrashr888/sentinel-playground
export EMBER_CLI_BROCCOLI_2=true
export EMBER_CLI_SYSTEM_TEMP=true

# Vault
# export VAULT_HOST=127.0.0.1
# export VAULT_HOST_PORT=8200
# export VAULT_ADDR=http://${VAULT_HOST}:${VAULT_HOST_PORT}
# export VAULT_GH_TOKEN=XXXXX

# Paths
export PATH=$HOME/bin:.:$PATH
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh" --no-use
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/opt/postgresql@9.6/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="$HOME/.poetry/bin:$PATH"


# Aliases
#
#alias ll='ls -AlhG'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias ll='lsd -Alh --icon never --size short'
alias lll='lsd -Alh --icon never --size short'
alias l='less'
alias h='history'
alias cls='clear'
alias t='tree -ah --du'
alias untar='tar -xvf'
alias g='git'
alias gs='git status'
alias gt='gittower'
alias gt.='gittower .'
alias gcm='git checkout master'
alias j='jump'
alias st='subl'
alias py='python'
alias pip='pip2'
alias e='ember'
alias et='ember test'
alias d='docker'
alias dm='docker-machine'
alias rake='bin/rake'
alias dco='docker-compose'
alias dns='dscacheutil -flushcache'
alias audio='sudo killall coreaudiod' # fix hangouts audio
alias video='sudo killall VDCAssistant' # fix zoom video
alias bo='brew update && brew outdated'
alias bu='brew upgrade && brew cleanup'
alias tmux='TERM=screen-256color tmux'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias csb='code ~/.CloudStation/CloudStation.app/Contents/Resources/conf/filter-v4150'
alias spotlight-on='sudo mdutil -a -i on'
alias spotlight-off='sudo mdutil -a -i off'
alias temp='sysctl machdep.xcpm.cpu_thermal_level'
alias ws='wheres-my-ship'
alias wms='wheres-my-ship'
alias 'ps?'='ps aux | grep '
alias 'h?'='history | grep '
function title {
  printf "\033]0;%s\007" "$1"
}
function port {
  printf "lsof -i :%d\n" "$1"
  lsof -i :$1
}


# HashiCorp
alias c='consul'
alias s='sentinel'
alias tf='terraform'
alias v='vault'
alias wp='waypoint'
alias work='cd ~/hashicorp/'
alias hcgo="cd $GOPATH/src/github.com/hashicorp"
alias atlas='alias | grep atlas'
alias cdaf='cd frontend/atlas'
alias atlas-cd='cd ~/hashicorp/atlas'
alias atlas-node='fnm use'
alias atlas-console='bundle exec rails console'
alias atlas-db-migrate='bundle exec rake db:migrate'
alias atlas-ember-clean='rm -rf tmp/{cache,ember-cli,frontend}; rm -rf frontend/atlas/tmp'
alias atlas-ember-clean-all='atlas-ember-clean && atlas-ember-clean-deps'
alias atlas-ember-clean-deps='rm -rf frontend/atlas/node_modules'
alias atlas-ember-install='bundle exec rake ember:install'
alias atlas-ember-test='yarn test-ember-exam'
alias atlas-fa='cd frontend/atlas; nvm use;'
alias atlas-kill-watchman='killall watchman'
alias atlas-kill-zoom='sudo killall VDCAssistant'
alias atlas-local-console='rake tfe:local:console'
alias atlas-local-info='rake tfe:local:info'
alias atlas-local-logs='rake tfe:local:logs'
alias atlas-local-logs-atlas='rake tfe:local:logs[atlas]'
alias atlas-local-start='rake tfe:local:start'
alias atlas-local-stop='rake tfe:local:stop'
alias atlas-local-nuke='rake tfe:local:nuke'
alias atlas-ps='ps aux | grep -e ember -e atlas'
alias atlas-server='bundle exec rails server'
alias atlas-server-mirage='ENABLE_MIRAGE=true bundle exec rails server'


# Login Tokens
#
export AGE_PUBLIC_KEY=XXXXX
# export GITHUB_TOKEN=XXXXX
export GH_WH_TOKEN=XXXXX
export TFE_TOKEN=XXXXX
export TF_VAR_TFE_TOKEN=$TFE_TOKEN
export TF_VAR_tfe_token=$TFE_TOKEN
export LAUNCH_DARKLY_SDK_KEY=XXXXX
export LAUNCH_DARKLY_CLIENT_SIDE_ID=XXXXX
export LAUNCHDARKLY_TOKEN=XXXXX
export BUNDLE_GEMS__CONTRIBSYS__COM=XXXXX
export VAULT_TOKEN=XXXXX
export THE_REG_TOKEN=XXXXX
export GOOGLE_CREDENTIALS=XXXXX
export AZURE_TENANT_ID=XXXXX
export AZURE_CLIENT_ID=XXXXX
export AZURE_CLIENT_SECRET=XXXXX
export AZURE_SUBSCRIPTION_ID=XXXXX
export ARM_TENANT_ID=$AZURE_TENANT_ID
export ARM_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID
export ARM_CLIENT_ID=$AZURE_CLIENT_ID
export ARM_CLIENT_SECRET=$AZURE_CLIENT_SECRET

# AWS
#
function ec2-play {
  echo 'Setting AWS keys for PLAY'
  export AWS_DEFAULT_PROFILE=play
}
function ec2-work {
  echo 'Setting AWS keys for WORK'
  export AWS_DEFAULT_PROFILE=work
}


# Bash Completions
#
fpath=(/usr/local/share/zsh/site-functions $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)
# eval "$(jump shell zsh)"
eval "$(direnv hook zsh)"
[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion
source `brew --prefix`/etc/profile.d/z.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh


# SSH agent
#
ssh-add >/dev/null 2>/dev/null


# Steal from Wallcat
#
pax -rw -pe -s/$/.jpg/ /Users/thrashr888/Library/Containers/cat.wall.Wallcat/Data/downloadedImages/* ~/Pictures/Wallcat/


# Save homebrew list
#
# brew bundle dump --force --global
# mackup backup -f
