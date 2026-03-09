#!/bin/bash

source .env

openssl s_server -cert outputs/${FINAL_CERTIFICATE_NAME}.pem -key outputs/${MY_PRIVATE_KEY_NAME}.pem -port 4433 -www
