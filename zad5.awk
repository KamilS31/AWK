#!/bin/awk -f

NF < 11 {print; next}

{
	delete OryginalT
	for(i=1; i<=NF; ++i){
		OryginalT[i]=$i
		}

	oldNF=NF; NF=10;
	for(i=1; i<=oldNF; i=i+10){
		for(j=1; j<=10; ++j){
			$j=OryginalT[i-1+j]
			}
	print $0 	# Printuje cala linie a dlugosc tej lini jest zdefiniowana w NF	
		}
}