#9cc実行ファイルが9cc.cより古い場合に限り、makeを実行するだけで9ccをビルドしてくれる
#ccには必ず-staticオプションを渡す
CFLAGS=-std=c11 -g -static

9cc: 9cc.c

test: 9cc
		./test.sh

#テンポラリなファイルを消す
clean:
		rm -f 9cc *.o *~ tmp*

.PHONY: test clean