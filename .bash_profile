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

# Load Bash It
source "$BASH_IT"/bash_it.sh

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

POWERLEVEL9K_COLOR_SCHEME='light'

#ADB debugging
export PATH=$PATH:/Users/Kayo/Library/Android/sdk/platform-tools

~/.moveScreenshot.sh
~/.moveGif.sh
~/moveClipStudio.sh


#mysqlへのパスを追加
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

#alias
alias gittree='git log --graph --all --format="%x09%an%x09%h %d %s"'
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
alias typora="open -a typora"
alias ks='echo "bash > おお？なんだァ？ksだ:とぉ？許さねえからなお前…"'

#use /usr/local/bin/vim
export PATH=/usr/local/bin:$PATH

alias vim="/usr/local/Cellar/vim/8.1.1200/bin/vim"

export PATH=$PATH:/Users/Kayo/.nodebrew/current/bin

#powerline

#function _update_ps1() {
#    PS1="$(powerline-go $?)"
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi


export PATH="$HOME/.pyenv/shims:$PATH"
