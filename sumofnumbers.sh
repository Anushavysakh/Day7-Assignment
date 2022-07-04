4. Write a Program to show Sum of three Integer adds to ZERO


arr=( 3 -1 -7 -4 -5 9 10)
len=${#arr[@]}
echo $len
for((  i=0; i<$len; i++ ))
do
   for((  j=1+1; j<$len; j++ ))
   do
     for((  k=j+1; k<$len; k++ ))
     do
         if [ $((${arr[i]}+${arr[j]}+${arr[k]}))  -eq 0 ]
         then
              echo "${arr[i]} ${arr[j]} ${arr[k]}"
         fi
     done
   done
done
