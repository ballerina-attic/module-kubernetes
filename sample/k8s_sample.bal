import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

//endpoint kubernetes:Client k8sEndpoint {
//    masterURL: config:getAsString("masterURL"),
//    basicAuthConfig: { username: config:getAsString("username"), password: config:getAsString("password") },
//    namespace: "default",
//    trustStorePath: "kubernetes/truststore/keystore.p12",
//    trustStorePassword: "ballerina"
//};


endpoint kubernetes:Client k8sEndpoint {
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

function main(string... args) {
    //create Deployment object
    kubernetes:Deployment deployment = new;
    deployment = deployment
    .setMetaData({
            name: "nginx-deployment",
            labels: { "app": "nginx" }
        })
    .addContainer({
            name: "nginx",
            image: "nginx:1.7.9",
            ports: [{
                name: "http-frontend", containerPort: 80, protocol: "TCP"
            }]
        })
    .setReplicaCount(3)
    .addMatchLabels("app", "nginx");
    io:println(deployment.toJSON());


    kubernetes:Service serviceDef = new;
    serviceDef = serviceDef
    .setMetaData({
            name: "nginx-service",
            labels: { "app": "nginx" }
        })
    .setSpec({
            selector: { "app": "nginx" },
            serviceType: "ClusterIP",
            ports: [{
                port: 80,
                targetPort: 80,
                protocol: "TCP",
                name: "http"
            }]
        });
    io:println(serviceDef.toJSON());

    //Add deployment object to holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);
    holder.addService(serviceDef);
    //Deploy k8s holder
    var response = k8sEndpoint->apply(holder);
    io:println(response);
}