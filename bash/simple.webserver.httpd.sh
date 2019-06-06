#!/bin/bash
(echo -e "HTTP/1.1 200 OK\nContent-Type: text/html\n\n Hello World";) | nc -v -l 8888
