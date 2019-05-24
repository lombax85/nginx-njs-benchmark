#!/bin/bash
docker stop test-nginx-container
docker rm test-nginx-container
docker run --name test-nginx-container -v $(pwd)/config/nginx.conf:/etc/nginx/nginx.conf:ro -v $(pwd)/html:/usr/share/nginx/html -p 81:81 -d nginx
