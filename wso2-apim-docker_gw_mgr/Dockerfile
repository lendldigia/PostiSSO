FROM sugupta/wso2am:2.1.0

COPY conf/ /home/wso2carbon/wso2am-2.1.0/repository/conf/
COPY components/ /home/wso2carbon/wso2am-2.1.0/repository/components/
COPY wso2start.sh /home/wso2carbon/wso2am-2.1.0/bin/
COPY rsync-for-carbon-depsync.sh /home/wso2carbon/wso2am-2.1.0/bin/
COPY synapse-configs/default/api/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/api/
COPY synapse-configs/default/sequences/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/sequences/
COPY deployment/server/jaggeryapps/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/
#COPY deployment/server/jaggeryapps/admin/site/conf/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/admin/site/conf/
#COPY deployment/server/jaggeryapps/publisher/site/conf/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/publisher/site/conf/
COPY resources/  /home/wso2carbon/wso2am-2.1.0/repository/resources/