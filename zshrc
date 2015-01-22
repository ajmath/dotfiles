. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/funcs
. ~/.zsh/env
. ~/.zsh/screen
. ~/.zsh/oh-my

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/amatheny/.gvm/bin/gvm-init.sh" ]] && source "/Users/amatheny/.gvm/bin/gvm-init.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -e ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  source /usr/local/opt/pyenv/completions/pyenv.zsh
fi
