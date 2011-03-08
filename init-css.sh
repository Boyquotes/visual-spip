echo "<h3>5. Les Feuilles de Style CSS ($nbcss)</h3><br>" >> tmp/spip/page-$1-$h.php
echo "<p><img src="../go-up.png" alt="retour sommaire" title="Retour au sommaire" />[Retour au sommaire->#sommaire]</p>" >> tmp/spip/page-$1-$h.php

if [ "${nbcss:-0}" = "0" ];
then echo "<font color="red">Pas de fichiers CSS dans ce plugin</font>" >> tmp/spip/page-$1-$h.php

else 

echo "<?php">> tmp/spip/page-$1-$h.php

while read line
do
echo "echo '<p>[#$line<-]$line - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p>';" >> tmp/spip/page-$1-$h.php
echo "\$geshi2->load_from_file(\"/iso/sites/codes-libres/dezip-clean/$line\", \$lookup);" >> tmp/spip/page-$1-$h.php
echo "echo \$geshi2->parse_code();" >> tmp/spip/page-$1-$h.php
done < tmp/fichiers-css-$1.txt
echo "?>" >> tmp/spip/page-$1-$h.php
fi

echo "<hr/>"  >> tmp/spip/page-$1-$h.php
