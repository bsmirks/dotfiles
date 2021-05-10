# ~/.zshrc

# ZSH prompt - https://starship.rs/
eval "$(starship init zsh)"

# pyenv-virtualenv - https://github.com/pyenv/pyenv-virtualenv#installing-with-homebrew-for-macos-users
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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

alias ll='ls -lG'
alias plugs="cat ~/.config/nvim/init.vim | grep 'Plug '"
alias vim="nvim"
alias vi="nvim"
