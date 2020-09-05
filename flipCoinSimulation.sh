echo welcome to flip coin simulation problem !

randomNum=$((RANDOM%2))

if [[ $randomNum -eq 0 ]]
then
        echo HEAD
else
        echo TAIL
fi

echo multiple time flipping coin

i=0
headCount=0
tailCount=0

while [[ $i -lt 20 ]]
do
randomNum=$((RANDOM%2))

if [[ $randomNum -eq 0 ]]
then
	echo HEAD
	headCount=$((headCount+1))
else
	echo TAIL
	tailCount=$((tailCount+1))
fi
i=$(($i+1))
done

echo head won $headCount times
echo tail won $tailCount times
