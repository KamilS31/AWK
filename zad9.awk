{
	gsub(/[[:punct:]]/, "", $0)
	gsub(/[[:space:]]/, "", $0)
	$0=tolower($0)
	split($0, Tab, "")
	for(i in Tab){ 
		Number[Tab[i]]++
	}
}
END{
	for(i in Number){
		print i " : " Number[i] 
	}
}
