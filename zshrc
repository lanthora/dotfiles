ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="example"
DISABLE_AUTO_UPDATE="true"

plugins=(
  git
)

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

setopt hist_ignore_all_dups

export EDITOR="/usr/bin/vim"
export PATH="/usr/lib/node_modules/corepack/shims:$PATH"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

