#!/bin/bash
nart="2"
trac="http://zone.spip.org/trac/spip-zone/browser/_plugins_"
site_racine="http://www.codes-libres.org"
site="http://www.codes-libres.org/paquets"
site_internet="http://www.codes-libres.org/"
site_tout_court="http://www.codes-libres.org"
zip_plugins="zip-plugins"
zip_themes="zip-themes"

log_trac="http://zone.spip.org/trac/spip-zone/log/_plugins_"
contrib_recherche="http://www.spip-contrib.net/spip.php?page=recherche&lang=fr&recherche="

nart=`cat ./num`
#echo "nart "$nart
#echo "plus "$nart
p=`cat ./j`
h="1"
rub=`cat ./rub`
rub=$[ $rub + 1]
echo $rub > ./rub
#echo rub $rub
touch tmp/spip/page-$1-$h.php

tree -fC --dirsfirst $2 -H \#$2 > tmp/tree-HTML-$1.txt
sed -i 's/\/\//\//g' tmp/tree-HTML-$1.txt
sed -i "s/Directory Tree/\[tree<-\]<img src=\"..\/go-up.png\" alt=\"retour sommaire\" title=\"Retour au sommaire\" \/>\[Retour au sommaire->#sommaire\]/g" tmp/tree-HTML-$1.txt
final=`wc tmp/tree-HTML-$1.txt | awk '{print $1 }'`
fin=$(($final-8))

finicon=`cat $2/plugin.xml | grep "</icon>" -n | cut -d : -f1 | tee -a tmp/ico_ou_pas-$1`
numicon=`wc tmp/ico_ou_pas-$1| awk '{ print $1 '} `
if [ $numicon -eq 0 ]
then
ico="0"
else
debut_icon=`grep -n "<icon>" $2/plugin.xml | cut -d : -f1`
#echo numm $finicon
#echo debb $debut_icon
ecart=$(($finicon-$debut_icon+1))
icon=`head -$finicon  $2/plugin.xml | tail -$ecart| sed -e 's/<[^>]*>//g' | sed 's/^[ \t]*//g' ` 
#echo ecart $ecart
#echo $icon
echo $icon  > tmp/ico-$1.txt
sed -i '/^$/d' tmp/ico-$1.txt
fi


finauteur=`cat $2/plugin.xml | grep "</auteur>" -n | cut -d : -f1 | tee -a tmp/auteur_ou_pas-$1`
numauteur=`wc tmp/auteur_ou_pas-$1| awk '{ print $1 '} `
echo nombre auteurs $numauteur
if [ "$numauteur" -eq "0" ]
then
aut="0"
else
debut_auteur=`grep -n "<auteur>" $2/plugin.xml | cut -d : -f1`
#echo numm $finauteur
#echo debb $debut_auteur
ecart=$(($finauteur-$debut_auteur+1))
auteur=`head -$finauteur  $2/plugin.xml | tail -$ecart| sed -e 's/<[^>]*>//g' | sed 's/^[ \t]*//g' ` 
echo $auteur > tmp/auteur-$1.txt
fi

findescription=`cat $2/plugin.xml | grep "</description>" -n | cut -d : -f1 | tee -a tmp/ico_ou_pas-$1`
numdescription=`wc tmp/ico_ou_pas-$1| awk '{ print $1 '} `
if [ $numdescription -eq 0 ]
then
desc="0"
else
debut_description=`grep -n "<description>" $2/plugin.xml | cut -d : -f1`
#echo numm $findescription
#echo debb $debut_description
ecart=$(($findescription-$debut_description+1))
description=`head -$findescription  $2/plugin.xml | tail -$ecart| sed -e 's/<[^>]*>//g' | sed 's/^[ \t]*//g' ` 
#echo $description
fi


#cat $2/plugin.xml| grep description -n | awk '{print $1}' | cut -d":" -f1 >> tmp/nb-desc-$1.txt
#ldesc=`head -1 tmp/nb-desc-$1.txt`
#ldesc2=`tail -1 tmp/nb-desc-$1.txt`
#sed "$ldesc,$ldesc2!d" $2/plugin.xml >> tmp/desc-$1.html
#desc=`cat tmp/desc-$1.html | wc | awk '{print $1}' | cut -d":" -f1`

