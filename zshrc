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

if [ -e ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  source /usr/local/opt/pyenv/completions/pyenv.zsh
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amatheny/.sdkman"
sdkman-setup() {
  [[ -s "/Users/amatheny/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amatheny/.sdkman/bin/sdkman-init.sh"
}

