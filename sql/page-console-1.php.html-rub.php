<?php 
$titre=addslashes("console");
$var3="INSERT INTO `spipvisual`.`spip_rubriques` ( `titre`, `id_secteur`, `statut`, `date`)  VALUES ( '".$titre."', 0 , '".publie."', '2011-03-06')";
echo $var3;
?>
