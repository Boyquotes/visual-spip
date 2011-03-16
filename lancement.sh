#!/bin/bash
prendre=$1
#echo $prendre

for i in `find /iso/sites/codes-libres/paquets/_plugins_/ -mtime -1 | grep -v .svn`; do echo $i | cut -d"/" -f7 | sort -d  ; done > ./changement0.txt
uniq ./changement0.txt ./changement.txt

while read line
do
cp -ra /iso/sites/codes-libres/paquets/_plugins_/$line* /iso/sites/codes-libres/dezip-clean/
done < ./changement.txt 


find /iso/sites/codes-libres/dezip-clean/ -iname ".svn" -exec rm -rf {} \;

if [ $# -eq "1" ]   #  Le nombre d'arguments passés au script
                        #+ est-il correct ?
then
ls /iso/sites/codes-libres/paquets/_plugins_/[$prendre]* | grep ":" | awk '{print $1}' | sed  's/\/iso\/sites\/codes-libres\/paquets\/_plugins_\///g' | sed  's/://g' > repi.txt
fi

#Remise a zero des fichiers
> repi0.txt
> repa.txt
> tmp/fait

while read line
do
xml_ou_pas=`ls $line/plugin.xml`

if [ ${xml_ou_pas:-mot} == 'mot' ]
then
echo '#'$line >> repi0.txt
#echo rep vide

else
echo $line >> repi0.txt
#echo rep bon
fi

done < repi.txt

cat repi0.txt  | grep -v "#" > repa.txt
cat repi0.txt  | grep -v "#" >> repisql.txt

#echo "0" > ./rub
#echo "2" > ./num

./php2html.sh 
#&& ./php2sql.sh
