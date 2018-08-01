import ballerina/http;
import ballerina/io;

public type KubernetesConnector object {
    public string masterURL;
    public string namespace;
    public http:Client client;
    public function getNodes();
    public function getEndpoints();
    public function createDeployment(json deployment);
};


public type DeploymentConfiguration record {
    string apiVersion;
    string name;
    map labels;
    int replicas;
    boolean enableLiveness;
    int livenessPort;
    int initialDelaySeconds;
    int periodSeconds;
    string imagePullPolicy;
    string image;
    map env;
    string[] imagePullSecrets;

};


function KubernetesConnector::getNodes() {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/api/v1/nodes/";

    var response = httpClient->get(requestPath);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => io:println(payload);
                error err => io:println(err);
            }
        }
        error err => io:println(err);
    }
}

function KubernetesConnector::getEndpoints() {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/api/v1/namespaces/" + self.namespace + "/endpoints/";

    var response = httpClient->get(requestPath);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => io:println(payload);
                error err => io:println(err);
            }
        }
        error err => io:println(err);
    }
}

function KubernetesConnector::createDeployment(json deployment) {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/apis/" + deployment.apiVersion.toString() + "/namespaces/" + self.namespace + "/deployments/"
    ;

    var response = httpClient->post(requestPath, deployment);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => io:println(payload);
                error err => io:println(err);
            }
        }
        error err => io:println(err);
    }
}
