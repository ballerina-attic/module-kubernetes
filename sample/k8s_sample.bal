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
    //var details = k8sEndpoint->getNodes();
    //io:println(details);

    var endpoints = k8sEndpoint->getEndpoints();
    io:println(endpoints);

    kubernetes:DeploymentConfiguration deploymentConfiguration = {
        apiVersion: "extensions/v1beta1",
        name: "hello-world-k8s-deployment"

    };

    json deployment = {
        "apiVersion": "extensions/v1beta1",
        "kind": "Deployment",
        "metadata": {
            "annotations": {},
            "finalizers": [],
            "labels": {
                "app": "hello_world_k8s"
            },
            "name": "hello-world-k8s-deployment",
            "ownerReferences": []
        },
        "spec": {
            "replicas": 1,
            "template": {
                "metadata": {
                    "annotations": {},
                    "finalizers": [],
                    "labels": {
                        "app": "hello_world_k8s"
                    },
                    "ownerReferences": []
                },
                "spec": {
                    "containers": [
                        {
                            "args": [],
                            "command": [],
                            "env": [],
                            "envFrom": [],
                            "image": "hello_world_k8s_config:latest",
                            "imagePullPolicy": "IfNotPresent",
                            "name": "hello-world-k8s-deployment",
                            "ports": [
                                {
                                    "containerPort": 9090,
                                    "protocol": "TCP"
                                }
                            ],
                            "volumeMounts": []
                        }
                    ],
                    "hostAliases": [],
                    "imagePullSecrets": [],
                    "initContainers": [],
                    "nodeSelector": {},
                    "tolerations": [],
                    "volumes": []
                }
            }
        }
    };
    var response = k8sEndpoint->createDeployment(deployment);
    io:println(response);
}