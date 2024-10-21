#!/bin/bash
gcc mini_server.c -o mini_server -lfcgi 
spawn-fcgi -p 8080 ./mini_server
service nginx start
/bin/bash