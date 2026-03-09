#!/bin/bash

source .env

openssl s_client -connect localhost:4433 -CAfile outputs/${CA_PUBLIC_KEY_NAME}.pem
