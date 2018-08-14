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
    string k8sDeploymentName = "sample-app-deployment";
    string k8sServiceName = "sample-app-service";
    string k8sIngressName = "sample-app-ingress";

    kubernetes:Deployment deployment = new;
    deployment = deployment
    .setMetaData({
            name: k8sDeploymentName,
            labels: { "app": "sample-app" }
        })
    .addContainer({
            name: k8sDeploymentName,
            image: "deploy_sample_app:v1.0.0",
            ports: [{
                name: "http", containerPort: 9090, protocol: "TCP"
            }]
        })
    .setReplicaCount(2)
    .addMatchLabels({ "app": "sample-app" });

    // Create a k8s service
    kubernetes:Service serviceDef = new;
    serviceDef = serviceDef
    .setMetaData({
            name: k8sServiceName,
            labels: { "app": "sample-app" }
        })
    .setSpec({
            selector: { "app": "sample-app" },
            ^"type": "NodePort",
            ports: [{
                port: 9090,
                targetPort: 9090,
                protocol: "TCP",
                name: "http"
            }]
        });

    kubernetes:Ingress ingress = new;
    ingress = ingress.setMetaData({
            name: k8sIngressName,
            annotations: {
                "kubernetes.io/ingress.class": "nginx"
            },
            labels: {
                "app": "sample-app"
            }
        }).addIngressRule({
            host: "hello.com",
            http: {
                paths: [{
                    backend: {
                        serviceName: k8sServiceName,
                        servicePort: 9090
                    },
                    path: "/"
                }
                ]
            }
        });

    //Add the K8s objects to holder
    kubernetes:K8SHolder holder = new;
    holder.addDeployment(deployment);
    holder.addService(serviceDef);
    holder.addIngress(ingress);

    //Deploy k8s holder
    io:println("--- Response from Kubernetes API ---");
    // Deploy the k8s objects in the cluster
    var response = k8sEndpoint->apply(holder);
    io:println(response);

    io:println("--- Get Deployment ---");
    kubernetes:Deployment getResponse = k8sEndpoint->getDeployment(k8sDeploymentName);
    io:println(getResponse);

    io:println("--- Get Service ---");
    kubernetes:Service getService = k8sEndpoint->getService(k8sServiceName);
    io:println(getService);

    io:println("--- Get Ingress ---");
    kubernetes:Ingress getIngress = k8sEndpoint->getIngress(k8sIngressName);
    io:println(getIngress);


    //io:println("--- Delete Service ---");
    //var deleteService = k8sEndpoint->deleteService(k8sServiceName);
    //io:println(deleteService);
    //
    //io:println("--- Delete Ingress ---");
    //var deleteIngress = k8sEndpoint->deleteIngress(k8sIngressName);
    //io:println(deleteIngress);
    //
    //io:println("--- Delete Deployment ---");
    //var deleteResponse = k8sEndpoint->deleteDeployment(k8sDeploymentName);
    //io:println(deleteResponse);

}
