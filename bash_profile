if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/amatheny/.gvm/bin/gvm-init.sh" ]] && source "/Users/amatheny/.gvm/bin/gvm-init.sh"
