3. Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output


read -p "Enter Numbers:" number
temp=$number
declare -a primefactors
index=0
isprime=1
for(( n=2; n<=$number; n++ ))
do
   for(( i=2; i<=n/2; i++ ))
   do
      if [[ $((n%i)) -eq 0 ]]
      then
          isprime=0
      fi
   done

if [[ $isprime -eq 1 ]]
then
     if [ $(($number%$n))  -eq 0 ]
     then
           number=$(($number/$n))
           primefactors[$index]=$n
           ((index++))
           n=1
     fi
fi
isprime=1
done


