#!/bin/bash

source .env
bash 02-create_csr.sh 

# create CA private key
openssl genrsa -out outputs/${CA_PRIVATE_KEY_NAME}.pem 2048

# create ca self-signed certificate
openssl req -new -x509 -key outputs/${CA_PRIVATE_KEY_NAME}.pem -out outputs/${CA_PUBLIC_KEY_NAME}.pem -days 3650 \
  -subj "/C=IT/O=MyCA/CN=MyCA-Root"

# CA signs CSR and produce final certificate
openssl x509 -req -in outputs/${MY_CERTIFICATE_SIGNING_REQUEST_NAME}.csr \
  -CA outputs/${CA_PUBLIC_KEY_NAME}.pem -CAkey outputs/${CA_PRIVATE_KEY_NAME}.pem \
  -CAcreateserial -out outputs/${FINAL_CERTIFICATE_NAME}.pem -days 365

# inspect certificate
openssl x509 -in outputs/${FINAL_CERTIFICATE_NAME}.pem -text -noout
