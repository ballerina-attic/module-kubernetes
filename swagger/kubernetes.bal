import ballerina/io;
import ballerina/mime;
import ballerina/http;

//=====================================
//============Client Config============
//=====================================
public type KubernetesClientConfig record {
    string serviceUrl,
    http:ClientEndpointConfig clientConfig,
};

//=======================================
//============Client Endpoint============
//=======================================
public type KubernetesClientEp object {

    http:Client client;
    KubernetesClientConfig config;

    public function init(KubernetesClientConfig pconfig) {
        endpoint http:Client httpEp {
            url: config.serviceUrl,
            auth: config.clientConfig.auth,
            cache: config.clientConfig.cache
        };

        self.client = httpEp;
        self.config = pconfig;
    }

    public function getCallerActions() returns (KubernetesClient) {
        return new KubernetesClient(self);
    }
};

//==============================
//============Client============
//==============================
public type KubernetesClient object {
    KubernetesClientEp clientEp;

    new(clientEp) {}

    public function getCoreAPIVersions() returns http:Response|error {
        endpoint http:Client _getCoreAPIVersionsEp = self.clientEp.client;
        http:Request request = new;
        // TODO: Update the request as needed
        var v = _getCoreAPIVersionsEp->get("/api/", message = request);
        return v;
    }


    public function createCoreV1Namespace(io_k8s_api_core_v1_Namespace _createCoreV1NamespaceBody) returns http:Response
                |error {
        endpoint http:Client _createCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespaceBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespaceEp->post("/api/v1/namespaces", request);
        return v;
    }
};
