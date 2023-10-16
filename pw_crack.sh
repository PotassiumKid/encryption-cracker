for pass in $(cat wordlist.txt);
do
	for i in $( openssl enc -list | tail +2);
		do $(openssl ${i:1} -d -pbkdf2 -in Level_2_Challenge.enc -out Level_2_Decryption_$i-$pass.txt -k $pass);
	done;
done;
