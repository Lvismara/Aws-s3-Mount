#!/bin/bash
RETURN_VAL=1
while [ "$RETURN_VAL" != "0" ]
do
	sudo s3fs -o allow_other,uid=1000,gid=1000,umask=027 prealta /devops/prealta_files/ -o passwd_file=/.passwd-s3fs -o dbglevel=info -o curldbg
	RETURN_VAL= $?
	sleep 5
done
