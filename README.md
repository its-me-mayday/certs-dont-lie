# certs-dont-lie
> Certs-Dont-Lie is a small hands-on lab that demonstrates how TLS trust actually works under the hood.
[!IMAGE](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExdWFrOW95cjhoeTFsM2djdXg2OWYzNXNxMWtsbWh1cnpteGMzandwOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/j4lJOuwvAzyRcnWrFi/giphy.gif)

## Steps
- Step 1: Generated a 2048-bit RSA private key
- Step 2: Extracted the public key and created the CSR
- Step 3: The CA signed the certificate (365 days)
- Step 4: TLS 1.3 connection successfully verified
- Step 5: Demonstrated that a fake CA cannot deceive the system
