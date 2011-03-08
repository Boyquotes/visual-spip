echo "<h3>7. Les autres fichiers .txt .svnrevision ($nbautres)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php

if [ $nbautres == 0 ];
then echo "<font color="red">Pas de fichiers AUTRES dans ce plugin</font>" >> tmp/spip/page-$1-$h.php
else 
echo "<?php">> tmp/spip/page-$1-$h.php
while read line
do
echo "echo '<p>[#$line<-]$line - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p>';" >> tmp/spip/page-$1-$h.php
echo "\$geshi2->set_header_content('Debut du fichier "$line"');" >> tmp/spip/page-$1-$h.php
echo "\$geshi2->set_footer_content('Fin du fichier "$line"');" >> tmp/spip/page-$1-$h.php 
echo "\$geshi2->load_from_file(\"/iso/sites/codes-libres/dezip-clean/$line\", \$lookup);" >> tmp/spip/page-$1-$h.php
echo "echo \$geshi2->parse_code();" >> tmp/spip/page-$1-$h.php
done < tmp/fichiers-autres-$1.txt
echo "?>" >> tmp/spip/page-$1-$h.php
fi
echo "<hr/>"  >> tmp/spip/page-$1-$h.php
