# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export DOTFILES=$HOME/dotfiles

source $DOTFILES/zgen/zgen.zsh
export ZSH=$DOTFILES/zsh

# zsh plugins loaded via zgen
if ! zgen saved; then
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/git
    zgen load denysdovhan/spaceship-zsh-theme spaceship
	source $ZSH/plugins.zsh
	zgen save
fi

source $ZSH/themes.zsh

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
