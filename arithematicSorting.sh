#!/bin/bash 

	read -p "Enter any number " a
	read -p "Enter any number " b
	read -p "Enter any number " c
declare -A  exppDict
 exp[1]=$a
 exp[2]=$b
 exp[3]=$c
 exp1=$(($(( ${exp[1]} + ${exp[2]} )) * ${exp[3]}  ))
 echo "a+b*c = "  $exp1
 exp2=$(( $(( ${exp[1]} * ${exp[2]} )) + ${exp[3]} ))
 echo "a*b+c = " $exp2
 exp3=$(( ${exp[3]} + $(( ${exp[1]}  + ${exp[2]} )) ))
 echo "c+a/b = " $exp3
 exp4=$(( $(( ${exp[1]} % ${exp[2]} )) + ${exp[3]} ))
 echo "a%b+c = " $exp4
exppDict["1"]=$exp1
exppDict["2"]=$exp2
exppDict["3"]=$exp3
exppDict["4"]=$exp4
echo ${exppDict[@]}

count1=0

for val in ${exppDict[@]}
do

 arr[((count1++))]=$val

done

for (( i=0; i<=4; i++))
 	do

		for (( j=$i; j<=4; j++))
		do
      		   if [[ ${arr[i]} -gt ${arr[j]} ]]
			then
						tmp=${arr[i]}
						arr[i]=${arr[j]}
						arr[j]=$tmp
			fi
	 	done
done
echo "sorted array Assending order " ${arr[@]}


for (( i=0; i<=4; i++))
   do
      for (( j=$i; j<=4; j++))
      do
               if [[ ${arr[j]} -gt ${arr[i]} ]]
         then
                  tmp=${arr[i]}
                  arr[i]=${arr[j]}
                  arr[j]=$tmp
         fi
      done
done

echo "sorted array Dessending order "  ${arr[@]}

