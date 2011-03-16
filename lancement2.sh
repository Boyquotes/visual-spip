#!/bin/bash
rm -rf ./html
rm -rf ./tmp
rm -rf ./sql

> tmp/repohtml.txt
> tmp/repohtml.sql
> tmp/repisql.txt

mkdir -p tmp/spip
mkdir html
mkdir sql

echo 1 > ./j
echo "0" > ./rub
echo "2" > ./num

nettoyer="0"
prendre=$1
#echo $prendre
source init-save.sh

rep="/var/www/clients/client1/web2/vs-dev"
rep_script="/var/www/clients/client1/web2/vs-script"
#echo $rep
rep_antislash="\/var\/www\/clients\/client1\/web2\/vs-dev\/"
#echo $rep_antislash
#for i in `find /iso/sites/codes-libres/paquets/_plugins_/ -mtime -1 | grep -v .svn`; do echo $i | cut -d"/" -f7 | sort -d  ; done > ./changement0.txt
#uniq ./changement0.txt ./changement.txt

#while read line
#do
#cp -ra /iso/sites/codes-libres/paquets/_plugins_/$line* /iso/sites/codes-libres/visual-drupal/
#done < ./changement.txt 

mkdir ./tmp/spip -p
#find /iso/sites/codes-libres/visual-drupal/ -iname ".svn" -exec rm -rf {} \;

#if [ $# -eq "1" ]   #  Le nombre d'arguments passés au script
                        #+ est-il correct ?
#then
#| grep ":" | awk '{print $1}'
ls -d $rep/[$prendre]*  | sed  "s/$rep_antislash//g" | sed  's/://g' > tmp/repi.txt
#fi
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
#echo rep vide

else
echo $line >> tmp/repi0.txt
#echo rep bon
fi

done < tmp/repi.txt

cat tmp/repi0.txt  | grep -v "#" > tmp/repa.txt
cat tmp/repi0.txt  | grep -v "#" >> tmp/repisql.txt

#echo "0" > ./rub
#echo "2" > ./num

./php2html.sh $rep && ./html2php.sh && ./php2sql.sh $rep_script

if [ ${nettoyer:-0} = "1" ]
then
rm -rf ./html
rm -rf ./tmp
rm -rf ./sql

rm -rf ./j
rm -rf ./rub
rm -rf ./num
fi
