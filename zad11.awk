{
	gsub(/[[:punct:]]/, "", $0)
	$0=tolower($0)
	for(i=1; i<=NF; ++i){
		if(length($i)>4){
			WordCount[$i]++
		}
	}
}
END{
	for(j in WordCount){
		if(WordCount[j]>2){
			Med[j] = WordCount[j]
		}
	}
	L_elem=asort(Med, MedSort) 
	if(L_elem%2==0){
		mediana=((MedSort[L_elem/2]+MedSort[(L_elem/2)+1])/2)
		print "Mediana: " mediana
	}else{
		mediana=MedSort[((1+L_elem)/2-1)]
		print "Mediana: " mediana
	}
	for(i in MedSort){
		suma += MedSort[i]
		#print MedSort[i] suma
	}
	srednia=suma/L_elem
	print "Srednia: " srednia
}