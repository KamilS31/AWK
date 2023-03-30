NF==0 {next}
{
	delete A
	printf("%s", $0 "\n")
	L=split($0, znaki, "")
	for(i in znaki){
		if(znaki[i] ~ /[AEIOUaeiou]/){ 
			printf "%s", "*"
		}else if(znaki[i] ~ /[[:punct:]]/){
			printf "%s","^"
		}else{
			printf "%s", " "
		}
	}
	printf "\n\n"
}