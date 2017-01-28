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
alias v=nvim
alias ov=vim
alias vp="virb-pry"
alias rkt='racket -i xrepl'
alias lg=legit
alias cdd='cd /Volumes/docker'
alias rpx='raco pollen start . 9000'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias unhide='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias e=emacs
alias git=hub
alias dgo='ssh root@162.243.247.136'
alias ubuntu="ssh tom@192.168.1.109"
alias brake='bundle exec rake'
alias brails='bin/rails'
alias pm='bundle exec rackup -s puma -p 3000'
alias gun='bundle exec shotgun'
alias rs='bin/rspec'
alias bard='bundle exec guard'
alias rhcmsm='rhc setup -l tmb@mainstmission.org'
alias rhctom='rhc setup -l tom.brooke@gmail.com'
alias rhctmb='rhc setup -l tmb@brookelaw.com'
eval "$(rbenv init -)"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby )
# export EDITOR=emacs
setopt auto_cd
source $ZSH/oh-my-zsh.sh
# export RSENSE_HOME="~/.rsense/"
source ~/.nvm/nvm.sh
# export GOPATH=$HOME/golang


# Customize to your needs...
# export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/tmb/.rbenv/bin:~/bin:/usr/local/share/npm/bin:   
# eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
# export PATH="$HOME/vert/vert.x-2.1.1/bin:$PATH"
# export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
# export PATH="~/bin:$PATH"
# export PATH="$HOME/.nailgun:$PATH"
# export PATH="$PATH:/usr/local/smlnj-110.75/bin"
# export PATH="$PATH:/usr/local/share/python"
# export PATH="$PATH:/usr/local/bin/legit"
# export PATH="$PATH:/User/tmb/.boot/boot"
# export PATH="$PATH:/usr/local/bin/riak"
# export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin"
# export PATH="$PATH:/Users/tmb/packer/packer"
# export PATH="$PATH:/Applications/Racket v6.6/bin"
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
# export PATH=$PATH:/Library/TeX/texbin
# export PATH=$PATH:$GOPATH/bin
# export EC2_HOME=~/.ec2
# export PATH=$PATH:$EC2_HOME/bin
# export PATH="$PATH:/usr/local/smlnj-110.77/bin"
# export VAGRANT_HOME="/Volumes/docker/Vagrant"
# export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
# export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
# export PATH=/usr/local/aws/bin:$PATH
# export JAVA_HOME=$(/usr/libexec/java_home)
# export AWS_ACCESS_KEY_ID=AKIAI5HEXOK7QSFJGJNA
# export AWS_SECRET_ACCESS_KEY=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
# export AWS_REGION=us-east-1

# export NPM_PACKAGES=$HOME/.npm-packages
# NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# PATH="$NPM_PACKAGES/bin:$PATH"


# # OPAM configuration
# . /Users/tmb/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# # The next line updates PATH for the Google Cloud SDK.
# source '/Users/tmb/google-cloud-sdk/path.zsh.inc'

# # The next line enables shell command completion for gcloud.
# source '/Users/tmb/google-cloud-sdk/completion.zsh.inc'

# ### Added by the Bluemix CLI
# source /usr/local/Bluemix/bx/zsh_autocomplete
