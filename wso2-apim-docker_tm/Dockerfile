FROM sugupta/wso2am:2.1.0

RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/inbound-endpoints/WebSocketInboundEndpoint.xml
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/inbound-endpoints/SecureWebSocketInboundEndpoint.xml
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/conf/registry.xml
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/conf/registry_TM.xml
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/conf/axis2/axis2.xml
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/conf/axis2/axis2_TM.xml
RUN rm -r /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/admin
RUN rm -r /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/portal
RUN rm -r /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/publisher
RUN rm -r /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/store
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/am#sample#calculator#v1.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/am#sample#pizzashack#v1.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/api#am#admin#v0.11.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/api#am#publisher#v0.11.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/api#am#store#v0.11.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/authenticationendpoint.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/client-registration#v0.11.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/oauth2.war
RUN rm /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/webapps/throttle#data#v1.war



COPY conf/ /home/wso2carbon/wso2am-2.1.0/repository/conf/
COPY components/ /home/wso2carbon/wso2am-2.1.0/repository/components/
COPY wso2start.sh /home/wso2carbon/wso2am-2.1.0/bin/
COPY synapse-configs/default/api/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/api/
COPY synapse-configs/default/sequences/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/sequences/
COPY resources/ /home/wso2carbon/wso2am-2.1.0/repository/resources/
#COPY deployment/server/jaggeryapps/store/site/conf/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/store/site/conf/
#COPY deployment/server/jaggeryapps/admin/site/conf/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/admin/site/conf/
#COPY deployment/server/jaggeryapps/publisher/site/conf/ /home/wso2carbon/wso2am-2.1.0/repository/deployment/server/jaggeryapps/publisher/site/conf/