# OPENSSL

## Show

Full list of standard commands
```
openssl list-standard-commands
```

Secret key algorithms available
```
openssl list-cipher-commands
```

## Check

### Certificate chain

Open a secure connection and print screens full of information about this connection.

```
openssl s_client -connect www.godaddy.com:443

openssl s_client -connect www.godaddy.com:443 -showcerts

```

## Generate

### Public and private key (RSA algo)

create pub and priv keys (an RSA key of 1024 bits)
```
openssl genrsa -out key.pem 1024
```
generate separate pub key for the file above
```
openssl rsa -in key.pem -pubout -out pub-key.pem
```

## Encrypt/Decrypt

### With pwd

If you wanted to encrypt the text "Hello World!" with the AES algorithm using CBC mode and a 256-bit key, you would do as follows:
```
touch plain.txt
echo "Hello World!" > plain.txt
openssl enc -aes-256-cbc -in plain.txt -out encrypted.bin
//enter aes-256-cbc encryption password: example
//Verifying - enter aes-256-cbc encryption password: example
```

You'll be prompted to enter a password from which the 256-bit secret key will be computed. In the above example, the password example is used, but you should have stronger passwords. You should now have a binary file called encrypted.bin that you can decrypt as follows:
```
openssl enc -aes-256-cbc -d -in encrypted.bin -pass pass:example
// Hello World!
```


### With public and private keys (RSA algo)





