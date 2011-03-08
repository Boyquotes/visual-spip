echo "<h3>8. Les images ($nbimg)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php

if [ $nbimg == 0 ];
then echo "<font color="red">Pas d'images dans ce plugin</font>" >> tmp/spip/page-$1-$h.php
else 
while read line
do
echo "<p>[#$line<-]$line - <img src=\"$site_racine/trac_plugin.png\" width="15px" height="15px"/>[Voir ce fichier sur le trac de spip-> $trac/$line] <img src=\"$site_racine/arrow-download.png\" width="15px" height="15px"/>[Telecharger le fichier->$trac/$line?format=txt]</p>" >> tmp/spip/page-$1-$h.php
echo "<p>" >> tmp/spip/page-$1-$h.php
echo "<img src=\"$site_tout_court/dezip-clean/$line\"/>" >> tmp/spip/page-$1-$h.php
echo "</p>" >> tmp/spip/page-$1-$h.php
done < tmp/fichiers-img-$1.txt
fi
echo "<hr/>"  >> tmp/spip/page-$1-$h.php
