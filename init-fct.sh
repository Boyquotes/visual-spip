echo "<h3><a name=\"fFCT\"></a>9. Les Fonctions PHP ($nbFctTotalPhp)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php
sed -i 's/function/\<br\/\>function/g' tmp/function-php-$1.txt
cat tmp/function-php-$1.txt >> tmp/spip/page-$1-$h.php
echo "<hr/>"  >> tmp/spip/page-$1-$h.php