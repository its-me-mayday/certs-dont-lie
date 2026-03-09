#!/bin/bash

source .env

mkdir -p outputs

openssl genrsa -out outputs/${MY_PRIVATE_KEY_NAME}.pem 2048
openssl rsa -in outputs/${MY_PRIVATE_KEY_NAME}.pem -text -noout
