#!/bin/bash
echo -n "Введите a: "
read a
echo -n "Введите b: "
read b
echo -n "Введите c: "
read c
discr=$(echo "$b*$b-4*$a*$c" | bc)
if [ "$discr" -eq "0" ]
then echo -n "x1=x2="
  echo "scale=2;-1*$b/$a/2.0" | bc
fi
if [ "$discr" -gt "0" ]
then echo -n "x1 = "
 echo "scale=2;(-1*$b+sqrt($discr))/(2*$a)" | bc
 echo -n "x2 = "
 echo "scale=2;(-1*$b-sqrt($discr))/(2*$a)" | bc 
fi
if [ "$discr" -lt "0" ]
then 
     fist=$(echo "scale=2;-1*$b/2/$a" | bc)
     seod=$(echo "scale=2;sqrt(-1*$discr)/2/$a" |bc)
     echo -n "x1 = "
     echo "$fist" "+" "$seod""i"
     echo -n "x2 = "
     echo "$fist" "-" "$seod""i"
fi
exit 0
