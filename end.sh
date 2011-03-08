numbers=`cat ./num`
echo $numbers
num=$[ $numbers + 1 ]
echo $num > ./num
echo "$1 fait" >> tmp/fait-$1.txt
echo " $num fin"
cat tmp/fait-$1.txt
