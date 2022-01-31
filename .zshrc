# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias vscode="\"/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code\""

function c { vscode ${@:-.} }

alias layout="osascript .iterm2-layout.scpt"
alias ls="exa"
alias ls="exa --all --long"
alias lst="exa --all --long --tree"
alias diff="git diff --color | diff-so-fancy"
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias vz="vim ~/.zshrc";
alias sz="source ~/.zshrc";
alias documents="cd ~/Documents"
alias desktop="cd ~/Desktop";
alias downloads="cd ~/Desktop";
alias artifacts="cd ~/../../Volumes/SSD/code"
alias icloud="cd ~/Library/'Mobile Documents'/com~apple~CloudDocs";
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
