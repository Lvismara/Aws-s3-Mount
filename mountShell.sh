#!/bin/bash
RET=1
until [ ${RET} -eq 0 ]; do
	s3fs -o allow_other,uid=1000,gid=1000,umask=027 prealta /devops/prealta_files/ -o passwd_file=/.passwd-s3fs 
	RET=$?
    	sleep 2
done
