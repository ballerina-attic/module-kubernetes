## Running the Kubernetes connector on a Google Kubernetes Engine K8s cluster 

### Pre-requisites
1. Setup a k8s cluster in Google Kubernetes Engine (https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-cluster)
2. Obtain the username and password to connect to the cluster

3. Create a truststore with the cluster public certificate
```bash
    keytool -import -alias cluster-minikube -file ~/.minikube/apiserver.crt -keystore trustore.jks
    keytool -importkeystore -srckeystore trustore.jks -srcstoretype JKS -deststoretype PKCS12 -destkeystore trustore.p12
``` 


#### Configuring credentials and keystore information in ballerina.conf file
```toml
trustStorePath="~/ballerina/trustore.p12"
trustStorePassword="ballerina"

[gke]
masterURL="https://35.193.187.46"
username="username"
password="password"
```

#### Creating a K8s deployment in Google K8s Engine (GKE)
```ballerina
import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

// Create the k8s client endpoint to talk to the K8s cluster
endpoint kubernetes:Client k8sEndpoint {
    masterURL: config:getAsString("gke.masterURL"),
    basicAuthConfig: {
        username: config:getAsString("gke.username"),
        password: config:getAsString("gke.password")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

function main(string... args) {
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
    .addMatchLabels("app", "nginx");

    // Add K8s objects to the holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);

    // Deploy the k8s objects in the cluster
    io:println("--- Response from Kubernetes API ---");
    var response = k8sEndpoint->apply(holder);
    io:println(response);
}
```
