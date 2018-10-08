import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

// Create the k8s client endpoint to talk to the K8s cluster
endpoint kubernetes:Client k8sEndpoint {
    masterURL: config:getAsString("gke.masterURL"),
    authConfig: {
        username: config:getAsString("gke.username"),
        password: config:getAsString("gke.password")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

public function main(string... args) {
    // Create the k8s endpoint object
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
    .setReplicaCount(2)
    .addMatchLabels({ "app": "nginx" });

    // Create the k8s service object
    kubernetes:Service nginxService = new;
    nginxService = nginxService
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

    // Add K8s objects to the holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);
    holder.addService(nginxService);

    // Deploy the k8s objects in the cluster
    io:println("--- Response from Kubernetes API ---");
    var response = k8sEndpoint->apply(holder);
    io:println(response);
}