#!/bin/bash
gcc mini_server.c -o mini_server -lpthread -lfcgi 
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n mini_server