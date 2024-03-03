export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
ZSH_THEME="eastwood"

zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:processes' command 'ps -ax' 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list alwaysy
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

alias vpn="./vpn-connect.sh"
alias la="ls -a --color"
alias ll="ls -la --color"
alias cl="clear"
