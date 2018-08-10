# Kubernetes Connector

Ballerina connector for Kubernetes.

# Package Overview

The Kubernetes connector allows you to create and manage Kubernetes resources in a Kubernetes cluster programatically 
without writing YAML files for each operation.   

**Supported Operations**

The `wso2/kubernetes` package currently supports managing below Kubernetes resources in a cluster.
1. Deployments
2. Services
3. Ingress

**Supported Authentication Mechanisms**

The Kubernetes connector supports the below authentication mechanisms which can used to connect to your Kubernetes 
cluster. You can chose the relevant authentication mechanism supported by your K8s Provider.
* Basic Auth
* OAuth2
* Mutual SSL

## Compatibility
|                          |    Version     |
|:------------------------:|:--------------:|
| Ballerina Language       | 0.981.1        |
| Kubernetes API Version   | 1.10.0 or above |

## Samples
1. Deploying a Kubernetes deployment in Minikube
2. Deploying a Kubernetes deployment in GKE


 
## Minikube Sample
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
    
## Google Kubernetes Engine Sample 

### Pre-requisites
**Running the sample against a remote GKE K8s cluster**
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

