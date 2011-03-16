#!/bin/bash
rm -rf ./html
rm -rf ./tmp
rm -rf ./sql

> repohtml.txt
> repohtml.sql
> repisql.txt

mkdir -p tmp/spip
mkdir html
mkdir sql

echo 1 > ./j
echo "0" > ./rub
echo "2" > ./num



./lancement.sh a-b 2>log_decoupe.txt
./lancement.sh c-d 2>log_decoupe.txt
./lancement.sh e-g 2>log_decoupe.txt
./lancement.sh h-i 2>log_decoupe.txt
./lancement.sh j-m 2>log_decoupe.txt
./lancement.sh n-p 2>log_decoupe.txt
./lancement.sh q-r 2>log_decoupe.txt
./lancement.sh s-z 2>log_decoupe.txt
#./html2php.sh
#./php2sql.sh

