echo "<h3>3. Les fichiers HTML ($nbhtml)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php

if [ "$nbhtml" == "0" ];
then 
echo "<font color="red">Pas de fichiers HTML dans ce plugin</font>" >> tmp/spip/page-$1-$h.php
echo "pas de fichiers html a parser"

elif [ "$nbhtml" -lt "10" ];
then
echo "moins de 10 article a parser"
echo "<?php">> tmp/spip/page-$1-$h.php
while read line
do
echo "echo '<p name="$line">[#$line<-]$line - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p>';" >> tmp/spip/page-$1-$h.php
echo "\$geshi2->set_header_content('Debut du fichier "$line"');" >> tmp/spip/page-$1-$h.php
echo "\$geshi2->set_footer_content('Fin du fichier "$line"');" >> tmp/spip/page-$1-$h.php 
echo "\$geshi2->load_from_file(\"/iso/sites/codes-libres/dezip-clean/$line\", \$lookup);" >> tmp/spip/page-$1-$h.php
echo "echo \$geshi2->parse_code();" >> tmp/spip/page-$1-$h.php
done < tmp/fichiers-html-$1.txt
echo "?>" >> tmp/spip/page-$1-$h.php

j=$[ $h + 1 ]
echo $j > ./j

elif [ "$nbhtml" -gt "10" ];
then
echo "Plus de 10 fichier html a parser dans $1"
ii=1
echo "j $j"
echo "h $h"
num_article_plug=$ii
nbpagehtml0=$[($nbhtml) / 5]
nbpagehtml=$[($nbpagehtml0) + 1]
echo "nombre page html "$nbpagehtml
nbarticle=$[ $h + $nbpagehtml ]
debh=$[ $h + 1]

echo "nart_html $nart"
position=$nart

for i in `seq $debh $nbarticle`; do echo "<p>[#art$i<-][Voir les fichiers HTML, Partie $num_article_plug->art""$nart""]</p>" >> tmp/spip/page-$1-$h.php && num_article_plug=$[ $num_article_plug +1 ] && nart=$[ $nart +1 ] && echo "position dans la boucle html  $nart";done
while read line
do
echo "j $j"
echo "h $h"
j=$h
j=$position
echo $j > ./j


if  [ "$ii" -eq "4" ];
then
echo "egale a 4 dans html"
echo "<p name="$line">[$line->article$position#$line]</p>" >> tmp/spip/page-$1-1.php
position=$[ $position + 1]
h=$[ $h + 1 ]
ii=0
else
echo "Dans html pas egale a 4 position: "$position
echo "<p name="$line">[$line->article$position#$line]</p>" >> tmp/spip/page-$1-1.php
ii=$[ $ii + 1 ]
fi

rub=`cat ./rub`
echo "<p>[Retour au sommaire du plugin->rub$rub][#haut<-]" >> tmp/spip/page-$1-$j.php
echo "<p>[Retour haut de page->#haut]" >> tmp/spip/page-$1-$j.php
echo "<?php
//
// Include the GeSHi library//
include_once './geshi/geshi.php'; 

// Create a GeSHi object//
\$geshi2 = new GeSHi(\$source, \$language);

	 \$geshi2->set_header_type(GESHI_HEADER_PRE_VALID);
	// \$geshi2->enable_classes();
     \$geshi2->enable_line_numbers(GESHI_LINE_NUMBERS_NONE);
     \$geshi2->set_overall_style('font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;', false);
    \$geshi2->set_line_style('color: #003030;', 'font-weight: bold; color: #003030;', true);
    \$geshi2->set_code_style('color: #000020;', true);

    \$geshi2->set_header_content_style('font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;');

    // You can use <TIME> and <VERSION> as placeholders
    \$geshi2->set_footer_content_style('font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;');" >> tmp/spip/page-$1-$j.php
echo "echo '<p>[#$line<-]<h3>$line</h3> - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->article$p#tree] - [Retour &agrave; la liste des fonctions->article$p#outil_sommaire_8]</p>';" >> tmp/spip/page-$1-$j.php
echo "\$geshi2->set_header_content('Debut du fichier "$line"');" >> tmp/spip/page-$1-$j.php
echo "\$geshi2->set_footer_content('Fin du fichier "$line"');" >> tmp/spip/page-$1-$j.php 
echo "\$geshi2->load_from_file(\"/iso/sites/codes-libres/dezip-clean/$line\", \$lookup);" >> tmp/spip/page-$1-$j.php
echo "echo \$geshi2->parse_code();" >> tmp/spip/page-$1-$j.php
echo "?>" >> tmp/spip/page-$1-$j.php

echo "fin_html "$nart
echo $nart > ./num
done < tmp/fichiers-html-$1.txt

j=$[ $j + 1 ]
echo "jhtml $j"
echo $j > ./j

fi
h="1"
echo "<hr/>"  >> tmp/spip/page-$1-$h.php
