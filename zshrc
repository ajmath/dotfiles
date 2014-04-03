. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
# . ~/.zsh/fasd
. ~/.zsh/screen
. ~/.zsh/oh-my


# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"


command -v cowsay &> /dev/null && command -v fortune &> /dev/null && fortune | cowsay

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/amatheny/.gvm/bin/gvm-init.sh" ]] && source "/Users/amatheny/.gvm/bin/gvm-init.sh"

