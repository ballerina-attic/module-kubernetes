import ballerina/http;
import ballerina/config;

public type KubernetesConnectorConfiguration record {
    string clusterIp;
    string username;
    string password;
    http:ClientEndpointConfig clientConfig;
};

public type Client object {
    public KubernetesConnectorConfiguration twilioConfig;
    public KubernetesConnector k8sconnector = new;

    public function init(KubernetesConnectorConfiguration config);
    public function getCallerActions() returns KubernetesConnector;
};

function Client::init(KubernetesConnectorConfiguration config) {
    self.k8sconnector.clusterIp = config.clusterIp;
    config.clientConfig.url = "https://" + config.clusterIp + "/api/v1";
    config.clientConfig.secureSocket = {
        trustStore: {
            path: "kubernetes/truststore/keystore.p12",
            password: "ballerina"
        }
    };

    http:AuthConfig authConfig =
    {
        scheme: http:BASIC_AUTH,
        username: config.username,
        password: config.password
    };

    config.clientConfig.auth = authConfig;

    self.k8sconnector.client.init(config.clientConfig);
}

function Client::getCallerActions() returns KubernetesConnector {
    return self.k8sconnector;
}