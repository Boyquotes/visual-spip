echo "Derni&egrave;re modification du code sur trac: il y a <b>$dernier_modif_trac</b><br/>"  >> tmp/spip/page-$1-$h.php
echo "[#sommaire<-]" >> tmp/spip/page-$1-$h.php

if [ -z $icon  ];
then
echo "<img src=\"$site_racine/spip.png\" width=\"200px\"/>" >> tmp/spip/page-$1-$h.php
else
echo "<img src=\"$site_racine/dezip-clean/$2/$icon\"/>" >> tmp/spip/page-$1-$h.php
fi
echo "<hr/>" >> tmp/spip/page-$1-$h.php

echo "<a href=\"$trac/$1\" rel="nofollow"><img src=\"$site_racine/trac_plugin.png\" width="30px" height="30px"/>Voir ce plugin sur le Trac SPIP</a><br />" >> tmp/spip/page-$1-$h.php
echo "<a href=\"$site_racine/$zip_plugins/$1.zip\"><img src=\"$site_racine/download_plugin.jpg\" width="30px" height="30px"/>T&eacute;l&eacute;charger ce plugin</a><br/>"  >> tmp/spip/page-$1-$h.php

echo "<a href=\"$contrib_recherche&quot;plugin+$1&quot;\" rel="nofollow"><img src=\"$site_racine/spip_contrib.png\" width="30px" height="30px"/>Rechercher ce plugin sur spip-contrib<br /><small> ( Si la page n'existe pas, cr&eacute;ez-vous un compte sur spip-contrib et participer &agrave; la documentation de spip )</a></small>"  >> tmp/spip/page-$1-$h.php


echo "<hr/>" >> tmp/spip/page-$1-$h.php

echo  "<div id="menu_fixe">
Plugin:<br/ >
<b>$1</b>
<ul>
<li><img src="../go-next_15.png" />
[Sommaire->#sommaire]
</li>
<li><img src="../go-next_15.png" />
[R&eacute;pertoire et fichiers->#tree]
</li> " >> tmp/spip/page-$1-$h.php
echo "<li><img src="../go-next_15.png" />
[Fonctions PHP->#fFCT]
</li> " >> tmp/spip/page-$1-$h.php
echo "<li>
<a href=\"$site_racine/$zip_plugins/$1.zip\"><img src=\"$site_racine/download_plugin.jpg\" width="20px" height="20px"/>T&eacute;l&eacute;charger ce plugin</$
</li>"   >> tmp/spip/page-$1-$h.php
echo "<li>
<a href=\"$trac/$1\" rel="nofollow"><img src=\"$site_racine/trac_plugin.png\" width="20px" height="20px"/>Voir sur le Trac SPIP</a>
</li>" >> tmp/spip/page-$1-$h.php
#echo "Sites: <br />" >> tmp/spip/page-$1-$h.php
#echo "<li><img src="../go-next_10.png" />
#<a href=\"$site_internet\"/>Voir tous les plugins</a>
#</li> " >> tmp/spip/page-$1-$h.php
echo "</div>" >> tmp/spip/page-$1-$h.php

if [  -z "$auteur" ];
then echo "<font color="red">Pas d'auteur du plugin disponibles</font>" >> tmp/spip/page-$1-$h.php
else
echo "<p><b> Auteur du plugin $1 :</b><html>$auteur</html></p>" >> tmp/spip/page-$1-$h.php
fi

if [ -z "$description" ];
then echo "<font color="red">Pas de description du plugin disponible</font>" >> tmp/spip/page-$1-$h.php
else
echo "<p><b> Description du plugin $1:</b></p>" >> tmp/spip/page-$1-$h.php
echo "<html>$description</html>" >> tmp/spip/page-$1-$h.php
fi
echo "<hr/>" >> tmp/spip/page-$1-$h.php
echo "<h3>1. Arborescence du Plugin</h3><br>" >> tmp/spip/page-$1-$h.php
cat tmp/tree-HTML-$1.txt >> tmp/spip/page-$1-$h.php
echo "<hr/>"  >> tmp/spip/page-$1-$h.php
