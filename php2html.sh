#!/bin/bash

#rm -rf ./html
#rm -rf ./tmp
#rm -rf ./sql
#echo "" > repohtml.txt
#echo "" > repohtml.sql
#mkdir -p tmp/spip
#mkdir html
#mkdir sql
#echo "" >j
#echo 1 > ./j

#cat /iso/sites/codes-libres/dezip-clean/liste_plug_svn | sed 's/.zip//g' > /iso/sites/codes-libres/dezip-clean/repa.txt
#tail -100 /iso/sites/codes-libres/dezip-clean/liste_plug_svn | sed 's/.zip//g' > /iso/sites/codes-libres/dezip-clean/repa.txt
#ls -l /iso/sites/codes-libres/paquets/_plugins_/ | grep ^d | awk '{print $8}' > /iso/sites/codes-libres/dezip-clean/repa.txt
#ls /iso/sites/codes-libres/paquets/_plugins_/a* | grep ":" | awk '{print $1}' | sed  's/\/iso\/sites\/codes-libres\/paquets\/_plugins_\///g' | sed  's/://g' > /iso/sites/codes-libres/dezip-clean/repa.txt

while read line
do
./pages2spip2.sh $line $1/$line
done < tmp/repa.txt

#ls tmp/spip/ > repophp.txt

#while read line
#do
#fichier=`echo $line | sed 's/tmp\/spip\///g'`
#echo $line $fichier
#/usr/bin/php -q  tmp/spip/$line >>   html/$fichier.html
#done < repophp.txt
