BEGIN { # wartość domyślna
	if( MX < 1 ) MX = 20 
}
	NR > MX { exit }
	NF == 0
	NF == 1 { $2=$3=$1 } 
	NF == 2 { $3=$4=$2 ; $2=$1 } 
	NF > 2 { $1=toupper($1) ; $NF=toupper($NF)
	for(j=2; j<NF; ++j) $j=tolower($j) 
	print
}
