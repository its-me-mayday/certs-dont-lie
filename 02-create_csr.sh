#!/bin/bash

source .env
bash 01-export_public_key.sh

openssl req -new -key outputs/${MY_PRIVATE_KEY_NAME}.pem -out outputs/${MY_CERTIFICATE_SIGNING_REQUEST_NAME}.csr -subj "/C=IT/ST=Lazio/L=Rome/O=MyCompany/CN=mysite.xyz"
openssl req -in outputs/${MY_CERTIFICATE_SIGNING_REQUEST_NAME}.csr -text -noout
