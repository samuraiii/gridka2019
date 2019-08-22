#!/bin/sh
cert=/etc/httpd/hostcert.pem
key=/etc/httpd/hostkey.pem
openssl ecparam -name secp521r1 -genkey -param_enc explicit -out $key
openssl req -new -x509 -key $key -out $cert -days 60 -subj "/C=XX/L=dev/O=null/CN=*"
