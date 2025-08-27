### openssl encrypt/decrypt bash scripts

<code>dependencies:</code><br>
>openssl<br> 


<note:><br>
on top of the password,<br>
the PBKDF2 iteration count can be used as a key (optional)<br>
<i>default PBKDF2 iterations value is 10,000</i>

<code>usage:</code><br>

>encrypt

	/$ bash enc.sh myfile.txt
	/$ key (iteration count):
	{your_iteration_count}
	/$ enter AES-256-CBC encryption password:
	{your_password}
	/$Verifying - enter AES-256-CBC encryption password:
	{your_password}
encrypt to file: <code>myfile.txt_enc</code>

>decrypt

	/$ bash dec.sh myfile.txt_enc
	/$ key (iteration count):
	{your_iteration_count}
	/$ enter AES-256-CBC decryption password:
	{your_password}

<i>decrypt to file:</i> <code>myfile.txt_enc_dec</code>


