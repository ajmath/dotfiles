# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/funcs
. ~/.zsh/env
. ~/.zsh/screen
. ~/.zsh/oh-my

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  source /usr/local/opt/pyenv/completions/pyenv.zsh
fi

[[ -f "${HOME}/.tilde/plugins/tilde-soundboard/bashrc" ]] && source "${HOME}/.tilde/plugins/tilde-soundboard/bashrc"
alias sb=soundboard

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amatheny/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

#source $HOME/code/dotfiles/zsh/fzf

[[ -s "$(brew --prefix asdf)/asdf.sh" ]] && $(brew --prefix asdf)/asdf.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
