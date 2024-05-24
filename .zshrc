if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR=vim
export DEV=aron
export DISPLAY=:0
export PATH=$PATH:$HOME/.yarn/bin:$HOME/.local/bin:~/work/bin/:./scripts/:$HOME/.local/tf:$HOME/.pyenv/bin:/usr/local/go/bin:$HOME/go/bin
export FZF_BASE=/usr/share/fzf
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
set -o magicequalsubst

for f in ~/.shell/*; do source $f; done

DISABLE_AUTO_UPDATE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  fzf
  web-search
  colored-man-pages
  extract
  archlinux
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
)

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Increase node memory limit
export NODE_OPTIONS=--max_old_space_size=4096
export ALGOLIA_ADMIN_API_KEY=donotindex


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
