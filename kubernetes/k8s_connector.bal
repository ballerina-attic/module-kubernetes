import ballerina/http;
import ballerina/io;

public type KubernetesConnector object {
    public string masterURL;
    public string namespace;
    public http:Client client;
    public function getNodes();
    public function getEndpoints();
    public function getDeployments() returns Deployment[];
    public function getDeployment(string name) returns Deployment;
    public function deleteDeployment(string name) returns json;
    public function createDeployment(json deployment);
    public function createService(json serviceJSON);
    public function apply(K8SHolder holder);
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

function KubernetesConnector::getDeployments() returns Deployment[] {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/apis/apps/v1/namespaces/" + self.namespace + "/deployments/";

    var response = httpClient->get(requestPath);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => {
                    return convertToDeployments(payload);
                }
                error err => {
                    io:println(err);
                    throw err;
                }
            }
        }
        error err => {
            io:println(err);
            throw err;
        }

    }
}

function KubernetesConnector::getDeployment(string name) returns Deployment {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/apis/apps/v1/namespaces/" + self.namespace + "/deployments/" + name;

    var response = httpClient->get(requestPath);
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => {
                    return convertToDeployment(payload);
                }
                error err => {
                    io:println(err);
                    throw err;
                }
            }
        }
        error err => {
            io:println(err);
            throw err;
        }

    }
}

function KubernetesConnector::deleteDeployment(string name) returns json {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/apis/apps/v1/namespaces/" + self.namespace + "/deployments/" + name;

    var response = httpClient->delete(requestPath, "");
    match response {
        http:Response httpResponse => {
            var jsonPayload = httpResponse.getJsonPayload();
            match jsonPayload {
                json payload => {
                    return payload;
                }
                error err => {
                    io:println(err);
                    throw err;
                }
            }
        }
        error err => {
            io:println(err);
            throw err;
        }

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

function KubernetesConnector::createService(json serviceJSON) {
    endpoint http:Client httpClient = self.client;
    string requestPath = "/api/" + serviceJSON.apiVersion.toString() + "/namespaces/" + self.namespace + "/services/";

    var response = httpClient->post(requestPath, serviceJSON);
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

function KubernetesConnector::apply(K8SHolder holder) {
    foreach deplyoment in holder.deployments  {
        self.createDeployment(deplyoment.toJSON());
    }

    foreach serviceDef in holder.services  {
        self.createService(serviceDef.toJSON());
    }
}
