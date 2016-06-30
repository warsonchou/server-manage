#!/bin/bash
# This program shows monitor the npm server.
# History:
# 20016/6/30 zhouguocheng First release 
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

monitorNpmServer = $(curl -s localhost:4873 > /dev/null && echo success || echo fail | grep "success")

if [ "$monitorNpmServer" == "success" ]; then
	#statements
	echo It is ok!
else
	echo It is not ok!
	# restart the server
	sudo docker start sinopia
	echo npmServer

fi