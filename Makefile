all: main

main: main.ha
	HAREC=./compiler/bin/harec QBE=./compiler/bin/qbe HAREPATH=./compiler/libs/hare ./compiler/bin/hare build main.ha
