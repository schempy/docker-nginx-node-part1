#!/usr/bin/env bash

cd ../

docker run \
	-d \
	--name "web" \
	-p 8080:80 \
	-v $(pwd)/web/src:/var/www \
	-v $(pwd)/config/nginx.conf:/etc/nginx/nginx.conf \
	--link nodejs:nodejs \
	nginx;
