# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to your android studio and emulators...
export ANDROID_HOME=/Users/majed/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

# Bun 
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Python
export PATH="/path/to/python/bin:$PATH"


# Pod Gem
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# Brew
export PATH=$PATH:/opt/homebrew/bin

# PHP Laravel
export PATH="/Users/majed/.config/herd-lite/bin:$PATH" 

# Util
my_local_ip() {
  ifconfig | grep "inet " | grep -v 127.0.0.1 | awk "{print \$2}"
}

alias ip='my_local_ip'

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias ll="ls -al"
alias o="open ."

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/majed/.config/herd-lite/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
export PHP_INI_SCAN_DIR="/Users/majed/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.local/bin:$PATH"

eval "$(rbenv init - zsh)"

# bun completions
[ -s "/Users/majed/.bun/_bun" ] && source "/Users/majed/.bun/_bun"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

