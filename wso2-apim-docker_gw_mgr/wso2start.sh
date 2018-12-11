#export JAVA_OPTS="-Djava.util.prefs.systemRoot=${WSO2_SERVER_HOME}/preferences/.java -Djava.util.prefs.userRoot=${WSO2_SERVER_HOME}/preferences/.java/.userPrefs"
#export JAVA_OPTS=${JAVA_OPTS}" \
export JAVA_OPTS="
-Dposti.mysql.endpoint=distributedtest-wso2-poc.login.test.posti.fi \
-Dposti.cluster.hostname=api.ecosystem-a1.posti.fi \
-Dposti.cluster.mgthostname=manage.ecosystem-a1.posti.fi \
-Dposti.gatewayWorker.host=api.ecosystem-a1.posti.fi \
-Dposti.gatewayWorker.http.nio.port=80 \
-Dposti.gatewayWorker.https.nio.port=443 \
-Dposti.trafficManager.host=tm.wso2-test \
-Dposti.trafficManager.mgt.transport.https.port=9446 \
-Dposti.trafficManager.receiver.url.port=9614 \
-Dposti.trafficManager.auth.url.port=9714 \
-Dposti.trafficManager.jms.port=5675 \
-Dposti.gatewayManager.host=gm.wso2-test \
-Dposti.gatewayManager.mgt.transport.https.port=9445 \
-Dposti.gatewayManager.traffic.https.port=8245 \
-Dposti.keyManager.host=km.wso2-test \
-Dposti.keyManager.mgt.transport.https.port=9447 \
-Dposti.keyManager.client.type=WSClient \
-Dposti.keyManager.thriftServer.port=10401 \
-Dposti.apiPublisher.host=manage.ecosystem-a1.posti.fi \
-Dposti.apiPublisher.mgt.transport.https.port=443 \
-Dposti.apiStore.host=portal.ecosystem-a1.posti.fi \
-Dposti.apiStore.mgt.transport.https.port=443 \
-Dposti.apiAnalytics.host=das.wso2-test \
-Dposti.apiAnalytics.receiver.port=7612 \
-Dposti.apiAnalytics.mgt.port=9444 \
-Dposti.local.host=$( hostname ) \
-Dposti.enableThriftServer=false \
-Dposti.apiStoredisplayURL=false \
-Dposti.trafficManager.jms=false \
-Dposti.enableAnalytics=true \
-Dposti.enableThriftServer=false \
-Dposti.enable.advance.throttling=false \
-Dposti.enable.dataPublisher.throttling=true \
-Dposti.skipCache=false \
-Dposti.gateway.type=Synapse \
-Dposti.enable.blockCondition=false \
-Dposti.privateKeyAlias=$( hostname )"

mkdir -p ${WSO2_SERVER_HOME}/preferences/.java
cd ${WSO2_SERVER_HOME}
nohup ${WSO2_SERVER_HOME}/bin/wso2server.sh -DportOffset=2