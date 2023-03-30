{
	for(i=1; i<=NF; ++i){
		#if($i>=0 && $i ~ /^[0-9]+$/){
		if($i>=0 && $i+0==$i){ 
			NU[i]++
		}
	}
}
{
	for(i=1; i<=NF; ++i){
		if($i%2!=0 && int($i)==$i){ 
			NP[i]++
		}
	}
}
END{
	for(i in NU){
		printf "%-2s", "k" i " -> " NU[i] " " 
	}
	printf "\n\n"
	for(i in NP){
		printf "%-2s", "k" i " -> " NP[i] " "
	}
	printf "\n"
}