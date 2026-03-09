#!/bin/bash

source .env

openssl verify -CAfile outputs/ca_falsa.pem outputs/${FINAL_CERTIFICATE_NAME}.pem
