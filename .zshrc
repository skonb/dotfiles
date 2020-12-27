#get path 
 #prolog
export PATH=$PATH:/Applications/SWI-Prolog.app/Contents/MacOS/

if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi


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
~/.moveMd.sh
#~/.moveClipStudio.sh

#self-made alies alias
alias gittree='git log --graph --all --format="%x09%an%x09%h %d %s"'
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
alias ks='echo "bash > おお？なんだァ？ksだとぉ？許さねえからなお前…"'

#use /usr/local/bin/vim
export PATH=/usr/local/bin:$PATH

#use pyenv
export PYENV_ROOT="/usr/local/var/pyenv"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#change terminal's first sentence 
PS1="%* %02~ > "
#PROMPT=$'%n@%m [%*] [%~] \n-> %% '

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/neko/Downloads/CubismSdkForNative-4-beta.1/Samples/Cocos2d-x/cocos2d/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/neko/Downloads/CubismSdkForNative-4-beta.1/Samples/Cocos2d-x
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/neko/Downloads/CubismSdkForNative-4-beta.1/Samples/Cocos2d-x/cocos2d/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

#alias from default vim to brew vim
alias vim="/usr/local/bin/vim"

#alias C compiler
alias c="gcc"

#make path to ADB
export PATH=$PATH:/Users/neko/Library/Android/sdk/platform-tools

#settings for pyenv
#openssl系のバグはコレで直したはずなんだけどなぁ
export CFLAGS="-I/usr/local/Cellar/openssl/1.0.2s/include"
export LDFLAGS="-L/usr/local/Cellar/openssl/1.0.2s/lib"
#opensslへのパス追加

#コンソールを vi モードに切り替える
set -o vi

#rbenv
eval "$(rbenv init -)"
export PATH="/usr/local/opt/binutils/bin:$PATH"

export PATH="$PATH:/Users/neko/Applications/dex2jar-2.0"

export PYTHONPATH="~/.python_lib/:$PYTHONPATH"

export PATH="$PATH:$HOME/.cargo/bin/"

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

alias p=python

#zshの強力なオートコンプリートを開放
autoload -Uz compinit
compinit

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/neko/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/neko/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/neko/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/neko/google-cloud-sdk/completion.zsh.inc'; fi

#Google NLP
export GOOGLE_APPLICATION_CREDENTIALS="/Users/neko/Downloads/EmoteAnalyze-subaccount.json"
eval "$(anyenv init -)"
