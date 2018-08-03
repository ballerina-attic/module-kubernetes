import ballerina/test;

endpoint Client k8sClient {
    masterURL: config:getAsString("masterURL"),
    //basicAuthConfig: {
    //    username: config:getAsString("username"),
    //    password: config:getAsString("password")
    //},
    sslConfig: {
        keystorePassword: "ballerina",
        keystorePath: "/Users/anuruddha/workspace/ballerinax/package-kubernetes/resource/testkeystore.p12"
    },
    namespace: "default",
    trustStorePath: "/Users/anuruddha/workspace/ballerinax/package-kubernetes/resource/keystore.p12",
    trustStorePassword: "ballerina"
};

@test:Config
function testGetNodes() {
    var x = k8sClient->getNodes();
    io:println(x);
}