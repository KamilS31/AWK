NF==0 {print; NR=NR-1; next} 
NR%2==1{
	for(i=1; i<=NF; ++i){
		if(i%2==0){
			$i=toupper($i)
		}else{
			$i=tolower($i)
		}
	}
}
NR%2==0{
	delete T
	len=split($0, T, " ") 
	for(j=len; j>0; --j){
		Tnew[len-j+1]=T[j]
	}
	for(i=1; i<=len; ++i){
		$i=Tnew[i]
	}
}
{print $0}