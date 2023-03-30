{
	delete T
	if(NR%2==1){
		S1=length($1)
		S2=length($2)
		print $0
	}else if(NR%2==0){
		delete T[1]
		delete T[2]
		for(i=1; i<=S1; ++i){
			T[1]=T[1] "-"
		}
		for(j=1; j<=S2; ++j){
		T[2]=T[2] "-"
		}
		printf(T[1] " " T[2] " " $0 "\n") 
	}
}