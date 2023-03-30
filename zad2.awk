{
	gsub(/[[:punct:]]/, "")
	for(i=1; i<=NF; ++i){
		T[i]=length($i)
	}
	L=asort(T,Tab)
	max=Tab[L]
	for(i=1; i<=NF; ++i){
		kropki=max-length($i)
		if(kropki%2==0){
			for(j=1; j<=kropki/2; ++j){ printf "." }
			printf "%s", $i
			for(j=1; j<=kropki/2; ++j){ printf "." }
			printf " "
		}else{
			for(k=1; k<=int(kropki/2); ++k){ printf "." }
			printf "%s", $i
			for(k=1; k<=int(kropki/2)+1; ++k){ printf "." }
			printf " "
		}
	}
	print ""
}
