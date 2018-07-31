import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

endpoint kubernetes:Client k8sEndpoint {
    clusterIp: config:getAsString("cluster_ip"),
    username: config:getAsString("username"),
    password: config:getAsString("password"),
    namespace: "default",
    trustStorePath: "kubernetes/truststore/keystore.p12",
    trustStorePassword: "ballerina"
};

function main(string... args) {
    var details = k8sEndpoint -> getNodes();
    io:println(details);

    var endpoints = k8sEndpoint -> getEndpoints();
    io:println(endpoints);
}