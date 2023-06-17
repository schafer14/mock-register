openssl req -new -newkey rsa:2048 -keyout server.key -sha256 -nodes -out server.csr -config server.cnf
openssl req -in server.csr -noout -text
openssl x509 -req -days 3600 -in server.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out server.pem -extfile server.ext
openssl pkcs12 -inkey server.key -in server.pem -export -out server.pfx -password pass:#M0ckRegister#
openssl pkcs12 -in server.pfx -noout -info -password pass:#M0ckRegister#
