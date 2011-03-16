#!/bin/bash
date=`date +%Y-%H-%m`
base=visual

mysqldump -u visual --password="visual" --opt $base > ./$base-$date.sql
