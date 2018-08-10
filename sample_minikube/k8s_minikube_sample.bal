import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

// Create the K8s endpoint
endpoint kubernetes:Client k8sEndpoint {
    masterURL: config:getAsString("minikube.masterURL"),
    authConfig: {
        keystorePath: config:getAsString("minikube.sslkeyStorePath"),
        keystorePassword: config:getAsString("minikube.sslkeyStorePassword")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

function main(string... args) {
    // Create a k8s deployment
    string k8sDeploymentName = "nginx-deployment";
    string k8sServiceName = "nginx-service";

    kubernetes:Deployment deployment = new;
    deployment = deployment
    .setMetaData({
            name: k8sDeploymentName,
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

    // Create a k8s service
    kubernetes:Service serviceDef = new;
    serviceDef = serviceDef
    .setMetaData({
            name: k8sServiceName,
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

    // Add the K8s objects to holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);
    holder.addService(serviceDef);

    //Deploy k8s holder
    io:println("--- Response from Kubernetes API ---");
    // Deploy the k8s objects in the cluster
    var response = k8sEndpoint->apply(holder);
    io:println(response);

    io:println("--- Get Deployment ---");
    kubernetes:Deployment getResponse = k8sEndpoint->getDeployment(k8sDeploymentName);
    io:println(getResponse);

    io:println("--- Delete Deployment ---");
    var deleteResponse = k8sEndpoint->deleteDeployment(k8sDeploymentName);
    io:println(deleteResponse);

    io:println("--- Get Service ---");
    kubernetes:Service getService = k8sEndpoint->getService(k8sServiceName);
    io:println(getService);

    io:println("--- Delete Service ---");
    var deleteService = k8sEndpoint->deleteService(k8sServiceName);
    io:println(deleteService);
}
