function guessing()
{
	count=$(ls -l | grep "^-" | wc -l)
	echo $count
	flag=0
	while [ $flag == 0 ]
	do
		echo "Please enter your guess"
		read number
		if [ $number -lt $count ]
		then
			echo "your guess is less"
		elif [ $number -gt $count  ]
	        then
			echo "your guess is greater"
		else
			echo "your guess is correct"
			$flag=1
			break
		fi
	done
}
echo "Guessing Game"
guessing
