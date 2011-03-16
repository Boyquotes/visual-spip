#!/bin/bash
rm -rf $1/sql
mkdir $1/sql
rm -rf ./tmp/repohtml.*

rub="0"
art="0"
date_jour=`date +%Y-%m-%d`

while read line
do
ls html/page-$line-[0-9].* >> ./tmp/repohtml.txt
ls html/page-$line-[0-9][0-9].* >> ./tmp/repohtml.txt
ls html/page-$line-[0-9][0-9][0-9].* >> ./tmp/repohtml.txt
ls html/page-$line-[0-9][0-9][0-9][0-9].* >> ./tmp/repohtml.txt
ls html/page-$line-[0-9][0-9][0-9][0-9][0-9].* >> ./tmp/repohtml.txt
done < tmp/repisql.txt


while read line
do
fichier0=`echo $line | sed 's/tmp\/spip\///g'`
fichier=`echo $fichier0  | sed 's/html\///g'`
new_titre01=`echo $line | sed 's/.php.html//g' | sed 's/page-//g'`
new_titre0=`echo $new_titre01 | sed 's/html\///g'`
new_titre=`echo $new_titre0 | cut -d"-" -f1 `
echo "$new_titre $ancien"
if [ "$new_titre" = "$ancien" ];
then
echo ""

else
echo "<?php " >> sql/$fichier-rub.php
echo "\$titre=addslashes(\"$new_titre\");" >> sql/$fichier-rub.php
echo "\$var3=\"INSERT INTO \`spipvisual\`.\`spip_rubriques\` ( \`titre\`, \`id_secteur\`, \`statut\`, \`date\`)  VALUES ( '\".\$titre.\"', 0 , '\".publie.\"', '$date_jour')\";" >> sql/$fichier-rub.php
echo "echo \$var3;" >> sql/$fichier-rub.php
echo "?>" >> sql/$fichier-rub.php
php -q  sql/$fichier-rub.php >>	 sql/$fichier-rub.sql
rub=$[ $rub + 1 ]
fi

num=`echo ${fichier:(-13)} | cut -d"-" -f2 | sed 's/.php.html//g'`

titre00=`echo $fichier | sed 's/.php.html//g' | sed 's/page-//g'`
titre0=`echo $titre00 | cut -d"-" -f1`
art=`echo $titre00 |cut -d"-" -f2`
titre=`echo "$titre0-Page-$art"`
echo $titre
echo $titre0
echo $titre00
echo "<?php \$var = file_get_contents('$line', true);
\$ins_var=utf8_encode(addslashes(\$var));" >> sql/$fichier.php
echo "\$titre=addslashes(\"$titre\");" >> sql/$fichier.php
echo "\$var3=\"INSERT INTO \`spipvisual\`.\`spip_articles\` ( \`id_rubrique\`, \`titre\`, \`texte\`, \`statut\`, \`date\`)  VALUES ( $rub, '\".\$titre.\"', '\".\$ins_var.\"', '\".publie.\"', '$date_jour')\";" >> sql/$fichier.php
echo "echo \$var3;" >> sql/$fichier.php
echo "?>" >> sql/$fichier.php

php -q  sql/$fichier.php >>	 sql/$fichier.sql

ancien=$titre0
done < tmp/repohtml.txt

while read line
do
ls sql/page-$line-[0-9].*sql >> ./tmp/repohtml.sql
ls sql/page-$line-[0-9][0-9].*sql >> ./tmp/repohtml.sql
ls sql/page-$line-[0-9][0-9][0-9].*sql >> ./tmp/repohtml.sql
ls sql/page-$line-[0-9][0-9][0-9][0-9].*sql >> ./tmp/repohtml.sql
ls sql/page-$line-[0-9][0-9][0-9][0-9][0-9].*sql >> ./tmp/repohtml.sql
done < tmp/repisql.txt

#Vider la table avant reimport
mysql -u spipvisual --password="spipvisual"  spipvisual < $1/erase.sql

#Importer tous les nouveaux articles
while read line
do
mysql -u spipvisual --password="spipvisual"  spipvisual < $line
done < ./tmp/repohtml.sql
