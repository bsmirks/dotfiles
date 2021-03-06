# ~/.zshrc

# ZSH prompt - https://starship.rs/
eval "$(starship init zsh)"

# pyenv-virtualenv - https://github.com/pyenv/pyenv-virtualenv#installing-with-homebrew-for-macos-users
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv - https://github.com/rbenv/rbenv
eval "$(rbenv init -)"

# thefuck - https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# maven requirement
export M2_HOME="/Users/b0s00dg/apache-maven-3.8.1"
PATH="${M2_HOME}/bin:${PATH}"
export PATH

# GEM_HOME - ruby stuff
export GEM_HOME="$HOME/.gem"

# homebrew git token
export HOMEBREW_GITHUB_API_TOKEN=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

###########
# Plugins #
###########

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

#############
# Functions #
#############

# proxy_status - shows if proxy is set or not
proxy_status () {
  env | grep -i prox
}

# proxy_on - sets proxy variables to sysproxy to avoid firewall stuff
proxy_on () {
  if [ -z "$1" ]; then
    p="sysproxy.wal-mart.com:8080"
  else
    p="$1"
  fi

  export http_proxy=$p
  export https_proxy=$http_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy
  export FTP_PROXY=$http_proxy

  proxy_status
}

# proxy_off - unsets proxy variables set to sysproxy
proxy_off () {
  unset http_proxy
  unset https_proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset FTP_PROXY
}

###########
# Aliases #
###########

alias hub='npx @hub/cli'
alias ll='ls -lG'
alias plugs="cat ~/.config/nvim/init.vim | grep 'Plug '"
alias vim="nvim"
alias vi="nvim"

export NODE_EXTRA_CA_CERTS=~/walmart-root-ca.cer
export SLEDGE_BIN=/Users/b0s00dg/.sledge/bin
export PATH="${PATH}:${SLEDGE_BIN}"

# NVM zsh initialize BEGIN - do not modify #
export NVM_HOME="${HOME}/nvm"
NVM_SH="${NVM_HOME}/bin/nvm.sh"
if [ -s "${NVM_SH}" ]; then
  export NVM_LINK="${HOME}/nvm/nodejs/bin"
  export NVM_NODEJS_ORG_MIRROR="https://repository.walmart.com/content/repositories/nodejs/"
  source "${NVM_SH}"
else
  unset NVM_HOME
  NVM_ERROR="${NVM_SH} is not valid"
fi
unset NVM_SH
# NVM zsh initialize END - do not modify #
#sledge:binary path
export SLEDGE_BIN=/Users/b0s00dg/.sledge/bin
export PATH="${PATH}:${SLEDGE_BIN}"
