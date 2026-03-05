# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

if [ -f ~/.zsh_exports ]; then
    source ~/.zsh_exports
fi


ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/Users/majed/.bun/_bun" ] && source "/Users/majed/.bun/_bun"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nidlp-majed/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nidlp-majed/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nidlp-majed/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nidlp-majed/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/nidlp-majed/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
