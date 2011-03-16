#!/bin/bash
ls tmp/spip/ > repophp.txt

while read line
do
fichier=`echo $line | sed 's/tmp\/spip\///g'`
echo fichier spip-html /tmp/spip/$line vers fichier php html/$fichier
/usr/bin/php -q  tmp/spip/$line >>   html/$fichier.html
done < repophp.txt

