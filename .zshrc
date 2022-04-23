# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH



# Path to your oh-my-zsh installation.
export PATH=/opt/homebrew/bin:$PATH
export ZSH="/Users/$USER/.oh-my-zsh"
export DEFAULT_USER="$USER"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git macos)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias o="open ."

alias ll="ls -la -G"
alias g="git"
alias gp="git pull"
alias gundo="git reset --soft HEAD~"
alias gamend="git commit -av --amend --no-edit"
alias zshconfig="code ~/.zshrc"
alias install="brew install"
alias uninstall="brew uninstall"
alias cl="clear"



# FUNCTIONS


# Create a new directory and enter it
function mkcd () {
	mkdir -pv "$@" && cd "$@"
}

function code {
    open -a '/Applications/Visual Studio Code.app' "$1"
}

