{
	delete Tab
	for(i=1; i<=NF; ++i){
		if($i+0==$i){
			if($i<0){
				$i=(-$i)
				Tab[i]=($i-int($i))
			}else{
				Tab[i]=($i-int($i))
			}
		}
	}
	N=asort(Tab)
	if(length(Tab)==0){
		printf "%-6s", "---"
	}else{
		printf "%-6s", Tab[N]
	}
}
END{ printf "\n"}
