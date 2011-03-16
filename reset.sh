#!/bin/bash
rm -rf ./html/page-[a-d]*
rm -rf ./html/page-[d-m]*
rm -rf ./html/page-[n-z]*
rm -rf ./html

rm -rf ./tmp/spip/*
rm -rf ./tmp

rm -rf ./sql/page-[a-d]*
rm -rf ./sql/page-[d-m]*
rm -rf ./sql/page-[n-z]*
rm -rf ./sql/


mkdir ./html
mkdir -p ./tmp/spip
mkdir ./sql
