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

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

#ADB debugging
export PATH=$PATH:/Users/Kayo/Library/Android/sdk/platform-tools

#self-made shell
~/.moveScreenshot.sh
~/.moveGif.sh
#~/.moveClipStudio.sh

#self-made alies alias
alias gittree='git log --graph --all --format="%x09%an%x09%h %d %s"'
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
alias typora="open -a typora"
alias ks='echo "bash > おお？なんだァ？ksだとぉ？許さねえからなお前…"'

#use /usr/local/bin/vim
export PATH=/usr/local/bin:$PATH

#nodeenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
