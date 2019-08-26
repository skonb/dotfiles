ls ~/Desktop/*.gif 1>/dev/null 2>/dev/null
#$?は直前に実行したコマンドの終了値(0は成功、1は失敗)
if [ $?  == 0 ]; then
  mv ~/Desktop/*.gif ~/Desktop/gifs
fi
