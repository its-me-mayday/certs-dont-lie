#!/bin/bash

source .env
bash 00-gen_keys.sh

openssl rsa -in outputs/${MY_PRIVATE_KEY_NAME}.pem -pubout -out outputs/${MY_PUBLIC_KEY_NAME}.pem
cat outputs/${MY_PUBLIC_KEY_NAME}.pem
