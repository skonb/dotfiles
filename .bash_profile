#get path 
 #prolog
export PATH=$PATH:/Applications/SWI-Prolog.app/Contents/MacOS/

if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
# ~/.pyenvではなく、/usr/loca/var/pyenvを使う
export PYENV_ROOT=/usr/local/var/pyenv

# pyenvの自動補完機能を利用
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Path to the bash it configuration
export BASH_IT="/Users/Kayo/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

#Typora
alias typora="open -a typora"
alias ks='echo "bash > おお？なんだァ？ksだ:とぉ？許さねえからなお前…"'

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

POWERLEVEL9K_COLOR_SCHEME='light'

#ADB debugging
export PATH=$PATH:/Users/Kayo/Library/Android/sdk/platform-tools

~/.moveScreenshot.sh
~/.moveGif.sh
~/moveClipStudio.sh


#mysqlへのパスを追加
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

#alias gittree
alias gittree='git log --graph --all --format="%x09%an%x09%h %d %s"'

#use /usr/local/bin/vim
export PATH=/usr/local/bin:$PATH

alias vim="/usr/local/Cellar/vim/8.1.1200/bin/vim"

export PATH=$PATH:/Users/Kayo/.nodebrew/current/bin

#powerline
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
#tree command by alias
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
