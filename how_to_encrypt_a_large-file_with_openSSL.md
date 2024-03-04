# How to Encrypt a Large File with OpenSSL

[How to Encrypt a Large File with OpenSSL](http://tinyurl.com/ypggez3l).

1. Overview

There are generally two types of encryption – secret-key or symmetric encryption and public-key or asymmetric encryption.

In this tutorial, we’ll focus on these encryption methods and how to use them to encrypt large files with OpenSSL.
2. Setup

Let’s create a sample large file using the fallocate command:

$ fallocate -l 900M sample.txt

This creates a 900 MB text file, and we used the -l flag to represent the length of the file in bytes. We’ll use this file throughout this tutorial.

The fallocate command also accepts sizes in human-readable formats like Kilobytes (K), Megabytes (M), and Gigabytes (G).

We can now add some text to the file using the echo command:

$ echo "Encryption and decryption of large files with OpenSSL on Baeldung!!!" >> sample.txt

3. Symmetric Encryption and Decryption

This is a type of encryption where only one secret key or password is used to encrypt and decrypt a file or any electronic information.

We’ll be using the AES (Advanced Encryption Standard) symmetric-key encryption algorithm. It supports cryptographic keys (secret keys) of 128, 192, and 256 bits to encrypt and decrypt data in blocks of 128 bits.

AES uses simple algebraic calculations, and every block of data is always encrypted the same way, which makes it ideal for encrypting large files. However, this simplicity makes it more vulnerable to brute-force attacks compared to more advanced algorithms like RSA.
3.1. Encryption

We can use this command to encrypt the sample.txt file:

$ openssl enc -aes-256-cbc -pbkdf2 -p -in sample.txt -out sample.txt.enc

We’ll get a prompt to input a password to encrypt the file. We’ll be using this password every time we need to decrypt the file.

This creates an encrypted output file named sample.txt.enc.

Here’s a breakdown of the command above:

    enc: performs symmetric key encryption
    -aes-256-cbc: cipher algorithm, AES with key size 256 bits in CBC-mode
    -pbkdf2: uses PBKDF2 algorithm with default iteration count unless otherwise specified
     -p: used to print out the salt, key and IV used
    -in & -out: represents the input file and output file, respectively

We can use the cat command to verify that the content on the output file is encrypted:

$ cat sample.txt.enc

���'I`Y��<��;|`/A�:1���.��Q"�T��1`)v��s��AXӏ�
��oBɼ7:����j�:                               4ΐ��@�eQ�g�J����q��%��
...truncated

We can also use a key file to encrypt our file. This is a file that contains encryption keys or license keys.

First, we need to create a key-file:

$ openssl rand 214 > symmetric_keyfile.key

After the key-file is generated, we can encrypt the sample file:

$ openssl enc -in sample.txt -out sample.txt.enc -e -aes256 -pbkdf2 -kfile symmetric_keyfile.key

3.2. Decryption

We need to use the password we entered while encrypting to decrypt our sample.txt.enc file.

Let’s use this command to decrypt the file:

$ openssl aes-256-cbc -d -pbkdf2 -in sample.txt.enc -out sample_decrypted.txt

We’re passing in the -d to decrypt the file.

We’ll get a prompt to enter the password, and once we do, the sample_decrypted.txt file will be created.

Let’s verify the contents of the decrypted file:

$ cat sample_decrypted.txt

Encryption and decryption of large file with OpenSSL on Baeldung

In cases where we used a key-file to encrypt our file, we can decrypt it with this command:

$ openssl enc -in sample.txt.enc -out sample_decrypted.txt -d -aes256 -k symmetric_keyfile.key

4. Asymmetric Encryption & Decryption

This is a type of encryption where we encrypt and decrypt information using shared keys.

There are many asymmetric encryption algorithms available. Here, we’ll be using the RSA (Rivest–Shamir–Adleman) algorithm, which is an industry standard.

RSA is a very resource-intensive algorithm because it performs operations on relatively large prime numbers to encrypt the data, and every block is encrypted differently. This makes it unideal for encrypting large files because it’ll take too much time to perform all those calculations on each block.

As a rule of thumb, we should only encrypt data as large as the RSA key length when encrypting with RSA.

Although RSA is not ideal for encrypting large files, we can use it to encrypt a key file generated from the standard AES symmetric encryption.

Let’s look at how we can combine both AES and RSA to encrypt large files efficiently with more security.
4.1. Encryption

First, we need to generate a private key:

$ openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

    genpkey: generates the private key
    -algorithm RSA: sets RSA as the public key algorithm
    -pkeyopt: set the public key algorithm option opt to value. In our case, it allows us to define the number of bits to use.
    rsa_keygen_bits:2048: limits the length of the private key to 2048 bits

We can verify the contents of the private_key.pem file generated:

$ cat private_key.pem

-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC4Du/lM5d8/jym
DaJud6oi5fbZcro3u7q7wa2JNbTXBtCbamCAdsBdss3jkbSN0shjRdK1X7GWfgsv
...truncated...

Next, we need to generate a public key for the private key we generated:

$ openssl rsa -pubout -in private_key.pem -out public_key.pem
writing RSA key

We are passing the private_key.pem file as input.

We can similarly view its contents using the cat command as we did with the private key above.

Next, we need to encrypt our sample.txt file using a key-file generated using symmetric encryption as we did earlier.

Let’s encrypt the key-file output above using the public key we generated:

$ openssl rsautl -encrypt -inkey public_key.pem -pubin -in symmetric_keyfile.key -out symmetric_keyfile.key.enc

Here, we’ve used the rsautl flag to encrypt the data using the RSA algorithm.

This command generates a symmetric_keyfile.key.enc file. Attempting to view the contents of this file only prints out random characters and numbers.
4.2. Decryption

To decrypt the file, we first need to use the private key we generated to decrypt the key-file:

$ openssl rsautl -decrypt -inkey private_key.pem -in symmetric_keyfile.key.enc -out symmetric_keyfile.key

This command outputs the symmetric_keyfile.key file.

We can now use it to decrypt the large file through the regular AES decryption command:

$ openssl enc -in sample.txt.enc -out sample_decrypted.txt -pbkdf2 -d -aes256 -kfile symmetric_keyfile.key

We can also use the private key to encrypt our file, then use the public key to decrypt it. This method is actually used as part of creating a CSR (Certificate Signing Request) file and having it signed.
5. Conclusion

In this article, we’ve looked at how to encrypt and decrypt a large file using OpenSSL. We discussed  symmetric and asymmetric encryption methods and how to use each method to encrypt or decrypt a large file.

We also learned that while symmetric encryption is faster and asymmetric encryption is more secure, each method on its own is not ideal for encrypting large files. For large files, using them together makes optimal use of each type’s strengths.
