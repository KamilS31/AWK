{
	for(i=1; i<=NF; ++i){
		if($i>0){
			suma[i]++
		}
	}
}
END{
	for(i in suma){
		printf "%-6s", suma[i]
	}
	printf "\n"
}
