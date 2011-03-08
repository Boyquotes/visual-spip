echo "<h3>10. Les bases de donn&eacute;es ($nbbase)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php

if [ $nbbase == 0 ];
then echo "<font color="red">- Pas de cr&eacute;ation de tables dans la base de donn&eacute;es.</font>" >> tmp/spip/page-$1-$h.php
else
echo "<p><b>Cr&eacute;ation de Table(s) dans la base</b>   - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p>" >> tmp/spip/page-$1-$h.php
echo "<p><b>$nbbase</b> Table(s) cr&eacute;er par le fichier [$nom_fichier_crea_base->#$nom_fichier_crea_base]<br/>" >> tmp/spip/page-$1-$h.php
cat tmp/fichiers-bases-$1.txt | sed -e 's/$/<\/b><br\>/g' -e 's/^/- /g'>> tmp/spip/page-$1-$h.php
echo "</p>" >> tmp/spip/page-$1-$h.php
nbFmysql=`grep -w function $nom_fichier_crea_base | wc | awk ' {print $1 }'`
if [ $nbFmysql != 0 ];
then
echo "<p>" >> tmp/spip/page-$1-$h.php
grep -w function $nom_fichier_crea_base | cut -d"(" -f1 >> tmp/function-mysql-$1.txt
echo "<p> Nombres de fonctions agissant sur le(s) table(s): <b>$nbFmysql</b> </p>" >> tmp/spip/page-$1-$h.php
cat tmp/function-mysql-$1.txt | sed 's/$/<br\/>/g'>> tmp/spip/page-$1-$h.php
echo "</p>" >> tmp/spip/page-$1-$h.php
fi

echo "<p> Structure de(s) table(s) $line :</p>" >> tmp/spip/page-$1-$h.php

grep -n array $nom_fichier_crea_base | grep -v table| grep -v interface |  cut -d":" -f1 | sed 's/:/ /g' >> tmp/lFctMysql-$1.txt
cat tmp/lFctMysql-$1.txt |  uniq |sort -no  tmp/lFctMysql-$1.txt
#~ sed -i '$!N;s/\n/ /' tmp/lFctMysql-$1.txt

while read line
do
grep -n "$line =" $nom_fichier_crea_base |cut -d":" -f1  >> tmp/lFctMysql-$102.txt
done < tmp/fichiers-bases-$1.txt

cat tmp/lFctMysql-$102.txt | uniq >> tmp/lFctMysql-$1-2.txt

i=1
while read line
do
debut0=`echo $line`
debut=$(($debut0+1))
fin00=`grep -n $line tmp/lFctMysql-$1.txt |cut -d":" -f1|bc`
fin0=$(($fin00 + 1))
echo $fin0
fin01=`sed ''"$fin0"','"$fin0"'!d' tmp/lFctMysql-$1.txt`
fin=$(($fin01-2))
echo $debut
echo $fin
nbchamps=`sed "$debut,$fin!d"  $nom_fichier_crea_base  | grep -vi KEY | grep -v } | grep -v ^// | grep -v return | grep -v interface | grep -v \& | grep -v tables | sed -e 's/);//g' -e 's/array(//g' -e 's/=//g' -e '/./!d' -e 's/\"/<br\/>/' | grep ">" |wc | awk '{print $1}'`
echo "<p>" >> tmp/spip/page-$1-$h.php
echo "La table " >> tmp/spip/page-$1-$h.php
echo "<b>" >> tmp/spip/page-$1-$h.php
head -$debut $nom_fichier_crea_base | tail -1 | cut -d"=" -f1 | sed 's/\$//g' >> tmp/spip/page-$1-$h.php
echo "</b>" >> tmp/spip/page-$1-$h.php
echo "comporte <b>$nbchamps</b> champs" >> tmp/spip/page-$1-$h.php
sed "$debut,$fin!d"  $nom_fichier_crea_base  | grep -vi KEY | grep -v } | grep -v ^// | grep -v return | grep -v interface | grep -v \& | grep -v tables | sed -e 's/);//g' -e 's/array(//g' -e 's/=//g' -e '/./!d' -e 's/\"/<br\/>/' >> tmp/spip/page-$1-$h.php
echo "</p>" >> tmp/spip/page-$1-$h.php
echo "<br/>" >> tmp/spip/page-$1-$h.php
i=$(($i+1))
done < tmp/lFctMysql-$1-2.txt
fi

if [ $nbUpgradeMysql != 0 ];
then 
echo "<p>[fBASUP<-]<b>- Modification de table(s) existante(s) dans la base SPIP et/ou mise &agrave; jour de(s) table(s) du plugin effectu&eacute;e par le(s) fichier(s):</a></b></p>" >> tmp/spip/page-$1-$h.php

while read line
do
echo "[$line->#$line]<br/>" >> tmp/spip/page-$1-$h.php
done < tmp/fichiers-modifbase-$1.txt
echo "</p>" >> tmp/spip/page-$1-$h.php
fi

echo "<hr/>"  >> tmp/spip/page-$1-$h.php