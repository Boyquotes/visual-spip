INSERT INTO `spipvisual`.`spip_articles` ( `id_rubrique`, `titre`, `texte`, `statut`, `date`)  VALUES ( 1, 'console-Page-1', 'Derni&egrave;re modification du code sur trac: il y a <b></b><br/>
[#sommaire<-]
<img src=\"http://www.codes-libres.org/spip.png\" width=\"200px\"/>
<hr/>
<a href=\"http://zone.spip.org/trac/spip-zone/browser/_plugins_/console\" rel=nofollow><img src=\"http://www.codes-libres.org/trac_plugin.png\" width=30px height=30px/>Voir ce plugin sur le Trac SPIP</a><br />
<a href=\"http://www.codes-libres.org/zip-plugins/console.zip\"><img src=\"http://www.codes-libres.org/download_plugin.jpg\" width=30px height=30px/>T&eacute;l&eacute;charger ce plugin</a><br/>
<a href=\"http://www.spip-contrib.net/spip.php?page=recherche&lang=fr&recherche=&quot;plugin+console&quot;\" rel=nofollow><img src=\"http://www.codes-libres.org/spip_contrib.png\" width=30px height=30px/>Rechercher ce plugin sur spip-contrib<br /><small> ( Si la page n\'existe pas, cr&eacute;ez-vous un compte sur spip-contrib et participer &agrave; la documentation de spip )</a></small>
<hr/>
<div id=menu_fixe>
Plugin:<br/ >
<b>console</b>
<ul>
<li><img src=../go-next_15.png />
[Sommaire->#sommaire]
</li>
<li><img src=../go-next_15.png />
[R&eacute;pertoire et fichiers->#tree]
</li> 
<li><img src=../go-next_15.png />
[Fonctions PHP->#fFCT]
</li> 
<li>
<a href=\"http://www.codes-libres.org/zip-plugins/console.zip\"><img src=\"http://www.codes-libres.org/download_plugin.jpg\" width=20px height=20px/>T&eacute;l&eacute;charger ce plugin</$
</li>
<li>
<a href=\"http://zone.spip.org/trac/spip-zone/browser/_plugins_/console\" rel=nofollow><img src=\"http://www.codes-libres.org/trac_plugin.png\" width=20px height=20px/>Voir sur le Trac SPIP</a>
</li>
</div>
<p><b> Auteur du plugin console :</b><html>
Fil, Booz et C&#233;dric
_ mail : fil@rezo.net
_ adaptation en plugin par booz@rezo.net
_ integration dans un flash/xml par cedric.morin@yterium.com
_ &#169; 2005-2008 - Distribu&#233; sous licence GNU/GPL</html></p>
<p><b> Description du plugin console:</b></p>
<html>
Console de supervision des fichiers log spip et sql, affich&#233;e en superposition dans l\'espace priv&#233; ou dans une popup ind&#233;pendante.</html>
<hr/>
<h3>1. Arborescence du Plugin</h3><br>
		<h1>[tree<-]<img src=\"../go-up.png\" alt=\"retour sommaire\" title=\"Retour au sommaire\" />[Retour au sommaire->#sommaire]</h1>
			<p><a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console\">#/var/www/clients/client1/web2/vs-dev/console</a>

<br>				   |-- <a class=\"DIR\" href=\"#/var/www/clients/client1/web2/vs-dev/console/exec/\">exec</a>
<br>				   |   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/exec/console.php\">console.php</a>
<br>				   |   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php\">console_ahah.php</a>
<br>				   |   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php\">console_popup.php</a>
<br>				   |   `-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php\">spiplog.php</a>
<br>				   |-- <a class=\"DIR\" href=\"#/var/www/clients/client1/web2/vs-dev/console/img_pack/\">img_pack</a>
<br>				   |   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/img_pack/console.as\">console.as</a>
<br>				   |   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/img_pack/console.fla\">console.fla</a>
<br>				   |   `-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/img_pack/console.png\">console.png</a>
<br>				   |-- <a class=\"DIR\" href=\"#/var/www/clients/client1/web2/vs-dev/console/inc/\">inc</a>
<br>				   |   `-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/inc/console.php\">console.php</a>
<br>				   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/console.html\">console.html</a>
<br>				   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/console.swf\">console.swf</a>
<br>				   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/console_boutons.php\">console_boutons.php</a>
<br>				   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/console_options.php\">console_options.php</a>
<br>				   |-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/logs.html\">logs.html</a>
<br>				   `-- <a class=\"NORM\" href=\"#/var/www/clients/client1/web2/vs-dev/console/plugin.xml\">plugin.xml</a>
		<br><br>
		</p>
		<p>

3 directories, 14 files
		<br><br>
		</p>
<hr/>
<h3>2. Les fichiers PHP (7)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
[#/var/www/clients/client1/web2/vs-dev/console/console_boutons.php<-]/var/www/clients/client1/web2/vs-dev/console/console_boutons.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/console_boutons.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/console_boutons.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/console_boutons.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/console_boutons.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/console_options.php<-]/var/www/clients/client1/web2/vs-dev/console/console_options.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/console_options.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/console_options.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/console_options.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/console_options.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php<-]/var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/exec/console.php<-]/var/www/clients/client1/web2/vs-dev/console/exec/console.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php<-]/var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php<-]/var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php</div></div>[#/var/www/clients/client1/web2/vs-dev/console/inc/console.php<-]/var/www/clients/client1/web2/vs-dev/console/inc/console.php - <div class=\"actions_fichier\"> <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/inc/console.php] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/inc/console.php?format=txt] <br /> <img src=\"http://www.codes-libres.org/menu.png\" width=15px height=15px/> [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - <img src=\"http://www.codes-libres.org/function.png\" width=25px height=22px/> [Retour &agrave; la liste des fonctions->#fFCT]</div><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/inc/console.php</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/inc/console.php</div></div><hr/>
<h3>3. Les fichiers HTML (2)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<p name=/var/www/clients/client1/web2/vs-dev/console/console.html>[#/var/www/clients/client1/web2/vs-dev/console/console.html<-]/var/www/clients/client1/web2/vs-dev/console/console.html - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/console.html</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/console.html</div></div><p name=/var/www/clients/client1/web2/vs-dev/console/logs.html>[#/var/www/clients/client1/web2/vs-dev/console/logs.html<-]/var/www/clients/client1/web2/vs-dev/console/logs.html - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/logs.html</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/logs.html</div></div><hr/>
<h3>4. Les fichiers XML (1)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<p>[#/var/www/clients/client1/web2/vs-dev/console/plugin.xml<-]/var/www/clients/client1/web2/vs-dev/console/plugin.xml - [Retour &agrave; la liste des r&eacute;pertoires et fichiers->#tree] - [Retour &agrave; la liste des fonctions->#fFCT]</p><div class=\"\" style=\"font: normal normal 90% monospace; color: #000066; border: 1px solid #d0d0d0; background-color: #f0f0f0;overscroll-x:scroll;\"><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-bottom: 1px solid #d0d0d0; padding: 2px;\">Debut du fichier /var/www/clients/client1/web2/vs-dev/console/plugin.xml</div><pre style=\"font: normal normal 1em/1.2em monospace; margin:0; padding:0; background:none; vertical-align:top;color: #000020;\">&nbsp;</pre><div style=\"font-family: sans-serif; color: #808080; font-size: 70%; font-weight: bold; background-color: #f0f0ff; border-top: 1px solid #d0d0d0; padding: 2px;\">Fin du fichier /var/www/clients/client1/web2/vs-dev/console/plugin.xml</div></div><hr/>
<h3>5. Les Feuilles de Style CSS (0)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<font color=red>Pas de fichiers CSS dans ce plugin</font>
<hr/>
<h3>2. Les fichiers Javascripts (0)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<font color=red>Pas de fichiers Javascripts dans ce plugin</font>
<hr/>
<h3>7. Les autres fichiers .txt .svnrevision (0)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<font color=red>Pas de fichiers AUTRES dans ce plugin</font>
<hr/>
<h3>8. Les images (1)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<p>[#/var/www/clients/client1/web2/vs-dev/console/img_pack/console.png<-]/var/www/clients/client1/web2/vs-dev/console/img_pack/console.png - <img src=\"http://www.codes-libres.org/trac_plugin.png\" width=15px height=15px/>[Voir ce fichier sur le trac de spip-> http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/img_pack/console.png] <img src=\"http://www.codes-libres.org/arrow-download.png\" width=15px height=15px/>[Telecharger le fichier->http://zone.spip.org/trac/spip-zone/browser/_plugins_//var/www/clients/client1/web2/vs-dev/console/img_pack/console.png?format=txt]</p>
<p>
<img src=\"http://www.codes-libres.org/dezip-clean//var/www/clients/client1/web2/vs-dev/console/img_pack/console.png\"/>
</p>
<hr/>
<h3><a name=\"fFCT\"></a>9. Les Fonctions PHP (52)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/console_boutons.php</b>: 3 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/console_boutons.php]
	<br/>function Console_ajouterBoutons($boutons_admin) 
	<br/>function Console_ajouterOnglets($flux) 
<br/>function Console_body_prive($flux)
</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php</b>: 4 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/exec/console_ahah.php]
<br/>function exec_console_ahah()
	<br/>function tail() 
		xmlhttp[\'log\'].onreadystatechange = <br/>function() 
	<br/>function switchAuto() 
</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/exec/console.php</b>: 3 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/exec/console.php]
<br/>function exec_console()
	$(document).ready(<br/>function()
		$(\'#belle_console\').click(<br/>function(e)
</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php</b>: 1 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/exec/console_popup.php]
<br/>function exec_console_popup()
</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php</b>: 1 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/exec/spiplog.php]
<br/>function exec_spiplog()
</p>
<p>
<b>/var/www/clients/client1/web2/vs-dev/console/inc/console.php</b>: 2 fonction(s) - [Voir le fichier->#/var/www/clients/client1/web2/vs-dev/console/inc/console.php]
<br/>function console_code_flash($width=\'300\',$height=\'600\')
<br/>function console_lit_log($logname)
</p>
<hr/>
<h3>10. Les bases de donn&eacute;es (0)</h3><br>
<p><img src=../go-up.png alt=retour sommaire title=Retour au sommaire />[Retour au sommaire->#sommaire]</p>
<font color=red>- Pas de cr&eacute;ation de tables dans la base de donn&eacute;es.</font>
<hr/>
[Retour au sommaire->#sommaire]
', 'publie', '2011-03-06')