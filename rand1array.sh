1. Write a program in the following steps
a. Generates 10 Random 3 Digit numbers.
b. Store these random numbers into an array.
c. Then find the 2nd largest and the 2nd smallest element without sorting the array.


for(( i=0; i<size; i++))
do
    array[i]=$(( RANDOM % 900 + 100 ))
done
echo "Random numbers are: " ${array[@]}
for(( i = 0; i < 9 ; i++ ))
do

    for(( j = 0; j < 9; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp

        fi
    done

done

echo "The second largest number is ${array[8]}"
echo "The second smallest number is ${array[1]}"

