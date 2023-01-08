# zsh plugins

plugins=(
  z
  git
  npm
  yarn
  pip
  nvm
  docker
  docker-compose
  kubectl
  zsh-history-substring-search
  zsh-syntax-highlighting
  zsh-autosuggestions
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
