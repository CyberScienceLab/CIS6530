cd data
for f in 'malware' 'benign'
do
	echo 'Extracting "'$f'" OpCodes...'
	rm $f/*'.opcode'
	for filename in $f/*
		do
		objdump -d $filename -m i386 >> $filename'.opcode'
		done
done


