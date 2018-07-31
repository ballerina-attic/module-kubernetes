import ballerina/http;
import ballerina/io;

public type KubernetesConnector object {
    public string clusterIp;
    public string namespace;
    public http:Client client;
    public function getNodes();
    public function getEndpoints();
};

function KubernetesConnector::getNodes() {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/nodes/";

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
    string requestPath = "/namespaces/" + self.namespace +"/endpoints/";

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
