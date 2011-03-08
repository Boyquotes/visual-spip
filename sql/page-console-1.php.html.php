<?php $var = file_get_contents('html/page-console-1.php.html', true);
$ins_var=utf8_encode(addslashes($var));
$titre=addslashes("console-Page-1");
$var3="INSERT INTO `spipvisual`.`spip_articles` ( `id_rubrique`, `titre`, `texte`, `statut`, `date`)  VALUES ( 1, '".$titre."', '".$ins_var."', '".publie."', '2011-03-06')";
echo $var3;
?>
