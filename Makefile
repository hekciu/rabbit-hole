rabbit: main.ha
	HAREPATH="./compiler/libs/harec/include" ./compiler/bin/harec main.ha -o build/main.qbe
	./compiler/bin/qbe build/main.qbe -o build/main.s
	cc build/main.s -o rabbit
