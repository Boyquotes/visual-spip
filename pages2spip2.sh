#!/bin/bash
nom=$1
rep=$2

source init.sh
echo init_geshi >> tmp/fait-$1.txt
source init-geshi.sh
echo presentation >> tmp/fait-$1.txt
source init-presentation.sh
echo php >> tmp/fait-$1.txt
source init-php.sh
echo html2 >> tmp/fait-$1.txt
source init-html2.sh
echo xml >> tmp/fait-$1.txt
source init-xml.sh
echo css >> tmp/fait-$1.txt
source init-css.sh
echo js2 >> tmp/fait-$1.txt
source init-js2.sh
echo autres >> tmp/fait-$1.txt
source init-autres.sh
echo img >> tmp/fait-$1.txt
source init-img.sh
echo fct >> tmp/fait-$1.txt
source init-fct.sh
echo sql >> tmp/fait-$1.txt
source init-sql.sh
echo end >> tmp/fait-$1.txt
source end.sh

echo "[Retour au sommaire->#sommaire]"  >> tmp/spip/page-$1-$h.php
echo $1 >> tmp/faits
