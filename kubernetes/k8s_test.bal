import ballerina/test;

endpoint Client k8sClient {
    masterURL: config:getAsString("minikube.masterURL"),
    authConfig: {
        keystorePath: config:getAsString("minikube.sslkeyStorePath"),
        keystorePassword: config:getAsString("minikube.sslkeyStorePassword")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

@test:Config
function testGetNodes() {
    //json x = k8sClient->getNodes();
    //test:assertEquals(x["kind"], "NodeList");
}
