function doSubmit(){
	 var val = document.getElementById('pwd').value; //assign password to a variable
	 var rkEncryptionKey = CryptoJS.enc.Base64.parse('u/Gu5posvwDsXUnV5Zaq4g==');
	 var rkEncryptionIv = CryptoJS.enc.Base64.parse('5D9r9ZVzEYYgha93/aUK2w==');
	 var utf8Stringified = CryptoJS.enc.Utf8.parse(val);
	 var encrypted = CryptoJS.AES.encrypt(utf8Stringified.toString(), rkEncryptionKey, 
	{mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7, iv: rkEncryptionIv});
	 document.myform.pwd.value = encrypted.ciphertext.toString(CryptoJS.enc.Base64);
	form.submit();
	}