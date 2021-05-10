set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH /Applications/SWI-Prolog.app/Contents/MacOS $PATH
eval (anyenv init - | source)

pyenv init - | source

#self-made shell
#~/moveScreenshot.sh
set screenshot ~/Desktop/スクリーンショット* 
for s in $screenshot
    mv $s ~/Pictures/スクリーンショット/
end
#~/moveGif.sh
set gif ~/Desktop/*.gif
for g in $gif
  mv $g ~/Pictures/gifs/
end
#~/moveMd.sh
set mds ~/Desktop/*.md 
for md_ in $mds
  mv $md_ ~/Documents/md/
end

#
#
abbr gittree 'git log --graph --all --format="%x09%an%x09%h %d %s"'
#abbr tree "pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
abbr ks 'echo "fish ~> おお？なんだァ？ksだとぉ？許さねえからなお前…"'
set -x LDFLAGS "-L/usr/local/opt/zlib/lib"
set -x CPPFLAGS "-I/usr/local/opt/zlib/include"

abbr ojtest 'oj t -c "python main.py" '
