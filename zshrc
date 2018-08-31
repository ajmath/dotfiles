. ~/.zsh/config
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

nvm() {
  source ~/.nvm/nvm.sh
  nvm "$@"
  _NVM_LOADED="true"
}
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ "${_NVM_LOADED}" == "true" && $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

source ~/.tilde/plugins/tilde-soundboard/bashrc
alias sb=soundboard

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amatheny/.sdkman"
[[ -s "/Users/amatheny/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amatheny/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.yarn/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/amatheny/code/trebuchet/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/amatheny/code/trebuchet/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/amatheny/code/trebuchet/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/amatheny/code/trebuchet/node_modules/tabtab/.completions/sls.zsh

source $HOME/code/dotfiles/zsh/fzf
