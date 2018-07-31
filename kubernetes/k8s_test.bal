import ballerina/test;

endpoint Client k8sClient {
    clusterIp: config:getAsString("cluster_ip"),
    username: config:getAsString("username"),
    password: config:getAsString("password"),
    namespace: "default",
    trustStorePath: "kubernetes/truststore/keystore.p12",
    trustStorePassword: "ballerina"
};

@test:Config
function testGetNodes() {
    var x = k8sClient->getNodes();
    io:println(x);
}