#!/bin/bash

source .env
bash  03-ca_signs_certificate.sh

# verify that the certificate is signed from your CA
openssl verify -CAfile outputs/${CA_PUBLIC_KEY_NAME}.pem outputs/${FINAL_CERTIFICATE_NAME}.pem

# see keys: public key in certificate must be your private key
openssl x509 -in outputs/${MY_PUBLIC_KEY_NAME}.pem -pubkey -noout | md5sum
openssl rsa -in outputs/${MY_PRIVATE_KEY_NAME}.pem -pubout | md5sum
