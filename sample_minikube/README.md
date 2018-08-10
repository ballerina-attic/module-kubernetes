## Running the Kubernetes connector on Minikube

### Pre-requisites
1. Setup minikube to run a k8s cluster locally (https://kubernetes.io/docs/setup/minikube/)
2. Minikube uses Mutual SSL authentication to connect with the cluster.
* Create a truststore
```bash
   keytool -import -alias cluster-minikube -file ~/.minikube/apiserver.crt -keystore trustore.jks
   keytool -importkeystore -srckeystore trustore.jks -srcstoretype JKS -deststoretype PKCS12 -destkeystore trustore.p12
``` 
* Create a keystore
```bash
openssl pkcs12 -export -in ~/.minikube/client.crt -inkey ~/.minikube/client.key -certfile client.crt -out keystore.p12
```

#### Configuring credentials and keystore information in ballerina.conf file
```toml
trustStorePath="~/ballerina/trustore.p12"
trustStorePassword="ballerina"

[minikube]
masterURL="https://192.168.99.100:8443"
sslkeyStorePath="~/ballerina/keystore.p12"
sslkeyStorePassword="ballerina"
```

#### Creating a K8s deployment in minikube

```ballerina
import ballerina/io;
import ballerina/config;
import wso2/kubernetes;

// Create the K8s endpoint
endpoint kubernetes:Client k8sEndpoint {
    masterURL: config:getAsString("minikube.masterURL"),
    sslConfig: {
        keystorePath: config:getAsString("minikube.sslkeyStorePath"),
        keystorePassword: config:getAsString("minikube.sslkeyStorePassword")
    },
    namespace: "default",
    trustStorePath: config:getAsString("trustStorePath"),
    trustStorePassword: config:getAsString("trustStorePassword")
};

function main(string... args) {
    // Create a k8s deployment
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

    // Add the K8s objects to holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);

    io:println("--- Response from Kubernetes API ---");
    // Deploy the k8s objects in the cluster
    var response = k8sEndpoint->apply(holder);
    io:println(response);
}
```

#### Running the sample
```bash
ballerina run k8s_sample.bal --config ballerina.conf
```