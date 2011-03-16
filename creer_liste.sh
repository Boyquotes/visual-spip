#!/bin/bash
ls [a-z]*/ | grep ":" | cut -d":" -f1 | cut -d"/" -f1 > liste.txt
rm -rf repa.txt
rm -rf liste0.txt

while read line
do
xml_ou_pas=`ls $line/plugin.xml`

if [ ${xml_ou_pas:-mot} == 'mot' ]
then
echo '#'$line >> liste0.txt
#echo rep vide

else
echo $line >> liste0.txt
#echo rep bon
fi

done < liste.txt

cat liste0.txt  | grep -v "#" > repa.txt

