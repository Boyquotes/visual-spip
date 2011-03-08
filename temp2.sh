while read line
do
ls sql/page-$line-[0-9].*sql >> ./repohtml.sql
ls sql/page-$line-[0-9][0-9].*sql >> ./repohtml.sql
done < repa.txt
