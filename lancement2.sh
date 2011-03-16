#!/bin/bash
rm -rf ./html
rm -rf ./tmp
rm -rf ./sql

mkdir -p tmp/spip
mkdir html
mkdir sql

> tmp/repohtml.txt
> tmp/repohtml.sql
> tmp/repisql.txt

echo 1 > ./j
echo "0" > ./rub
echo "2" > ./num

save="0"
nettoyer="1"
prendre=$1
#echo $prendre
if [ ${save:-0} = 1 ]
then
source init-save.sh
fi

rep="/var/www/clients/client1/web2/vs-dev"
rep_script="/var/www/clients/client1/web2/vs-script"
rep_antislash="\/var\/www\/clients\/client1\/web2\/vs-dev\/"

mkdir ./tmp/spip -p

ls -d $rep/[$prendre]*  | sed  "s/$rep_antislash//g" | sed  's/://g' > tmp/repi.txt
cat tmp/repi.txt

#Remise a zero des fichiers
> tmp/repi0.txt
> tmp/repa.txt
> tmp/fait

cat tmp/repi.txt | sed 's/sql//g;s/tmp//g;s/html//g' | sed '/./!d' > tmp/repa.txt
while read line
do
xml_ou_pas=`ls $rep/$line/plugin.xml`

if [ ${xml_ou_pas:-mot} == 'mot' ]
then
echo '#'$line >> tmp/repi0.txt

else
echo $line >> tmp/repi0.txt
#echo rep bon
fi

done < tmp/repi.txt

cat tmp/repi0.txt  | grep -v "#" > tmp/repa.txt
cat tmp/repi0.txt  | grep -v "#" >> tmp/repisql.txt

./php2html.sh $rep && ./html2php.sh && ./php2sql.sh $rep_script

if [ ${nettoyer:-0} = "1" ]
then
rm -rf ./html
rm -rf ./tmp
rm -rf ./sql

rm -rf ./j
rm -rf ./rub
rm -rf ./num

rm -rf ./repophp.txt
fi
