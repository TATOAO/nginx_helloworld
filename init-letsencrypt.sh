#!/bin/bash

# Create required directories
mkdir -p certbot/conf/live/localhost

# Generate self-signed certificate
openssl req -x509 -nodes -newkey rsa:4096 -days 365 \
    -keyout certbot/conf/live/localhost/privkey.pem \
    -out certbot/conf/live/localhost/fullchain.pem \
    -subj "/CN=localhost" \
    -addext "subjectAltName = DNS:localhost"

# Set proper permissions
chmod -R 755 certbot/conf 