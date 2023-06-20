#!/bin/bash

openssl req -x509 -new -nodes -sha256 -utf8 -days 3650 -newkey rsa:2048 -keyout server.key -out server.crt -config ssl.conf
openssl pkcs12 -export -in server.crt -inkey server.key -out server.pfx
openssl pkcs12 -in ./server.pfx -clcerts -nokeys -out ./nginx.crt
openssl pkcs12 -in ./server.pfx -nocerts -nodes -out ./nginx.key