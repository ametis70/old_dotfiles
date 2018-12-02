# Skip all this for non-interactive shells
[[ -z "$PS1" ]] && return

#########
# zplug #
#########

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
# zplug "marszall87/nodeys-zsh-theme", as:theme
zplug "themes/frisk", as:theme, from:oh-my-zsh

# Plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "laurenkt/zsh-vimto"
zplug "paulmelnikow/zsh-startup-timer"
# zplug "lib/nvm", from:oh-my-zsh



# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load 

################
# Zsh settings #
################

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# History 
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY       
setopt HIST_IGNORE_SPACE         
setopt SHARE_HISTORY             
setopt HIST_IGNORE_ALL_DUPS      
setopt HIST_REDUCE_BLANKS        

# Other options

# Prompts for confirmation after 'rm *' etc
setopt RM_STAR_WAIT

#Background processes aren't killed on exit of shell
setopt AUTO_CONTINUE

# Don’t write over existing files with >, use >! instead
setopt NOCLOBBER

# ls Colors
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

# Aliases
alias s="sudo"
alias ls="ls --color -F"
alias ll="ls --color -lh"
alias mkdir='mkdir -p'
alias dmesg='dmesg --ctime'
alias cd..='cd ..'

# Completion
zmodload zsh/complist 
autoload -Uz compinit
compinit
zstyle :compinstall filename '${HOME}/.zshrc'

zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Completion selection by menu for kill
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Calculator
# autoload zcalc

# Keybindings
# bindkey "^[[A" history-beginning-search-backward
# bindkey "^[[B" history-beginning-search-forward
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

###############
# Environment #
###############

# fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Keychain
eval "$(keychain --eval --agents gpg,ssh --quiet)"

# NVM 
export NODE_OPTIONS="--max-old-space-size=1024"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Base 16
#BASE16_SHELL_SET_BACKGROUND=false
#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
