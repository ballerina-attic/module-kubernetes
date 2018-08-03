import ballerina/test;

endpoint Client k8sClient {
    masterURL: config:getAsString("minikube.masterURL"),
    sslConfig: {
        keystorePath: config:getAsString("minikube.sslkeyStorePath"),
        keystorePassword: config:getAsString("minikube.sslkeyStorePassword")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

@test:Config
function testGetNodes() {
    var x = k8sClient->getNodes();
    io:println(x);
}
