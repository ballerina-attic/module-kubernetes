import ballerina/http;
import ballerina/config;

public type KubernetesConnectorConfiguration record {
    string clusterIp;
    string namespace;
    string username;
    string password;
    string accessToken;
    string trustStorePath;
    string trustStorePassword;
    http:ClientEndpointConfig clientConfig;
};

public type Client object {
    public KubernetesConnectorConfiguration kubernetesConfig;
    public KubernetesConnector k8sconnector = new;

    public function init(KubernetesConnectorConfiguration config);
    public function getCallerActions() returns KubernetesConnector;
};

function Client::init(KubernetesConnectorConfiguration config) {
    self.k8sconnector.clusterIp = config.clusterIp;
    if (config.namespace.length() < 0){
        config.namespace = "default";
    }
    config.clientConfig.url = "https://" + config.clusterIp + "/api/v1/namespaces/" + config.namespace;
    if (config.trustStorePassword.length() > 0 && config.trustStorePath.length() > 0){
        config.clientConfig.secureSocket = {
            trustStore: {
                path: config.trustStorePath,
                password: config.trustStorePassword
            }
        };
    }
    http:AuthConfig authConfig = {};
    if (config.accessToken.length() > 0){
        authConfig = {
            scheme: http:OAUTH2,
            accessToken: config.accessToken
        };
    } else {
        authConfig =
        {
            scheme: http:BASIC_AUTH,
            username: config.username,
            password: config.password
        };
    }
    config.clientConfig.auth = authConfig;
    self.k8sconnector.client.init(config.clientConfig);
}

function Client::getCallerActions() returns KubernetesConnector {
    return self.k8sconnector;
}