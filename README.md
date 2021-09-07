# Dockerized Flask Webcam

Dockerized version of [this repo](https://github.com/miguelgrinberg/flask-video-streaming)

Use with an automated [Nginx proxy](https://github.com/nginx-proxy/nginx-proxy), but more specifically for Raspberry Pi ([arm64](https://github.com/avidsapp/arm64-nginx-proxy)).

## Prerequisites

1. [RaspberryPi server](https://avidsapp.com/docker-flask-socket/server/README.md)
1. Docker and docker-compose

## Customize

`sudo cp .env.example .env && sudo nano .env`

## Usage

`docker-compose up -d`
