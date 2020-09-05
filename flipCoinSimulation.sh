echo welcome to flip coin simulation problem !

i=0
headCount=0
tailCount=0

while [[ $headCount -lt 21 ]] && [[ $tailCount -lt 21 ]]
do
randomNum=$((RANDOM%2))

if [[ $randomNum -eq 0 ]]
then
	headCount=$((headCount+1))
else
	tailCount=$((tailCount+1))
fi
i=$(($i+1))
done

echo "head :"$headCount 
echo "tail :" $tailCount 

if [ $headCount -eq 21 ]
then
	wonBy=$(($headCount-$tailCount))
	echo "head won by:" $wonBy
elif [ $tailCount -eq 21 ]
then
	wonBy=$(($tailCount-$headCount))
	echo "tail won by:" $wonBy
elif [ $headCount -eq $tailCount ]
then
	echo "tie"
fi
