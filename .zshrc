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

# The next line updates PATH for Yandex Cloud CLI.
# if [ -f '/Users/timur/yandex-cloud/path.bash.inc' ]; then source '/Users/timur/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
# if [ -f '/Users/timur/yandex-cloud/completion.zsh.inc' ]; then source '/Users/timur/yandex-cloud/completion.zsh.inc'; fi

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
#source /Users/timur/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vpn="./vpn-connect.sh"
