#! /bin/bash

read -p "Number of times you want to flip a coin: " n;

	a=0;
	b=0;
	c=0;
	d=0;


doubletM1(){

	
		for ((i=0;i<n;i++))
		do
			coinM2=$((RANDOM%4))
			if [[ $coinM2 -eq 0 ]]
				then
				double[i]=HH;
				a=$(($a+1));
			elif [[ $coinM2 -eq 1 ]]; 
				then
				double[i]=TH;
				b=$(($b+1));
			elif [[ $coinM2 -eq 2 ]]
				then
				double[i]=HT;
				c=$(($c+1));
			else
				double[i]=TT;
				d=$(($d+1));
			fi	
		done
}
	
doubletM2(){

	for ((i=0;i<n;i++))
		do
			coin1=$((RANDOM%2))
			coin2=$((RANDOM%2))
		if [[ $coin1 -eq 0 ]] && [[ $coin2 -eq 0 ]]
			then
			double[i]=HH;
			a=$(($a+1));
		elif [[ $coin1 -eq 0 ]] && [[ $coin2 -eq 1 ]]; 
			then
			double[i]=TH;
			b=$(($b+1));
		elif [[ $coin1 -eq 1 ]] && [[ $coin2 -eq 0 ]]
			then
			double[i]=HT;
			c=$(($c+1));
		else
			double[i]=TT;
			d=$(($d+1));
		fi	
	done	
}

printer(){
	echo "                                       ";
	echo "Doublet combinations are (${double[*]})";
	wHH=$(($(($a*100))/$n)) 
	wTH=$(($(($b*100))/$n)) 
	wHT=$(($(($c*100))/$n))
	wTT=$(($(($d*100))/$n)) 

	echo "=======================================";
	echo "HH win % is = $wHH %";
	echo "TT win % is = $wTT %";
	echo "TH win % is = $wTH %";
	echo "HT win % is = $wHT %";
	echo "=======================================";
}

doubletM1
# doubletM2
printer
