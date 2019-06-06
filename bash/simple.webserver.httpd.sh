#!/bin/bash

##############################################
# Simple WebServer on Bash
# httpd on bash
#
# example for Mykolaiv Classical Liceum
##############################################

echo "Web server started..."

while true;
	do
	(
		VARHTML=$(echo "Hello World!")
		VARHTMLLENGTH=$(echo $VARHTML | wc -m)

		echo -e "HTTP/1.1 200 OK\nContent-Type: text/html\nContent-Length: $VARHTMLLENGTH\n\n $VARHTML";
	) | netcat -vv -l 8888;
	done
