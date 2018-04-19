export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh 

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Manage local plugins
# zplug "~/.zsh", from:local

# Theme
# zplug "dracula/zsh", as:theme
zplug "marszall87/nodeys-zsh-theme", as:theme

# Plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "desyncr/auto-ls"
zplug "paulmelnikow/zsh-startup-timer"
zplug "lib/nvm", from:oh-my-zsh


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load 


# Keychain
eval "$(keychain --eval --agents gpg,ssh --quiet)"

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


