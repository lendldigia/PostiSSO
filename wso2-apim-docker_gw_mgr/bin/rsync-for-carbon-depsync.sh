#!/bin/sh
 
manager_server_dir=/home/wso2carbon/wso2am-2.1.0/repository/deployment/server
pem_file=~/.ssh/carbon-440-test.pem
 
 
#delete the lock on exit
#trap 'rm -rf /var/lock/depsync-lock' EXIT
 
#mkdir /tmp/carbon-rsync-logs/
 
#keep a lock to stop parallel runs
#if mkdir /var/lock/depsync-lock; then
#  echo "Locking succeeded" >&2
#else
#  echo "Lock failed - exit" >&2
#  exit 1
#fi
  
WORKERS=" \
wso2carbon@wso2-gatewayworker-node:/home/wso2carbon/wso2am-2.1.0/repository/deployment \
 
for gatewayWrk in ${WORKERS}
do
echo ================================================== #>> /tmp/carbon-rsync-logs/logs.txt;
echo Syncing $gatewayWrk;
     rsync --delete -arv $manager_server_dir $gatewayWrk #>> /tmp/carbon-rsync-logs/logs.txt
echo ================================================== #>> /tmp/carbon-rsync-logs/logs.txt;
done