+#In ra day vua nhap
 +echo "Ban muon nhap bao nhieu so ?"
 +read n
 +for((i=0;i < n; i++))
 +do
 +
 +echo -n "a[$i] = "
 +read a[$i]
 +
 +done
 +
 +echo "Day vua nhap la ${a[@]}"
 +tong=0
 +for((i=0;i < n; i++))
 +do
 +tong=$(( $tong + ${a[$i]}))
 +done
 +
 +echo "Tong la: $tong"
 +
 +for (( i = 0; i < $(($n-1)) ; i++ ))
 +do
 +    for (( j=i; j< n; j++ ))
 +    do
 +
 +   if [[ ${a[$i]} -gt ${a[$j]} ]]
 +    then 
 +    temp=${a[$i]}
 +    a[$i]=${a[$j]}
 +    a[$j]=$temp
 +    fi
 +    
 +    done
 +done
 +
 +echo "Day vua sap xep la ${a[@]}"