#!/bin/awk -f

NF==0 {NR--; next} 	# pomijanie pustych wierszy
NR%2==1{
	LZ=split($0,znaki,"")
	for(i in znaki){
		if(znaki[i] ~ /[[:upper:]]/){
			znaki[i]="*"	
		}
	}
	for(i in znaki){
		printf znaki[i]	
	}
	print ""
	next
}
NR%2==0{
	for(i=1; i<=NF; ++i){
		if(length($i)%2==0){
			delete S
			L=split($i,S,"")
			$i=""
			for(j in S){
				if(S[j] ~ /[A-Za-z]/){ # Trzeba dodac polskie znaki
					$i=$i "_"	
				}

			}
		}
	}
	#print A
	print $0	
}