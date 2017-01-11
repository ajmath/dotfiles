if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/amatheny/.sdkman"
[[ -s "/Users/amatheny/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/amatheny/.sdkman/bin/sdkman-init.sh"
