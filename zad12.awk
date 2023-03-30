{
	for(i=1; i<=NF; ++i){ 
		if($i+0==$i){ 
			if($i>-2.5 && $i<=2.5){
				sum_k[i]+=$i 
				L[i]++
			} 
		}
	} 
} 
END{
	for (i in sum_k){
		print sum_k[i]/L[i]
	} 
}