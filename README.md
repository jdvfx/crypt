#openssl encrypt/decrypt bash scripts

<dependencies:><br>
-openssl<br>


<note:><br>
on top of the password,<br>
the PBKDF2 iteration count can be used as a key (optional)<br>
<i>default PBKDF2 iterations value is 10,000</i>

<usage:><br>

encrypt

	/$ bash enc.sh myfile.txt
	/$ key:
	{your_iteration_count}
	/$ password:
	{your_password}

-encrypt to a file named: <code>myfile.txt_enc</code>

decrypt

	/$ bash dec.sh myfile.txt_enc
	/$ key:
	{your_iteration_count}
	/$ password:
	{your_password}

-decrypt to a file named: <code>myfile.txt_enc_dec</code>


