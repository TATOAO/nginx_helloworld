# FastAPI with Nginx and Certbot Docker Compose Project

This is a simple Docker Compose project that sets up a FastAPI application with Nginx as a reverse proxy and Certbot for SSL certificates.

## Project Structure

```
.
├── app/
│   └── main.py
├── nginx/
│   └── nginx.conf
├── certbot/
│   ├── conf/
│   └── www/
├── Dockerfile
├── docker-compose.yml
└── requirements.txt
```

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Create the required directories:
   ```bash
   mkdir -p certbot/conf certbot/www
   ```

2. Start the services:
   ```bash
   docker-compose up -d
   ```

3. Access the application:
   - HTTP: http://localhost
   - HTTPS: https://localhost (after setting up SSL)

## Setting up SSL with Certbot

To set up SSL certificates with Certbot, you'll need to:

1. Replace `localhost` in the nginx.conf with your actual domain name
2. Run the following command to obtain SSL certificates:
   ```bash
   docker-compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot -d yourdomain.com
   ```

## Development

- The FastAPI application is located in `app/main.py`
- Nginx configuration is in `nginx/nginx.conf`
- To rebuild the containers after making changes:
  ```bash
  docker-compose up -d --build
  ```
