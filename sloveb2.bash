+#!/bin/sh 
 +if [ $1 -eq 0 ] ; then 
 +	if [ $2 -eq 0 ] ; then 
 +		if [ $3 -eq 0 ] ; then 
 +			echo "phuong trinh vo so nghiem "
 +		else 
 +			echo " phuong trinh vo nghiem "
 +		fi
 +	else 
 +		echo -n " phuong trinh co 1 nghiem phan biet "
 +		x=$(echo "scale=2; -$3 / $2" | bc ) 
 +		echo $x
 +	fi
 +else	
 +	denta=`expr $2 \* $2 - 4 \* $1 \* $3 `
 +	if [ $denta -lt 0 ] ; then 
 +		echo " phuong trinh vo nghiem "
 +	elif [ $denta -eq 0 ] ; then 
 +		echo -n " phuong trinh co mot nghiem kep x = "
 +		x=$(echo "scale=2; -$2 / (2 * $1)" | bc ) 
 +# viet khong cach sau dau = ( sau toan tu phai cach ra ) nho ( |bc )
 +# scale = $ -> lay bao nhieu chu so thap phan 
 +		echo "$x"
 +	else
 +		echo " phuong trinh co 2 nghiem phan biet "
 +		x1=$(echo "scale=2; -($2 + sqrt($denta))/(2*$1)" | bc)
 +		echo "x1= $x1"
 +		x2=$(echo "scale=2; -($2 - sqrt($denta))/(2*$1)" | bc)
 +		echo "x2= $x2"
 +	fi
 +fi
 +exit 0 # thuc thi lenh thanh cong 
 +# exit 1 -> thuc thi lenh ko thanh cong