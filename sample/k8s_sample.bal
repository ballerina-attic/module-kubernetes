import ballerina/io;
import wso2/kubernetes;

endpoint kubernetes:Client k8sEndpoint {
    clusterIp:"35.188.69.248",
    username: "admin",
    password: "Y32PV6umuJFfE4E5"
};

function main(string... args) {
    var details = k8sEndpoint -> getNodes();
    io:println(details);
}