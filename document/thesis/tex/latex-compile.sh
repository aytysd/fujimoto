#!/bin/sh

# mkdir -p ./tex/log
mkdir -p ./out

platex -output-directory=./out main.tex ;echo
dvipdfmx ./out/main.dvi -o ./out/report.pdf
# dvipdfmx -f ptex-ipa.map main ## fontを指定するとき
