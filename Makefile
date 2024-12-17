export HAREPATH="./compiler/src/hare/stdlib"
export HARE_TD_fmt=./compiler/libs/hare/.cache/fmt.td
export HARE_TD_ascii=./compiler/libs/hare/.cache/ascii.td
export HARE_TD_encoding::utf8="./compiler/libs/hare/.cache/encoding_utf8.td"

rabbit: main.ha
	./compiler/bin/harec main.ha -o build/main.qbe
	./compiler/bin/qbe build/main.qbe -o build/main.s
	cc build/main.s -o rabbit
