# zsh plugins loaded via zgen

plugins=(
	djui/alias-tips
	chrissicool/zsh-256color
	arzzen/calc.plugin.zsh
    zuxfoucault/colored-man-pages_mod
	molovo/crash
	zpm-zsh/dropbox
	willghatch/zsh-saneopt
	marzocchi/zsh-notify
	TBSliver/zsh-plugin-tmux-simple
    sharat87/zsh-vim-mode

# Completion
	zsh-users/zsh-autosuggestions
	knu/zsh-manydots-magic
	oknowton/zsh-dwim
	walesmd/caniuse.plugin.zsh
	hcgraf/zsh-sudo
	lukechilds/zsh-better-npm-completion
	akoenig/npm-run.plugin.zsh

# Git plugins
	peterhurford/git-aliases.zsh
	smallhadroncollider/antigen-git-rebase
	peterhurford/git-it-on.zsh
	supercrabtree/k


# Navigation plugins
	wting/autojump
	andrewferrier/fzf-z
	b4b4r07/enhancd
	urbainvaes/fzf-marks
)

for plugin in $plugins
do
	zgen load $plugin
done
