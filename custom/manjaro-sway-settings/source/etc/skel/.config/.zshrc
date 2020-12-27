# manjaro base cfg
source /usr/share/zsh/manjaro-zsh-config
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