find $2 -type f -name '*.php' | sort -d >>  tmp/fichiers-php-$1.txt
nbphp=`wc tmp/fichiers-php-$1.txt | awk '{ print $1 }'`
nbFctTotalPhp=`grep -w function $2 -R | wc | awk ' {print $1 }'`

find $2 -type f -name '*.html' | sort -d >>  tmp/fichiers-html-$1.txt
nbhtml=`wc tmp/fichiers-html-$1.txt | awk '{ print $1 }'`
#echo "$nbhtml fichiers HTML dans $1"

find $2 -type f -name '*.xml' | sort -d >>  tmp/fichiers-xml-$1.txt
nbxml=`wc tmp/fichiers-xml-$1.txt | awk '{ print $1 }'`
#echo "$nbxml fichiers XML dans $1"

find $2 -type f -name '*.css' | sort -d >>  tmp/fichiers-css-$1.txt
nbcss=`wc tmp/fichiers-css-$1.txt | awk '{ print $1 }'`
#echo "$nbcss fichier CSS dans $1"

find $2 -type f -name '*.js' | sort -d >>  tmp/fichiers-js-$1.txt
nbjs=`wc tmp/fichiers-js-$1.txt | awk '{ print $1 }'`
grep "text/javascript" $2 -R | cut -d":"  -f1 | uniq | sed 's/\.\///g ' >> tmp/fichiers-inclus-javascript-$1.txt
nbAppelJs=`wc tmp/fichiers-inclus-javascript-$1.txt | awk '{ print $1 }'`
#echo "$nbjs fichier JS dans $1"

#echo "$nbAppelJs fichier pas d appel JS dans $1"


find $2 -type f -name '*.txt' | sort -d >>  tmp/fichiers-autres-$1.txt
find $2 -type f -name '*.revision' | sort -d >>  tmp/fichiers-autres-$1.txt
nbautres=`wc tmp/fichiers-autres-$1.txt | awk '{ print $1 }'`
#echo "$nbautres fichier autres dans $1"

find $2 -type f -name '*.png' | sort -d >>  tmp/fichiers-img-$1.txt
find $2 -type f -name '*.gif'  | sort -d >>  tmp/fichiers-img-$1.txt
find $2 -type f -name '*.jpg'  | sort -d >>  tmp/fichiers-img-$1.txt
find $2 -type f -name '*.jpeg'  | sort -d >>  tmp/fichiers-img-$1.txt
find $2 -type f -name '*.ico'  | sort -d >>  tmp/fichiers-img-$1.txt
nbimg=`wc tmp/fichiers-img-$1.txt | awk '{ print $1 }'`
#echo "$nbimg fichier images dans $1"

grep  "'field' \=" $2/base/ -R  |uniq | grep \& | cut -d"$" -f2 | cut -d"," -f1 >> tmp/fichiers-bases-$1.txt
grep  "upgrade" $2/base/ -R  | cut -d":" -f1 |uniq  >> tmp/fichiers-modifbase-$1.txt
nbUpgradeMysql=`wc tmp/fichiers-modifbase-$1.txt | awk '{print $1 }'`
nbbase=`wc tmp/fichiers-bases-$1.txt | awk '{ print $1 }'`
sed -i -e 's/[ \t]*$//g' -e 's/^[ \t]*//g' tmp/fichiers-bases-$1.txt
nom_fichier_crea_base=`grep "'field' \=" $2/base/ -Rl`
nbTotalMysql=$(($nbbase+nbUpgradeMysql))
#echo "Nb de base "$nbTotalMysql

sed -i "30,"$fin"!d" tmp/tree-HTML-$1.txt
tree -fCA --dirsfirst $2 > tmp/tree-$1.txt

dernier_modif_trac=`wget -q -O - $log_trac/$2 | grep timeline | grep from | sed 's/<[^>]*>//g' | sed 's/^[ \t]*//g' | sed -e 's/hours/heures/g' -e 's/days/jours/g' -e 's/months/mois/g' -e 's/weeks/semaines/g' -e 's/years/annees/g' | head -1`

echo "fin init.sh"
echo ""
