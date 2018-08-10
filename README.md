# Ballerina Kubernetes Connector

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

## Example
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

## Samples
1. [Creating a Kubernetes deployment in Minikube](https://github.com/wso2-ballerina/package-kubernetes/tree/master/sample_minikube)
2. [Creating a Kubernetes deployment in Google Kubernetes Engine](https://github.com/wso2-ballerina/package-kubernetes/tree/master/sample_gke)    
