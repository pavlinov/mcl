#!/bin/bash

########################################################################
# Simple WebServer on Bash                                             #
# httpd on bash                                                        #
#                                                                      #
# example for Mykolaiv Classical Liceum                                #
#                                                                      #
# Copyright: (c) 2019 Mykolaiv Classical Liceum. All rights reserved.  #
# Author: Alexey Pavlinov                                              #
########################################################################

echo "Web server started..."

while true;
	do
	(
		VARHTML=$(cat simple.webserver.httpd.files/index.html) # `echo "Hello World!"` can be replaced to `cat index.html`
		VARHTMLLENGTH=$(echo $VARHTML | wc -m)

		echo -ne "HTTP/1.1 200 OK\n";
		echo -ne "Content-Type: text/html\n";
		echo -ne "Content-Length: $VARHTMLLENGTH\n";
		echo -ne "\n\n";
		echo -ne $VARHTML;
	) | netcat -vv -l 8888;
	done
