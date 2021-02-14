#!/bin/bash

echo '-----BEGIN PRIVATE KEY-----' > privkey.pem 
echo $PRIVKEY | sed -e 's/\s\+/\n/g' >> privkey.pem 
echo '-----END PRIVATE KEY-----' >> privkey.pem