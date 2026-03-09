#!/bin/bash

source .env

openssl genrsa -out outputs/ca_falsa_chiave.pem 2048
openssl req -new -x509 -key outputs/ca_falsa_chiave.pem -out outputs/ca_falsa.pem -days 365 \
  -subj "/C=IT/O=CAFalsa/CN=CAFalsa-Root"
