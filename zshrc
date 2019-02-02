# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export DOTFILES=$HOME/dotfiles

source $DOTFILES/zgen/zgen.zsh
export CUSTOM_ZSH=$DOTFILES/zsh

# zsh plugins loaded via zgen
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/debian
    zgen load denysdovhan/spaceship-zsh-theme spaceship
	source $CUSTOM_ZSH/plugins.zsh
	zgen save
fi

source $CUSTOM_ZSH/themes.zsh

# PATH settings
if [[ -d $HOME/.linuxbrew ]]; then
	export PATH=$HOME/.linuxbrew/bin:$PATH
fi

if [[ -d /usr/local/sbin ]]; then
	export PATH=/usr/local/sbin:$PATH
fi

if [[ -d $HOME/.npm-packages/bin ]]; then
	export PATH=$HOME/.npm-packages/bin:$PATH
fi

if [[ -d $HOME/bin ]]; then
	export PATH=$HOME/bin:$PATH
fi

if [[ -d $HOME/Library/Python/3.7/lib/python/site-packages ]]; then
    export PATH=$HOME/Library/Python/3.7/lib/python/site-packages:$PATH
fi

if [[ -d /usr/local/go ]]; then
    export PATH=$PATH:/usr/local/go/bin
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if [[ -f $HOME/.env ]]; then
    source $HOME/.env
fi

export PATH=$HOME/tizen-studio/tools/ide/bin:$PATH
export PATH=$HOME/tizen-studio/tools:$PATH
export PATH=/opt/webOS_TV_SDK/CLI/bin:$PATH

export EDITOR=vi

bindkey -v
export KEYTIMEOUT=1

# User configuration


# Plugins' options
bindkey '^ ' autosuggest-accept

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=blue

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias reload="source ~/.zshrc"
alias vi=vim
if [[ -x "$(command -v mvim)" ]]; then
    alias vi="mvim -v"
fi
if [[ -x "$(command -v nvim)" ]]; then
    alias vi="nvim"
fi
alias geth=$HOME/geth/go-ethereum/build/bin/geth
alias zshrc="$EDITOR ~/.zshrc"
alias vimrc="$EDITOR ~/.vimrc"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/cetus/.yql/shell_completion
