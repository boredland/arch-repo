# manjaro base cfg

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# base config for oh my zsh
source /usr/share/oh-my-zsh/zshrc

# nvm
source /usr/share/nvm/init-nvm.sh

# oh my zsh overrides
plugins=(
    archlinux
    git
    docker
    docker-compose
    nvm
    npm
    yarn
)
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

source ~/.config/zsh/conf.d/*

