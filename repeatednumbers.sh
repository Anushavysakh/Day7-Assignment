5. Take a range from 0– 100, find the digits that are repeated twice like 33, 77,
etc and store them in an array

n=0
index=0
declare -a array
for((  i=1; i<=100; i++ ))
do
        if [ $i -ge 11 ]
        then
                n=$i
                sum=0
                reminder=0
                while [ $n -gt 0 ]
                do
                        reminder=$(($i%10))
                        sum=$((($sum*10)+$reminder))
                        n=$(($n/10))

                done

                if [ $(($i)) -eq $sum ]
                then
                        array[$index]=$i;
                        echo "${array[$index]}"
                fi
        fi

done
