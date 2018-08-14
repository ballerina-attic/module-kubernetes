import ballerina/http;
import ballerinax/docker;

@http:ServiceConfig {
    basePath: "/helloWorld"
}
@docker:Config {
    dockerHost: "tcp://192.168.99.100:2376",
    dockerCertPath: "/Users/anuruddha/.minikube/certs",
    tag: "v1.0.0",
    baseImage:"ballerina/ballerina-platform:latest"
}
service<http:Service> helloWorld bind { port: 9090 } {
    sayHello(endpoint outboundEP, http:Request request) {
        http:Response response = new;
        response.setTextPayload("Hello, from Kubernetes ! \n");
        _ = outboundEP->respond(response);
    }
}