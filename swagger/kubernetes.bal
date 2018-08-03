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

    public function getCoreV1APIResources() returns http:Response|error {
        endpoint http:Client _getCoreV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getCoreV1APIResourcesEp->get("/api/v1/", message = request);
        return v;
    }

    public function listCoreV1ComponentStatus() returns http:Response|error {
        endpoint http:Client _listCoreV1ComponentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ComponentStatusEp->get("/api/v1/componentstatuses", message = request);
        return v;
    }

    public function readCoreV1ComponentStatus(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1ComponentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1ComponentStatusEp->get("/api/v1/componentstatuses/{name}", message = request);
        return v;
    }

    public function listCoreV1ConfigMapForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1ConfigMapForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ConfigMapForAllNamespacesEp->get("/api/v1/configmaps", message = request);
        return v;
    }

    public function listCoreV1EndpointsForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1EndpointsForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1EndpointsForAllNamespacesEp->get("/api/v1/endpoints", message = request);
        return v;
    }

    public function listCoreV1EventForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1EventForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1EventForAllNamespacesEp->get("/api/v1/events", message = request);
        return v;
    }

    public function listCoreV1LimitRangeForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1LimitRangeForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1LimitRangeForAllNamespacesEp->get("/api/v1/limitranges", message = request);
        return v;
    }

    public function listCoreV1Namespace() returns http:Response|error {
        endpoint http:Client _listCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespaceEp->get("/api/v1/namespaces", message = request);
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
    public function createCoreV1NamespacedBinding(io_k8s_api_core_v1_Binding _createCoreV1NamespacedBindingBody, string
        namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedBindingBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedBindingEp->post("/api/v1/namespaces/{namespace}/bindings", request);
        return v;
    }

    public function listCoreV1NamespacedConfigMap(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedConfigMapEp->get("/api/v1/namespaces/{namespace}/configmaps", message = request);
        return v;
    }

    public function createCoreV1NamespacedConfigMap(io_k8s_api_core_v1_ConfigMap _createCoreV1NamespacedConfigMapBody,
                                                    string namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedConfigMapBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedConfigMapEp->post("/api/v1/namespaces/{namespace}/configmaps", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedConfigMap(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedConfigMapEp->delete("/api/v1/namespaces/{namespace}/configmaps",
            request);
        return v;
    }

    public function readCoreV1NamespacedConfigMap(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedConfigMapEp->get("/api/v1/namespaces/{namespace}/configmaps/{name}", message =
            request);
        return v;
    }

    public function replaceCoreV1NamespacedConfigMap(io_k8s_api_core_v1_ConfigMap _replaceCoreV1NamespacedConfigMapBody,
                                                     string name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedConfigMapBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedConfigMapEp->put("/api/v1/namespaces/{namespace}/configmaps/{name}", request);
        return v;
    }


    public function deleteCoreV1NamespacedConfigMap(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                    _deleteCoreV1NamespacedConfigMapBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedConfigMapBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedConfigMapEp->delete("/api/v1/namespaces/{namespace}/configmaps/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedConfigMap(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                   _patchCoreV1NamespacedConfigMapBody
        ,                                          string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedConfigMapBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedConfigMapEp->patch("/api/v1/namespaces/{namespace}/configmaps/{name}", request);
        return v;
    }

    public function listCoreV1NamespacedEndpoints(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedEndpointsEp->get("/api/v1/namespaces/{namespace}/endpoints", message = request);
        return v;
    }

    public function createCoreV1NamespacedEndpoints(io_k8s_api_core_v1_Endpoints _createCoreV1NamespacedEndpointsBody,
                                                    string namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedEndpointsBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedEndpointsEp->post("/api/v1/namespaces/{namespace}/endpoints", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedEndpoints(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedEndpointsEp->delete("/api/v1/namespaces/{namespace}/endpoints", request
        );
        return v;
    }

    public function readCoreV1NamespacedEndpoints(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedEndpointsEp->get("/api/v1/namespaces/{namespace}/endpoints/{name}", message =
            request);
        return v;
    }

    public function replaceCoreV1NamespacedEndpoints(io_k8s_api_core_v1_Endpoints _replaceCoreV1NamespacedEndpointsBody,
                                                     string name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedEndpointsBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedEndpointsEp->put("/api/v1/namespaces/{namespace}/endpoints/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedEndpoints(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                    _deleteCoreV1NamespacedEndpointsBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedEndpointsBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedEndpointsEp->delete("/api/v1/namespaces/{namespace}/endpoints/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedEndpoints(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                   _patchCoreV1NamespacedEndpointsBody
        ,                                          string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedEndpointsBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedEndpointsEp->patch("/api/v1/namespaces/{namespace}/endpoints/{name}", request);
        return v;
    }

    public function listCoreV1NamespacedEvent(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedEventEp->get("/api/v1/namespaces/{namespace}/events", message = request);
        return v;
    }

    public function createCoreV1NamespacedEvent(io_k8s_api_core_v1_Event _createCoreV1NamespacedEventBody, string
        namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedEventBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedEventEp->post("/api/v1/namespaces/{namespace}/events", request);
        return v;
    }



    public function deleteCoreV1CollectionNamespacedEvent(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedEventEp->delete("/api/v1/namespaces/{namespace}/events", request);
        return v;
    }

    /////

    public function readCoreV1NamespacedEvent(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedEventEp->get("/api/v1/namespaces/{namespace}/events/{name}", message = request);
        return v;
    }

    public function replaceCoreV1NamespacedEvent(io_k8s_api_core_v1_Event _replaceCoreV1NamespacedEventBody, string name
        ,                                        string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedEventBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedEventEp->put("/api/v1/namespaces/{namespace}/events/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedEvent(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                _deleteCoreV1NamespacedEventBody,
                                                string name, string namespace) returns http
                :Response|error {
        endpoint http:Client _deleteCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedEventBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedEventEp->delete("/api/v1/namespaces/{namespace}/events/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedEvent(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                               _patchCoreV1NamespacedEventBody, string name, string namespace) returns http
                :Response|error {
        endpoint http:Client _patchCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedEventBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedEventEp->patch("/api/v1/namespaces/{namespace}/events/{name}", request);
        return v;
    }

    public function listCoreV1NamespacedLimitRange(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedLimitRangeEp->get("/api/v1/namespaces/{namespace}/limitranges", message = request);
        return v;
    }

    public function createCoreV1NamespacedLimitRange(io_k8s_api_core_v1_LimitRange _createCoreV1NamespacedLimitRangeBody
        ,                                            string namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedLimitRangeBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedLimitRangeEp->post("/api/v1/namespaces/{namespace}/limitranges", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedLimitRange(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedLimitRangeEp->delete("/api/v1/namespaces/{namespace}/limitranges",
            request);
        return v;
    }

    public function readCoreV1NamespacedLimitRange(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedLimitRangeEp->get("/api/v1/namespaces/{namespace}/limitranges/{name}", message =
            request);
        return v;
    }

    public function replaceCoreV1NamespacedLimitRange(io_k8s_api_core_v1_LimitRange
                                                      _replaceCoreV1NamespacedLimitRangeBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _replaceCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedLimitRangeBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedLimitRangeEp->put("/api/v1/namespaces/{namespace}/limitranges/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedLimitRange(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                     _deleteCoreV1NamespacedLimitRangeBody
        ,                                            string name, string
                                                     namespace) returns http:
                Response|error {
        endpoint http:Client _deleteCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedLimitRangeBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedLimitRangeEp->delete("/api/v1/namespaces/{namespace}/limitranges/{name}", request
        );
        return v;
    }

    public function patchCoreV1NamespacedLimitRange(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                    _patchCoreV1NamespacedLimitRangeBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedLimitRangeBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedLimitRangeEp->patch("/api/v1/namespaces/{namespace}/limitranges/{name}", request);
        return v;
    }

    public function listCoreV1NamespacedPersistentVolumeClaim(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedPersistentVolumeClaimEp->get("/api/v1/namespaces/{namespace}/persistentvolumeclaims"
            , message = request);
        return v;
    }

    public function createCoreV1NamespacedPersistentVolumeClaim(io_k8s_api_core_v1_PersistentVolumeClaim
                                                                _createCoreV1NamespacedPersistentVolumeClaimBody
        ,                                                       string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedPersistentVolumeClaimBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedPersistentVolumeClaimEp->post(
                                                                    "/api/v1/namespaces/{namespace}/persistentvolumeclaims"
                                                                    , request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedPersistentVolumeClaim(string namespace) returns http:Response|error
    {
        endpoint http:Client _deleteCoreV1CollectionNamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedPersistentVolumeClaimEp->delete(
                                                                              "/api/v1/namespaces/{namespace}/persistentvolumeclaims"
                                                                              , request);
        return v;
    }

    public function readCoreV1NamespacedPersistentVolumeClaim(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPersistentVolumeClaimEp->get("/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedPersistentVolumeClaim(io_k8s_api_core_v1_PersistentVolumeClaim
                                                                 _replaceCoreV1NamespacedPersistentVolumeClaimBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedPersistentVolumeClaimBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedPersistentVolumeClaimEp->put("/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}"
            , request);
        return v;
    }

    public function deleteCoreV1NamespacedPersistentVolumeClaim(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                _deleteCoreV1NamespacedPersistentVolumeClaimBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedPersistentVolumeClaimBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedPersistentVolumeClaimEp->delete(
                                                                    "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}"
                                                                    , request);
        return v;
    }

    public function patchCoreV1NamespacedPersistentVolumeClaim(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchCoreV1NamespacedPersistentVolumeClaimBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedPersistentVolumeClaimBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedPersistentVolumeClaimEp->patch(
                                                                   "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}"
                                                                   , request);
        return v;
    }

    public function readCoreV1NamespacedPersistentVolumeClaimStatus(string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _readCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPersistentVolumeClaimStatusEp->get("/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedPersistentVolumeClaimStatus(io_k8s_api_core_v1_PersistentVolumeClaim
                                                                       _replaceCoreV1NamespacedPersistentVolumeClaimStatusBody
        ,                                                              string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedPersistentVolumeClaimStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedPersistentVolumeClaimStatusEp->put("/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status"
            , request);
        return v;
    }

    public function patchCoreV1NamespacedPersistentVolumeClaimStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                     _patchCoreV1NamespacedPersistentVolumeClaimStatusBody
        ,                                                            string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedPersistentVolumeClaimStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedPersistentVolumeClaimStatusEp->patch(
                                                                         "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status"
                                                                         , request);
        return v;
    }

    public function listCoreV1NamespacedPod(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedPodEp->get("/api/v1/namespaces/{namespace}/pods", message = request);
        return v;
    }

    public function createCoreV1NamespacedPod(io_k8s_api_core_v1_Pod _createCoreV1NamespacedPodBody, string namespace)
                        returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedPodBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedPodEp->post("/api/v1/namespaces/{namespace}/pods", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedPod(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedPodEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedPodEp->delete("/api/v1/namespaces/{namespace}/pods", request);
        return v;
    }

    public function readCoreV1NamespacedPod(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPodEp->get("/api/v1/namespaces/{namespace}/pods/{name}", message = request);
        return v;
    }

    public function replaceCoreV1NamespacedPod(io_k8s_api_core_v1_Pod _replaceCoreV1NamespacedPodBody, string name,
                                               string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedPodBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedPodEp->put("/api/v1/namespaces/{namespace}/pods/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedPod(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                              _deleteCoreV1NamespacedPodBody, string name, string namespace) returns http
                :Response|error {
        endpoint http:Client _deleteCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedPodBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedPodEp->delete("/api/v1/namespaces/{namespace}/pods/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedPod(io_k8s_apimachinery_pkg_apis_meta_v1_Patch _patchCoreV1NamespacedPodBody,
                                             string name, string namespace) returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedPodBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedPodEp->patch("/api/v1/namespaces/{namespace}/pods/{name}", request);
        return v;
    }

    public function connectCoreV1GetNamespacedPodAttach(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedPodAttachEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedPodAttachEp->get("/api/v1/namespaces/{namespace}/pods/{name}/attach", message
            = request);
        return v;
    }

    public function connectCoreV1PostNamespacedPodAttach(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedPodAttachEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedPodAttachEp->post("/api/v1/namespaces/{namespace}/pods/{name}/attach",
            request);
        return v;
    }

    public function createCoreV1NamespacedPodBinding(io_k8s_api_core_v1_Binding _createCoreV1NamespacedPodBindingBody,
                                                     string name, string namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedPodBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedPodBindingBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedPodBindingEp->post("/api/v1/namespaces/{namespace}/pods/{name}/binding", request)
        ;
        return v;
    }

    public function createCoreV1NamespacedPodEviction(io_k8s_api_policy_v1beta1_Eviction
                                                      _createCoreV1NamespacedPodEvictionBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _createCoreV1NamespacedPodEvictionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedPodEvictionBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedPodEvictionEp->post("/api/v1/namespaces/{namespace}/pods/{name}/eviction",
            request);
        return v;
    }

    public function connectCoreV1GetNamespacedPodExec(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedPodExecEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedPodExecEp->get("/api/v1/namespaces/{namespace}/pods/{name}/exec", message =
            request);
        return v;
    }

    public function connectCoreV1PostNamespacedPodExec(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedPodExecEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedPodExecEp->post("/api/v1/namespaces/{namespace}/pods/{name}/exec", request);
        return v;
    }

    public function readCoreV1NamespacedPodLog(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedPodLogEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPodLogEp->get("/api/v1/namespaces/{namespace}/pods/{name}/log", message = request);
        return v;
    }

    public function connectCoreV1GetNamespacedPodPortforward(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _connectCoreV1GetNamespacedPodPortforwardEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedPodPortforwardEp->get("/api/v1/namespaces/{namespace}/pods/{name}/portforward"
            , message = request);
        return v;
    }

    public function connectCoreV1PostNamespacedPodPortforward(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _connectCoreV1PostNamespacedPodPortforwardEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedPodPortforwardEp->post(
                                                                  "/api/v1/namespaces/{namespace}/pods/{name}/portforward"
                                                                  , request);
        return v;
    }

    public function connectCoreV1GetNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedPodProxyEp->get("/api/v1/namespaces/{namespace}/pods/{name}/proxy", message =
            request);
        return v;
    }

    public function connectCoreV1PutNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PutNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNamespacedPodProxyEp->put("/api/v1/namespaces/{namespace}/pods/{name}/proxy", request);
        return v;
    }

    public function connectCoreV1PostNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedPodProxyEp->post("/api/v1/namespaces/{namespace}/pods/{name}/proxy", request
        );
        return v;
    }

    public function connectCoreV1DeleteNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1DeleteNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNamespacedPodProxyEp->delete("/api/v1/namespaces/{namespace}/pods/{name}/proxy",
            request);
        return v;
    }

    public function connectCoreV1OptionsNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1OptionsNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNamespacedPodProxyEp->options("/api/v1/namespaces/{namespace}/pods/{name}/proxy",
            message = request);
        return v;
    }

    public function connectCoreV1HeadNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1HeadNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNamespacedPodProxyEp->head("/api/v1/namespaces/{namespace}/pods/{name}/proxy", message
            = request
        );
        return v;
    }

    public function connectCoreV1PatchNamespacedPodProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PatchNamespacedPodProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNamespacedPodProxyEp->patch("/api/v1/namespaces/{namespace}/pods/{name}/proxy",
            request);
        return v;
    }

    public function connectCoreV1GetNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:
                Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedPodProxyWithPathEp->get("/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
            , message = request);
        return v;
    }

    public function connectCoreV1PutNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:
                Response|error {
        endpoint http:Client _connectCoreV1PutNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNamespacedPodProxyWithPathEp->put("/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
            , request);
        return v;
    }

    public function connectCoreV1PostNamespacedPodProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedPodProxyWithPathEp->post(
                                                                    "/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
                                                                    , request);
        return v;
    }

    public function connectCoreV1DeleteNamespacedPodProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1DeleteNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNamespacedPodProxyWithPathEp->delete(
                                                                      "/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
                                                                      , request);
        return v;
    }

    public function connectCoreV1OptionsNamespacedPodProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1OptionsNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNamespacedPodProxyWithPathEp->options(
                                                                       "/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
                                                                       , message = request);
        return v;
    }

    public function connectCoreV1HeadNamespacedPodProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1HeadNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNamespacedPodProxyWithPathEp->head(
                                                                    "/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
                                                                    , message = request);
        return v;
    }

    public function connectCoreV1PatchNamespacedPodProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1PatchNamespacedPodProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNamespacedPodProxyWithPathEp->patch(
                                                                     "/api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}"
                                                                     , request);
        return v;
    }

    public function readCoreV1NamespacedPodStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedPodStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPodStatusEp->get("/api/v1/namespaces/{namespace}/pods/{name}/status", message =
            request);
        return v;
    }

    public function replaceCoreV1NamespacedPodStatus(io_k8s_api_core_v1_Pod _replaceCoreV1NamespacedPodStatusBody,
                                                     string name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedPodStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedPodStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedPodStatusEp->put("/api/v1/namespaces/{namespace}/pods/{name}/status", request);
        return v;
    }

    public function patchCoreV1NamespacedPodStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                   _patchCoreV1NamespacedPodStatusBody
        ,                                          string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedPodStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedPodStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedPodStatusEp->patch("/api/v1/namespaces/{namespace}/pods/{name}/status", request);
        return v;
    }

    public function listCoreV1NamespacedPodTemplate(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedPodTemplateEp->get("/api/v1/namespaces/{namespace}/podtemplates", message = request
        );
        return v;
    }

    public function createCoreV1NamespacedPodTemplate(io_k8s_api_core_v1_PodTemplate
                                                      _createCoreV1NamespacedPodTemplateBody
        ,                                             string namespace) returns http
                :Response|error {
        endpoint http:Client _createCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedPodTemplateBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedPodTemplateEp->post("/api/v1/namespaces/{namespace}/podtemplates", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedPodTemplate(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedPodTemplateEp->delete("/api/v1/namespaces/{namespace}/podtemplates",
            request);
        return v;
    }

    public function readCoreV1NamespacedPodTemplate(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedPodTemplateEp->get("/api/v1/namespaces/{namespace}/podtemplates/{name}", message =
            request);
        return v;
    }

    public function replaceCoreV1NamespacedPodTemplate(io_k8s_api_core_v1_PodTemplate
                                                       _replaceCoreV1NamespacedPodTemplateBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _replaceCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedPodTemplateBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedPodTemplateEp->put("/api/v1/namespaces/{namespace}/podtemplates/{name}", request
        );
        return v;
    }

    public function deleteCoreV1NamespacedPodTemplate(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                      _deleteCoreV1NamespacedPodTemplateBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _deleteCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedPodTemplateBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedPodTemplateEp->delete("/api/v1/namespaces/{namespace}/podtemplates/{name}",
            request);
        return v;
    }

    public function patchCoreV1NamespacedPodTemplate(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                     _patchCoreV1NamespacedPodTemplateBody
        ,                                            string name, string
                                                     namespace) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedPodTemplateBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedPodTemplateEp->patch("/api/v1/namespaces/{namespace}/podtemplates/{name}", request
        );
        return v;
    }

    public function listCoreV1NamespacedReplicationController(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedReplicationControllerEp->get("/api/v1/namespaces/{namespace}/replicationcontrollers"
            , message = request);
        return v;
    }

    public function createCoreV1NamespacedReplicationController(io_k8s_api_core_v1_ReplicationController
                                                                _createCoreV1NamespacedReplicationControllerBody
        ,                                                       string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedReplicationControllerBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedReplicationControllerEp->post(
                                                                    "/api/v1/namespaces/{namespace}/replicationcontrollers"
                                                                    , request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedReplicationController(string namespace) returns http:Response|error
    {
        endpoint http:Client _deleteCoreV1CollectionNamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedReplicationControllerEp->delete(
                                                                              "/api/v1/namespaces/{namespace}/replicationcontrollers"
                                                                              , request);
        return v;
    }

    public function readCoreV1NamespacedReplicationController(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedReplicationControllerEp->get("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedReplicationController(io_k8s_api_core_v1_ReplicationController
                                                                 _replaceCoreV1NamespacedReplicationControllerBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedReplicationControllerBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedReplicationControllerEp->put("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}"
            , request);
        return v;
    }

    public function deleteCoreV1NamespacedReplicationController(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                _deleteCoreV1NamespacedReplicationControllerBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedReplicationControllerBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedReplicationControllerEp->delete(
                                                                    "/api/v1/namespaces/{namespace}/replicationcontrollers/{name}"
                                                                    , request);
        return v;
    }

    public function patchCoreV1NamespacedReplicationController(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchCoreV1NamespacedReplicationControllerBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedReplicationControllerBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedReplicationControllerEp->patch(
                                                                   "/api/v1/namespaces/{namespace}/replicationcontrollers/{name}"
                                                                   , request);
        return v;
    }

    public function readCoreV1NamespacedReplicationControllerScale(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readCoreV1NamespacedReplicationControllerScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedReplicationControllerScaleEp->get("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedReplicationControllerScale(io_k8s_api_autoscaling_v1_Scale
                                                                      _replaceCoreV1NamespacedReplicationControllerScaleBody
        ,                                                             string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceCoreV1NamespacedReplicationControllerScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedReplicationControllerScaleBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedReplicationControllerScaleEp->put("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
            , request);
        return v;
    }

    public function patchCoreV1NamespacedReplicationControllerScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchCoreV1NamespacedReplicationControllerScaleBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _patchCoreV1NamespacedReplicationControllerScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedReplicationControllerScaleBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedReplicationControllerScaleEp->patch(
                                                                        "/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
                                                                        , request);
        return v;
    }

    public function readCoreV1NamespacedReplicationControllerStatus(string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _readCoreV1NamespacedReplicationControllerStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedReplicationControllerStatusEp->get("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/status"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedReplicationControllerStatus(io_k8s_api_core_v1_ReplicationController
                                                                       _replaceCoreV1NamespacedReplicationControllerStatusBody
        ,                                                              string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceCoreV1NamespacedReplicationControllerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedReplicationControllerStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedReplicationControllerStatusEp->put("/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/status"
            , request);
        return v;
    }

    public function patchCoreV1NamespacedReplicationControllerStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                     _patchCoreV1NamespacedReplicationControllerStatusBody
        ,                                                            string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1NamespacedReplicationControllerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedReplicationControllerStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedReplicationControllerStatusEp->patch(
                                                                         "/api/v1/namespaces/{namespace}/replicationcontrollers/{name}/status"
                                                                         , request);
        return v;
    }

    public function listCoreV1NamespacedResourceQuota(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedResourceQuotaEp->get("/api/v1/namespaces/{namespace}/resourcequotas", message =
            request);
        return v;
    }

    public function createCoreV1NamespacedResourceQuota(io_k8s_api_core_v1_ResourceQuota
                                                        _createCoreV1NamespacedResourceQuotaBody
        ,                                               string namespace)
                        returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedResourceQuotaBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedResourceQuotaEp->post("/api/v1/namespaces/{namespace}/resourcequotas", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedResourceQuota(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedResourceQuotaEp->delete("/api/v1/namespaces/{namespace}/resourcequotas"
            , request);
        return v;
    }

    public function readCoreV1NamespacedResourceQuota(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedResourceQuotaEp->get("/api/v1/namespaces/{namespace}/resourcequotas/{name}",
            message = request);
        return v;
    }

    public function replaceCoreV1NamespacedResourceQuota(io_k8s_api_core_v1_ResourceQuota
                                                         _replaceCoreV1NamespacedResourceQuotaBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _replaceCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedResourceQuotaBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedResourceQuotaEp->put("/api/v1/namespaces/{namespace}/resourcequotas/{name}",
            request);
        return v;
    }

    public function deleteCoreV1NamespacedResourceQuota(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                        _deleteCoreV1NamespacedResourceQuotaBody
        ,                                               string name, string
                                                        namespace) returns http
                :Response|error {
        endpoint http:Client _deleteCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedResourceQuotaBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedResourceQuotaEp->delete("/api/v1/namespaces/{namespace}/resourcequotas/{name}",
            request);
        return v;
    }

    public function patchCoreV1NamespacedResourceQuota(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                       _patchCoreV1NamespacedResourceQuotaBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedResourceQuotaBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedResourceQuotaEp->patch("/api/v1/namespaces/{namespace}/resourcequotas/{name}",
            request);
        return v;
    }

    public function readCoreV1NamespacedResourceQuotaStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedResourceQuotaStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedResourceQuotaStatusEp->get("/api/v1/namespaces/{namespace}/resourcequotas/{name}/status"
            , message = request);
        return v;
    }

    public function replaceCoreV1NamespacedResourceQuotaStatus(io_k8s_api_core_v1_ResourceQuota
                                                               _replaceCoreV1NamespacedResourceQuotaStatusBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedResourceQuotaStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedResourceQuotaStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedResourceQuotaStatusEp->put("/api/v1/namespaces/{namespace}/resourcequotas/{name}/status"
            , request);
        return v;
    }

    public function patchCoreV1NamespacedResourceQuotaStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                             _patchCoreV1NamespacedResourceQuotaStatusBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedResourceQuotaStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedResourceQuotaStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedResourceQuotaStatusEp->patch(
                                                                 "/api/v1/namespaces/{namespace}/resourcequotas/{name}/status"
                                                                 , request);
        return v;
    }

    public function listCoreV1NamespacedSecret(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedSecretEp->get("/api/v1/namespaces/{namespace}/secrets", message = request);
        return v;
    }

    public function createCoreV1NamespacedSecret(io_k8s_api_core_v1_Secret _createCoreV1NamespacedSecretBody, string
        namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedSecretBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedSecretEp->post("/api/v1/namespaces/{namespace}/secrets", request);
        return v;
    }

    public function deleteCoreV1CollectionNamespacedSecret(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedSecretEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedSecretEp->delete("/api/v1/namespaces/{namespace}/secrets", request);
        return v;
    }

    public function readCoreV1NamespacedSecret(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedSecretEp->get("/api/v1/namespaces/{namespace}/secrets/{name}", message = request);
        return v;
    }

    public function replaceCoreV1NamespacedSecret(io_k8s_api_core_v1_Secret _replaceCoreV1NamespacedSecretBody, string
        name,                                     string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedSecretBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedSecretEp->put("/api/v1/namespaces/{namespace}/secrets/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedSecret(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                 _deleteCoreV1NamespacedSecretBody,
                                                 string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedSecretBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedSecretEp->delete("/api/v1/namespaces/{namespace}/secrets/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedSecret(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                _patchCoreV1NamespacedSecretBody,
                                                string name, string namespace) returns http
                :Response|error {
        endpoint http:Client _patchCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedSecretBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedSecretEp->patch("/api/v1/namespaces/{namespace}/secrets/{name}", request);
        return v;
    }

    public function listCoreV1NamespacedServiceAccount(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedServiceAccountEp->get("/api/v1/namespaces/{namespace}/serviceaccounts", message =
            request);
        return v;
    }

    public function createCoreV1NamespacedServiceAccount(io_k8s_api_core_v1_ServiceAccount
                                                         _createCoreV1NamespacedServiceAccountBody
        ,                                                string namespace)
                        returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedServiceAccountBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedServiceAccountEp->post("/api/v1/namespaces/{namespace}/serviceaccounts", request)
        ;
        return v;
    }

    public function deleteCoreV1CollectionNamespacedServiceAccount(string namespace) returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNamespacedServiceAccountEp->delete(
                                                                       "/api/v1/namespaces/{namespace}/serviceaccounts",
                                                                       request);
        return v;
    }

    public function readCoreV1NamespacedServiceAccount(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedServiceAccountEp->get("/api/v1/namespaces/{namespace}/serviceaccounts/{name}",
            message = request);
        return v;
    }

    public function replaceCoreV1NamespacedServiceAccount(io_k8s_api_core_v1_ServiceAccount
                                                          _replaceCoreV1NamespacedServiceAccountBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedServiceAccountBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedServiceAccountEp->put("/api/v1/namespaces/{namespace}/serviceaccounts/{name}",
            request);
        return v;
    }

    public function deleteCoreV1NamespacedServiceAccount(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                         _deleteCoreV1NamespacedServiceAccountBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _deleteCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedServiceAccountBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedServiceAccountEp->delete("/api/v1/namespaces/{namespace}/serviceaccounts/{name}",
            request);
        return v;
    }

    public function patchCoreV1NamespacedServiceAccount(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                        _patchCoreV1NamespacedServiceAccountBody
        ,                                               string name, string
                                                        namespace) returns http
                :Response|error {
        endpoint http:Client _patchCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedServiceAccountBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedServiceAccountEp->patch("/api/v1/namespaces/{namespace}/serviceaccounts/{name}",
            request);
        return v;
    }

    public function listCoreV1NamespacedService(string namespace) returns http:Response|error {
        endpoint http:Client _listCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NamespacedServiceEp->get("/api/v1/namespaces/{namespace}/services", message = request);
        return v;
    }

    public function createCoreV1NamespacedService(io_k8s_api_core_v1_Service _createCoreV1NamespacedServiceBody, string
        namespace) returns http:Response|error {
        endpoint http:Client _createCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NamespacedServiceBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NamespacedServiceEp->post("/api/v1/namespaces/{namespace}/services", request);
        return v;
    }

    public function readCoreV1NamespacedService(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedServiceEp->get("/api/v1/namespaces/{namespace}/services/{name}", message = request)
        ;
        return v;
    }

    public function replaceCoreV1NamespacedService(io_k8s_api_core_v1_Service _replaceCoreV1NamespacedServiceBody,
                                                   string name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedServiceBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedServiceEp->put("/api/v1/namespaces/{namespace}/services/{name}", request);
        return v;
    }

    public function deleteCoreV1NamespacedService(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                  _deleteCoreV1NamespacedServiceBody
        ,                                         string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespacedServiceBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespacedServiceEp->delete("/api/v1/namespaces/{namespace}/services/{name}", request);
        return v;
    }

    public function patchCoreV1NamespacedService(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                 _patchCoreV1NamespacedServiceBody,
                                                 string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedServiceBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedServiceEp->patch("/api/v1/namespaces/{namespace}/services/{name}", request);
        return v;
    }

    public function connectCoreV1GetNamespacedServiceProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedServiceProxyEp->get("/api/v1/namespaces/{namespace}/services/{name}/proxy",
            message = request);
        return v;
    }

    public function connectCoreV1PutNamespacedServiceProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PutNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNamespacedServiceProxyEp->put("/api/v1/namespaces/{namespace}/services/{name}/proxy",
            request);
        return v;
    }

    public function connectCoreV1PostNamespacedServiceProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedServiceProxyEp->post("/api/v1/namespaces/{namespace}/services/{name}/proxy",
            request);
        return v;
    }

    public function connectCoreV1DeleteNamespacedServiceProxy(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _connectCoreV1DeleteNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNamespacedServiceProxyEp->delete(
                                                                  "/api/v1/namespaces/{namespace}/services/{name}/proxy"
                                                                  , request);
        return v;
    }

    public function connectCoreV1OptionsNamespacedServiceProxy(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _connectCoreV1OptionsNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNamespacedServiceProxyEp->options(
                                                                   "/api/v1/namespaces/{namespace}/services/{name}/proxy"
                                                                   , message = request);
        return v;
    }

    public function connectCoreV1HeadNamespacedServiceProxy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _connectCoreV1HeadNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNamespacedServiceProxyEp->head("/api/v1/namespaces/{namespace}/services/{name}/proxy",
            message = request);
        return v;
    }

    public function connectCoreV1PatchNamespacedServiceProxy(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _connectCoreV1PatchNamespacedServiceProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNamespacedServiceProxyEp->patch(
                                                                 "/api/v1/namespaces/{namespace}/services/{name}/proxy",
                                                                 request);
        return v;
    }

    public function connectCoreV1GetNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1GetNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNamespacedServiceProxyWithPathEp->get("/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
            , message = request);
        return v;
    }

    public function connectCoreV1PutNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1PutNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNamespacedServiceProxyWithPathEp->put("/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
            , request);
        return v;
    }

    public function connectCoreV1PostNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1PostNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNamespacedServiceProxyWithPathEp->post(
                                                                        "/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
                                                                        , request);
        return v;
    }

    public function connectCoreV1DeleteNamespacedServiceProxyWithPath(string name, string namespace, string path)
                        returns http:Response|error {
        endpoint http:Client _connectCoreV1DeleteNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNamespacedServiceProxyWithPathEp->delete(
                                                                          "/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
                                                                          , request);
        return v;
    }

    public function connectCoreV1OptionsNamespacedServiceProxyWithPath(string name, string namespace, string path)
                        returns http:Response|error {
        endpoint http:Client _connectCoreV1OptionsNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNamespacedServiceProxyWithPathEp->options(
                                                                           "/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
                                                                           , message = request);
        return v;
    }

    public function connectCoreV1HeadNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1HeadNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNamespacedServiceProxyWithPathEp->head(
                                                                        "/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
                                                                        , message = request);
        return v;
    }

    public function connectCoreV1PatchNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http
                :Response|error {
        endpoint http:Client _connectCoreV1PatchNamespacedServiceProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNamespacedServiceProxyWithPathEp->patch(
                                                                         "/api/v1/namespaces/{namespace}/services/{name}/proxy/{path}"
                                                                         , request);
        return v;
    }

    public function readCoreV1NamespacedServiceStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespacedServiceStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespacedServiceStatusEp->get("/api/v1/namespaces/{namespace}/services/{name}/status",
            message = request);
        return v;
    }

    public function replaceCoreV1NamespacedServiceStatus(io_k8s_api_core_v1_Service
                                                         _replaceCoreV1NamespacedServiceStatusBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _replaceCoreV1NamespacedServiceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespacedServiceStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespacedServiceStatusEp->put("/api/v1/namespaces/{namespace}/services/{name}/status",
            request);
        return v;
    }

    public function patchCoreV1NamespacedServiceStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                       _patchCoreV1NamespacedServiceStatusBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1NamespacedServiceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespacedServiceStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespacedServiceStatusEp->patch("/api/v1/namespaces/{namespace}/services/{name}/status",
            request);
        return v;
    }

    public function readCoreV1Namespace(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespaceEp->get("/api/v1/namespaces/{name}", message = request);
        return v;
    }

    public function replaceCoreV1Namespace(io_k8s_api_core_v1_Namespace _replaceCoreV1NamespaceBody, string name)
                        returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespaceBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespaceEp->put("/api/v1/namespaces/{name}", request);
        return v;
    }

    public function deleteCoreV1Namespace(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions _deleteCoreV1NamespaceBody,
                                          string name) returns http:Response|error {
        endpoint http:Client _deleteCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NamespaceBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NamespaceEp->delete("/api/v1/namespaces/{name}", request);
        return v;
    }

    public function patchCoreV1Namespace(io_k8s_apimachinery_pkg_apis_meta_v1_Patch _patchCoreV1NamespaceBody, string
        name) returns http:Response|error {
        endpoint http:Client _patchCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespaceBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespaceEp->patch("/api/v1/namespaces/{name}", request);
        return v;
    }

    public function replaceCoreV1NamespaceFinalize(io_k8s_api_core_v1_Namespace _replaceCoreV1NamespaceFinalizeBody,
                                                   string name) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespaceFinalizeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespaceFinalizeBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespaceFinalizeEp->put("/api/v1/namespaces/{name}/finalize", request);
        return v;
    }

    public function readCoreV1NamespaceStatus(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1NamespaceStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NamespaceStatusEp->get("/api/v1/namespaces/{name}/status", message = request);
        return v;
    }

    public function replaceCoreV1NamespaceStatus(io_k8s_api_core_v1_Namespace _replaceCoreV1NamespaceStatusBody, string
        name) returns http:Response|error {
        endpoint http:Client _replaceCoreV1NamespaceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NamespaceStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NamespaceStatusEp->put("/api/v1/namespaces/{name}/status", request);
        return v;
    }

    public function patchCoreV1NamespaceStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                               _patchCoreV1NamespaceStatusBody, string name) returns http:Response|error
    {
        endpoint http:Client _patchCoreV1NamespaceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NamespaceStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NamespaceStatusEp->patch("/api/v1/namespaces/{name}/status", request);
        return v;
    }

    public function listCoreV1Node() returns http:Response|error {
        endpoint http:Client _listCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1NodeEp->get("/api/v1/nodes", message = request);
        return v;
    }

    public function createCoreV1Node(io_k8s_api_core_v1_Node _createCoreV1NodeBody) returns http:Response|error {
        endpoint http:Client _createCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1NodeBody);

        // TODO: Update the request as needed
        var v = _createCoreV1NodeEp->post("/api/v1/nodes", request);
        return v;
    }

    public function deleteCoreV1CollectionNode() returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionNodeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionNodeEp->delete("/api/v1/nodes", request);
        return v;
    }

    public function readCoreV1Node(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NodeEp->get("/api/v1/nodes/{name}", message = request);
        return v;
    }

    public function replaceCoreV1Node(io_k8s_api_core_v1_Node _replaceCoreV1NodeBody, string name) returns http:Response
                |error {
        endpoint http:Client _replaceCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NodeBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NodeEp->put("/api/v1/nodes/{name}", request);
        return v;
    }

    public function deleteCoreV1Node(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions _deleteCoreV1NodeBody, string
        name) returns http:Response|error {
        endpoint http:Client _deleteCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1NodeBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1NodeEp->delete("/api/v1/nodes/{name}", request);
        return v;
    }

    public function patchCoreV1Node(io_k8s_apimachinery_pkg_apis_meta_v1_Patch _patchCoreV1NodeBody, string name)
                        returns http:Response|error {
        endpoint http:Client _patchCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NodeBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NodeEp->patch("/api/v1/nodes/{name}", request);
        return v;
    }

    public function connectCoreV1GetNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNodeProxyEp->get("/api/v1/nodes/{name}/proxy", message = request);
        return v;
    }

    public function connectCoreV1PutNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1PutNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNodeProxyEp->put("/api/v1/nodes/{name}/proxy", request);
        return v;
    }

    public function connectCoreV1PostNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNodeProxyEp->post("/api/v1/nodes/{name}/proxy", request);
        return v;
    }

    public function connectCoreV1DeleteNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1DeleteNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNodeProxyEp->delete("/api/v1/nodes/{name}/proxy", request);
        return v;
    }

    public function connectCoreV1OptionsNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1OptionsNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNodeProxyEp->options("/api/v1/nodes/{name}/proxy", message = request);
        return v;
    }

    public function connectCoreV1HeadNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1HeadNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNodeProxyEp->head("/api/v1/nodes/{name}/proxy", message = request);
        return v;
    }

    public function connectCoreV1PatchNodeProxy(string name) returns http:Response|error {
        endpoint http:Client _connectCoreV1PatchNodeProxyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNodeProxyEp->patch("/api/v1/nodes/{name}/proxy", request);
        return v;
    }

    public function connectCoreV1GetNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1GetNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1GetNodeProxyWithPathEp->get("/api/v1/nodes/{name}/proxy/{path}", message = request);
        return v;
    }

    public function connectCoreV1PutNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1PutNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PutNodeProxyWithPathEp->put("/api/v1/nodes/{name}/proxy/{path}", request);
        return v;
    }

    public function connectCoreV1PostNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1PostNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PostNodeProxyWithPathEp->post("/api/v1/nodes/{name}/proxy/{path}", request);
        return v;
    }

    public function connectCoreV1DeleteNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1DeleteNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1DeleteNodeProxyWithPathEp->delete("/api/v1/nodes/{name}/proxy/{path}", request);
        return v;
    }

    public function connectCoreV1OptionsNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1OptionsNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1OptionsNodeProxyWithPathEp->options("/api/v1/nodes/{name}/proxy/{path}", message = request
        );
        return v;
    }

    public function connectCoreV1HeadNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1HeadNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1HeadNodeProxyWithPathEp->head("/api/v1/nodes/{name}/proxy/{path}", message = request);
        return v;
    }

    public function connectCoreV1PatchNodeProxyWithPath(string name, string path) returns http:Response|error {
        endpoint http:Client _connectCoreV1PatchNodeProxyWithPathEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _connectCoreV1PatchNodeProxyWithPathEp->patch("/api/v1/nodes/{name}/proxy/{path}", request);
        return v;
    }

    public function readCoreV1NodeStatus(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1NodeStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1NodeStatusEp->get("/api/v1/nodes/{name}/status", message = request);
        return v;
    }

    public function replaceCoreV1NodeStatus(io_k8s_api_core_v1_Node _replaceCoreV1NodeStatusBody, string name) returns http
                :Response|error {
        endpoint http:Client _replaceCoreV1NodeStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1NodeStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1NodeStatusEp->put("/api/v1/nodes/{name}/status", request);
        return v;
    }

    public function patchCoreV1NodeStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch _patchCoreV1NodeStatusBody, string
        name) returns http:Response|error {
        endpoint http:Client _patchCoreV1NodeStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1NodeStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1NodeStatusEp->patch("/api/v1/nodes/{name}/status", request);
        return v;
    }

    public function listCoreV1PersistentVolumeClaimForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1PersistentVolumeClaimForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1PersistentVolumeClaimForAllNamespacesEp->get("/api/v1/persistentvolumeclaims", message =
            request);
        return v;
    }

    public function listCoreV1PersistentVolume() returns http:Response|error {
        endpoint http:Client _listCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1PersistentVolumeEp->get("/api/v1/persistentvolumes", message = request);
        return v;
    }

    public function createCoreV1PersistentVolume(io_k8s_api_core_v1_PersistentVolume _createCoreV1PersistentVolumeBody)
                        returns http:Response|error {
        endpoint http:Client _createCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCoreV1PersistentVolumeBody);

        // TODO: Update the request as needed
        var v = _createCoreV1PersistentVolumeEp->post("/api/v1/persistentvolumes", request);
        return v;
    }

    public function deleteCoreV1CollectionPersistentVolume() returns http:Response|error {
        endpoint http:Client _deleteCoreV1CollectionPersistentVolumeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteCoreV1CollectionPersistentVolumeEp->delete("/api/v1/persistentvolumes", request);
        return v;
    }

    public function readCoreV1PersistentVolume(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1PersistentVolumeEp->get("/api/v1/persistentvolumes/{name}", message = request);
        return v;
    }

    public function replaceCoreV1PersistentVolume(io_k8s_api_core_v1_PersistentVolume _replaceCoreV1PersistentVolumeBody
        ,                                         string name) returns http:Response|error {
        endpoint http:Client _replaceCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1PersistentVolumeBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1PersistentVolumeEp->put("/api/v1/persistentvolumes/{name}", request);
        return v;
    }

    public function deleteCoreV1PersistentVolume(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                 _deleteCoreV1PersistentVolumeBody,
                                                 string name) returns http:Response|
                error {
        endpoint http:Client _deleteCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCoreV1PersistentVolumeBody);

        // TODO: Update the request as needed
        var v = _deleteCoreV1PersistentVolumeEp->delete("/api/v1/persistentvolumes/{name}", request);
        return v;
    }

    public function patchCoreV1PersistentVolume(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                _patchCoreV1PersistentVolumeBody,
                                                string name) returns http:Response|
                error {
        endpoint http:Client _patchCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1PersistentVolumeBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1PersistentVolumeEp->patch("/api/v1/persistentvolumes/{name}", request);
        return v;
    }

    public function readCoreV1PersistentVolumeStatus(string name) returns http:Response|error {
        endpoint http:Client _readCoreV1PersistentVolumeStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readCoreV1PersistentVolumeStatusEp->get("/api/v1/persistentvolumes/{name}/status", message = request);
        return v;
    }

    public function replaceCoreV1PersistentVolumeStatus(io_k8s_api_core_v1_PersistentVolume
                                                        _replaceCoreV1PersistentVolumeStatusBody
        ,                                               string name) returns http
                :Response|error {
        endpoint http:Client _replaceCoreV1PersistentVolumeStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCoreV1PersistentVolumeStatusBody);

        // TODO: Update the request as needed
        var v = _replaceCoreV1PersistentVolumeStatusEp->put("/api/v1/persistentvolumes/{name}/status", request);
        return v;
    }

    public function patchCoreV1PersistentVolumeStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                      _patchCoreV1PersistentVolumeStatusBody
        ,                                             string name) returns http:
                Response|error {
        endpoint http:Client _patchCoreV1PersistentVolumeStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCoreV1PersistentVolumeStatusBody);

        // TODO: Update the request as needed
        var v = _patchCoreV1PersistentVolumeStatusEp->patch("/api/v1/persistentvolumes/{name}/status", request);
        return v;
    }

    public function listCoreV1PodForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1PodForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1PodForAllNamespacesEp->get("/api/v1/pods", message = request);
        return v;
    }

    public function listCoreV1PodTemplateForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1PodTemplateForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1PodTemplateForAllNamespacesEp->get("/api/v1/podtemplates", message = request);
        return v;
    }

    public function listCoreV1ReplicationControllerForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1ReplicationControllerForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ReplicationControllerForAllNamespacesEp->get("/api/v1/replicationcontrollers", message =
            request);
        return v;
    }

    public function listCoreV1ResourceQuotaForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1ResourceQuotaForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ResourceQuotaForAllNamespacesEp->get("/api/v1/resourcequotas", message = request);
        return v;
    }

    public function listCoreV1SecretForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1SecretForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1SecretForAllNamespacesEp->get("/api/v1/secrets", message = request);
        return v;
    }

    public function listCoreV1ServiceAccountForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1ServiceAccountForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ServiceAccountForAllNamespacesEp->get("/api/v1/serviceaccounts", message = request);
        return v;
    }

    public function listCoreV1ServiceForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listCoreV1ServiceForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listCoreV1ServiceForAllNamespacesEp->get("/api/v1/services", message = request);
        return v;
    }

    public function watchCoreV1ConfigMapListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1ConfigMapListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1ConfigMapListForAllNamespacesEp->get("/api/v1/watch/configmaps", message = request);
        return v;
    }

    public function watchCoreV1EndpointsListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1EndpointsListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1EndpointsListForAllNamespacesEp->get("/api/v1/watch/endpoints", message = request);
        return v;
    }

    public function watchCoreV1EventListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1EventListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1EventListForAllNamespacesEp->get("/api/v1/watch/events", message = request);
        return v;
    }

    public function watchCoreV1LimitRangeListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1LimitRangeListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1LimitRangeListForAllNamespacesEp->get("/api/v1/watch/limitranges", message = request);
        return v;
    }

    public function watchCoreV1NamespaceList() returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespaceListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespaceListEp->get("/api/v1/watch/namespaces", message = request);
        return v;
    }

    public function watchCoreV1NamespacedConfigMapList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedConfigMapListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedConfigMapListEp->get("/api/v1/watch/namespaces/{namespace}/configmaps", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedConfigMap(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedConfigMapEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedConfigMapEp->get("/api/v1/watch/namespaces/{namespace}/configmaps/{name}", message
            = request);
        return v;
    }

    public function watchCoreV1NamespacedEndpointsList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedEndpointsListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedEndpointsListEp->get("/api/v1/watch/namespaces/{namespace}/endpoints", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedEndpoints(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedEndpointsEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedEndpointsEp->get("/api/v1/watch/namespaces/{namespace}/endpoints/{name}", message
            = request);
        return v;
    }

    public function watchCoreV1NamespacedEventList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedEventListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedEventListEp->get("/api/v1/watch/namespaces/{namespace}/events", message = request)
        ;
        return v;
    }

    public function watchCoreV1NamespacedEvent(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedEventEp->get("/api/v1/watch/namespaces/{namespace}/events/{name}", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedLimitRangeList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedLimitRangeListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedLimitRangeListEp->get("/api/v1/watch/namespaces/{namespace}/limitranges", message
            = request);
        return v;
    }

    public function watchCoreV1NamespacedLimitRange(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedLimitRangeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedLimitRangeEp->get("/api/v1/watch/namespaces/{namespace}/limitranges/{name}",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedPersistentVolumeClaimList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedPersistentVolumeClaimListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPersistentVolumeClaimListEp->get("/api/v1/watch/namespaces/{namespace}/persistentvolumeclaims"
            , message = request);
        return v;
    }

    public function watchCoreV1NamespacedPersistentVolumeClaim(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPersistentVolumeClaimEp->get("/api/v1/watch/namespaces/{namespace}/persistentvolumeclaims/{name}"
            , message = request);
        return v;
    }

    public function watchCoreV1NamespacedPodList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedPodListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPodListEp->get("/api/v1/watch/namespaces/{namespace}/pods", message = request);
        return v;
    }

    public function watchCoreV1NamespacedPod(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedPodEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPodEp->get("/api/v1/watch/namespaces/{namespace}/pods/{name}", message = request);
        return v;
    }

    public function watchCoreV1NamespacedPodTemplateList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedPodTemplateListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPodTemplateListEp->get("/api/v1/watch/namespaces/{namespace}/podtemplates",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedPodTemplate(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedPodTemplateEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedPodTemplateEp->get("/api/v1/watch/namespaces/{namespace}/podtemplates/{name}",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedReplicationControllerList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedReplicationControllerListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedReplicationControllerListEp->get("/api/v1/watch/namespaces/{namespace}/replicationcontrollers"
            , message = request);
        return v;
    }

    public function watchCoreV1NamespacedReplicationController(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchCoreV1NamespacedReplicationControllerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedReplicationControllerEp->get("/api/v1/watch/namespaces/{namespace}/replicationcontrollers/{name}"
            , message = request);
        return v;
    }

    public function watchCoreV1NamespacedResourceQuotaList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedResourceQuotaListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedResourceQuotaListEp->get("/api/v1/watch/namespaces/{namespace}/resourcequotas",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedResourceQuota(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedResourceQuotaEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedResourceQuotaEp->get("/api/v1/watch/namespaces/{namespace}/resourcequotas/{name}",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedSecretList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedSecretListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedSecretListEp->get("/api/v1/watch/namespaces/{namespace}/secrets", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedSecret(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedSecretEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedSecretEp->get("/api/v1/watch/namespaces/{namespace}/secrets/{name}", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedServiceAccountList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedServiceAccountListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedServiceAccountListEp->get("/api/v1/watch/namespaces/{namespace}/serviceaccounts",
            message = request);
        return v;
    }

    public function watchCoreV1NamespacedServiceAccount(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedServiceAccountEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedServiceAccountEp->get("/api/v1/watch/namespaces/{namespace}/serviceaccounts/{name}"
            , message = request);
        return v;
    }

    public function watchCoreV1NamespacedServiceList(string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedServiceListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedServiceListEp->get("/api/v1/watch/namespaces/{namespace}/services", message =
            request);
        return v;
    }

    public function watchCoreV1NamespacedService(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespacedServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespacedServiceEp->get("/api/v1/watch/namespaces/{namespace}/services/{name}", message =
            request);
        return v;
    }

    public function watchCoreV1Namespace(string name) returns http:Response|error {
        endpoint http:Client _watchCoreV1NamespaceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NamespaceEp->get("/api/v1/watch/namespaces/{name}", message = request);
        return v;
    }

    public function watchCoreV1NodeList() returns http:Response|error {
        endpoint http:Client _watchCoreV1NodeListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NodeListEp->get("/api/v1/watch/nodes", message = request);
        return v;
    }

    public function watchCoreV1Node(string name) returns http:Response|error {
        endpoint http:Client _watchCoreV1NodeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1NodeEp->get("/api/v1/watch/nodes/{name}", message = request);
        return v;
    }

    public function watchCoreV1PersistentVolumeClaimListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1PersistentVolumeClaimListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1PersistentVolumeClaimListForAllNamespacesEp->get("/api/v1/watch/persistentvolumeclaims",
            message = request);
        return v;
    }

    public function watchCoreV1PersistentVolumeList() returns http:Response|error {
        endpoint http:Client _watchCoreV1PersistentVolumeListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1PersistentVolumeListEp->get("/api/v1/watch/persistentvolumes", message = request);
        return v;
    }

    public function watchCoreV1PersistentVolume(string name) returns http:Response|error {
        endpoint http:Client _watchCoreV1PersistentVolumeEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1PersistentVolumeEp->get("/api/v1/watch/persistentvolumes/{name}", message = request);
        return v;
    }

    public function watchCoreV1PodListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1PodListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1PodListForAllNamespacesEp->get("/api/v1/watch/pods", message = request);
        return v;
    }

    public function watchCoreV1PodTemplateListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1PodTemplateListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1PodTemplateListForAllNamespacesEp->get("/api/v1/watch/podtemplates", message = request);
        return v;
    }

    public function watchCoreV1ReplicationControllerListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1ReplicationControllerListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1ReplicationControllerListForAllNamespacesEp->get("/api/v1/watch/replicationcontrollers",
            message = request);
        return v;
    }

    public function watchCoreV1ResourceQuotaListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1ResourceQuotaListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1ResourceQuotaListForAllNamespacesEp->get("/api/v1/watch/resourcequotas", message = request);
        return v;
    }

    public function watchCoreV1SecretListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1SecretListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1SecretListForAllNamespacesEp->get("/api/v1/watch/secrets", message = request);
        return v;
    }

    public function watchCoreV1ServiceAccountListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1ServiceAccountListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1ServiceAccountListForAllNamespacesEp->get("/api/v1/watch/serviceaccounts", message = request
        );
        return v;
    }

    public function watchCoreV1ServiceListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchCoreV1ServiceListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchCoreV1ServiceListForAllNamespacesEp->get("/api/v1/watch/services", message = request);
        return v;
    }

    public function getAPIVersions() returns http:Response|error {
        endpoint http:Client _getAPIVersionsEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAPIVersionsEp->get("/apis/", message = request);
        return v;
    }

    public function getAdmissionregistrationAPIGroup() returns http:Response|error {
        endpoint http:Client _getAdmissionregistrationAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAdmissionregistrationAPIGroupEp->get("/apis/admissionregistration_k8s_io/", message = request);
        return v;
    }

    public function getAdmissionregistrationV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getAdmissionregistrationV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAdmissionregistrationV1beta1APIResourcesEp->get("/apis/admissionregistration_k8s_io/v1beta1/",
            message = request);
        return v;
    }

    public function listAdmissionregistrationV1beta1MutatingWebhookConfiguration() returns http:Response|error {
        endpoint http:Client _listAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations"
            , message = request);
        return v;
    }

    public function createAdmissionregistrationV1beta1MutatingWebhookConfiguration(
                        io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration
                        _createAdmissionregistrationV1beta1MutatingWebhookConfigurationBody) returns http:Response|error
    {
        endpoint http:Client _createAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAdmissionregistrationV1beta1MutatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _createAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->post(
                                                                                       "/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations"
                                                                                       , request);
        return v;
    }

    public function deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfiguration() returns http:Response|
                error {
        endpoint http:Client _deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfigurationEp = self.clientEp
        .client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfigurationEp->delete(
                                                                                                 "/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations"
                                                                                                 , request);
        return v;
    }

    public function readAdmissionregistrationV1beta1MutatingWebhookConfiguration(string name) returns http:Response|
                error {
        endpoint http:Client _readAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations/{name}"
            , message = request);
        return v;
    }

    public function replaceAdmissionregistrationV1beta1MutatingWebhookConfiguration(
                        io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration
                        _replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:
                Response|error {
        endpoint http:Client _replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->put("/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations/{name}"
            , request);
        return v;
    }

    public function deleteAdmissionregistrationV1beta1MutatingWebhookConfiguration(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:
                Response|error {
        endpoint http:Client _deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->delete(
                                                                                       "/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations/{name}"
                                                                                       , request);
        return v;
    }

    public function patchAdmissionregistrationV1beta1MutatingWebhookConfiguration(
                        io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                        _patchAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:
                Response|error {
        endpoint http:Client _patchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAdmissionregistrationV1beta1MutatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _patchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->patch(
                                                                                      "/apis/admissionregistration_k8s_io/v1beta1/mutatingwebhookconfigurations/{name}"
                                                                                      , request);
        return v;
    }

    public function listAdmissionregistrationV1beta1ValidatingWebhookConfiguration() returns http:Response|error {
        endpoint http:Client _listAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations"
            , message = request);
        return v;
    }

    public function createAdmissionregistrationV1beta1ValidatingWebhookConfiguration(
                        io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration
                        _createAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody) returns http:Response|
                error {
        endpoint http:Client _createAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _createAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->post(
                                                                                         "/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations"
                                                                                         , request);
        return v;
    }

    public function deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfiguration() returns http:Response|
                error {
        endpoint http:Client _deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfigurationEp = self.
        clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfigurationEp->delete(
                                                                                                   "/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations"
                                                                                                   , request);
        return v;
    }

    public function readAdmissionregistrationV1beta1ValidatingWebhookConfiguration(string name) returns http:Response|
                error {
        endpoint http:Client _readAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations/{name}"
            , message = request);
        return v;
    }

    public function replaceAdmissionregistrationV1beta1ValidatingWebhookConfiguration(
                        io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration
                        _replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http
                :Response|error {
        endpoint http:Client _replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client
        ;
        http:Request request = new;
        request.setPayload(check <json>_replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->put("/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations/{name}"
            , request);
        return v;
    }

    public function deleteAdmissionregistrationV1beta1ValidatingWebhookConfiguration(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http
                :Response|error {
        endpoint http:Client _deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->delete(
                                                                                         "/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations/{name}"
                                                                                         , request);
        return v;
    }

    public function patchAdmissionregistrationV1beta1ValidatingWebhookConfiguration(
                        io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                        _patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http:
                Response|error {
        endpoint http:Client _patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody);

        // TODO: Update the request as needed
        var v = _patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->patch(
                                                                                        "/apis/admissionregistration_k8s_io/v1beta1/validatingwebhookconfigurations/{name}"
                                                                                        , request);
        return v;
    }

    public function watchAdmissionregistrationV1beta1MutatingWebhookConfigurationList() returns http:Response|error {
        endpoint http:Client _watchAdmissionregistrationV1beta1MutatingWebhookConfigurationListEp = self.clientEp.client
        ;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAdmissionregistrationV1beta1MutatingWebhookConfigurationListEp->get("/apis/admissionregistration_k8s_io/v1beta1/watch/mutatingwebhookconfigurations"
            , message = request);
        return v;
    }

    public function watchAdmissionregistrationV1beta1MutatingWebhookConfiguration(string name) returns http:Response|
                error {
        endpoint http:Client _watchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/watch/mutatingwebhookconfigurations/{name}"
            , message = request);
        return v;
    }

    public function watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationList() returns http:Response|error {
        endpoint http:Client _watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationListEp = self.clientEp.
        client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationListEp->get("/apis/admissionregistration_k8s_io/v1beta1/watch/validatingwebhookconfigurations"
            , message = request);
        return v;
    }

    public function watchAdmissionregistrationV1beta1ValidatingWebhookConfiguration(string name) returns http:Response|
                error {
        endpoint http:Client _watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get("/apis/admissionregistration_k8s_io/v1beta1/watch/validatingwebhookconfigurations/{name}"
            , message = request);
        return v;
    }

    public function getApiextensionsAPIGroup() returns http:Response|error {
        endpoint http:Client _getApiextensionsAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getApiextensionsAPIGroupEp->get("/apis/apiextensions_k8s_io/", message = request);
        return v;
    }

    public function getApiextensionsV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getApiextensionsV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getApiextensionsV1beta1APIResourcesEp->get("/apis/apiextensions_k8s_io/v1beta1/", message = request);
        return v;
    }

    public function listApiextensionsV1beta1CustomResourceDefinition() returns http:Response|error {
        endpoint http:Client _listApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listApiextensionsV1beta1CustomResourceDefinitionEp->get("/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions"
            , message = request);
        return v;
    }

    public function createApiextensionsV1beta1CustomResourceDefinition(
                        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition
                        _createApiextensionsV1beta1CustomResourceDefinitionBody) returns http:Response|error {
        endpoint http:Client _createApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createApiextensionsV1beta1CustomResourceDefinitionBody);

        // TODO: Update the request as needed
        var v = _createApiextensionsV1beta1CustomResourceDefinitionEp->post(
                                                                           "/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions"
                                                                           , request);
        return v;
    }

    public function deleteApiextensionsV1beta1CollectionCustomResourceDefinition() returns http:Response|error {
        endpoint http:Client _deleteApiextensionsV1beta1CollectionCustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteApiextensionsV1beta1CollectionCustomResourceDefinitionEp->delete(
                                                                                     "/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions"
                                                                                     , request);
        return v;
    }

    public function readApiextensionsV1beta1CustomResourceDefinition(string name) returns http:Response|error {
        endpoint http:Client _readApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readApiextensionsV1beta1CustomResourceDefinitionEp->get("/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions/{name}"
            , message = request);
        return v;
    }

    public function replaceApiextensionsV1beta1CustomResourceDefinition(
                        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition
                        _replaceApiextensionsV1beta1CustomResourceDefinitionBody, string name) returns http:Response|
                error {
        endpoint http:Client _replaceApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiextensionsV1beta1CustomResourceDefinitionBody);

        // TODO: Update the request as needed
        var v = _replaceApiextensionsV1beta1CustomResourceDefinitionEp->put("/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions/{name}"
            , request);
        return v;
    }

    public function deleteApiextensionsV1beta1CustomResourceDefinition(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteApiextensionsV1beta1CustomResourceDefinitionBody, string name) returns http:Response|
                error {
        endpoint http:Client _deleteApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteApiextensionsV1beta1CustomResourceDefinitionBody);

        // TODO: Update the request as needed
        var v = _deleteApiextensionsV1beta1CustomResourceDefinitionEp->delete(
                                                                           "/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions/{name}"
                                                                           , request);
        return v;
    }

    public function patchApiextensionsV1beta1CustomResourceDefinition(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                      _patchApiextensionsV1beta1CustomResourceDefinitionBody
        ,                                                             string name) returns http:Response|error {
        endpoint http:Client _patchApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchApiextensionsV1beta1CustomResourceDefinitionBody);

        // TODO: Update the request as needed
        var v = _patchApiextensionsV1beta1CustomResourceDefinitionEp->patch(
                                                                          "/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions/{name}"
                                                                          , request);
        return v;
    }

    public function replaceApiextensionsV1beta1CustomResourceDefinitionStatus(
                        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition
                        _replaceApiextensionsV1beta1CustomResourceDefinitionStatusBody, string name) returns http:
                Response|error {
        endpoint http:Client _replaceApiextensionsV1beta1CustomResourceDefinitionStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiextensionsV1beta1CustomResourceDefinitionStatusBody);

        // TODO: Update the request as needed
        var v = _replaceApiextensionsV1beta1CustomResourceDefinitionStatusEp->put("/apis/apiextensions_k8s_io/v1beta1/customresourcedefinitions/{name}/status"
            , request);
        return v;
    }

    public function watchApiextensionsV1beta1CustomResourceDefinitionList() returns http:Response|error {
        endpoint http:Client _watchApiextensionsV1beta1CustomResourceDefinitionListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiextensionsV1beta1CustomResourceDefinitionListEp->get("/apis/apiextensions_k8s_io/v1beta1/watch/customresourcedefinitions"
            , message = request);
        return v;
    }

    public function watchApiextensionsV1beta1CustomResourceDefinition(string name) returns http:Response|error {
        endpoint http:Client _watchApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiextensionsV1beta1CustomResourceDefinitionEp->get("/apis/apiextensions_k8s_io/v1beta1/watch/customresourcedefinitions/{name}"
            , message = request);
        return v;
    }

    public function getApiregistrationAPIGroup() returns http:Response|error {
        endpoint http:Client _getApiregistrationAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getApiregistrationAPIGroupEp->get("/apis/apiregistration_k8s_io/", message = request);
        return v;
    }

    public function getApiregistrationV1APIResources() returns http:Response|error {
        endpoint http:Client _getApiregistrationV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getApiregistrationV1APIResourcesEp->get("/apis/apiregistration_k8s_io/v1/", message = request);
        return v;
    }

    public function listApiregistrationV1APIService() returns http:Response|error {
        endpoint http:Client _listApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listApiregistrationV1APIServiceEp->get("/apis/apiregistration_k8s_io/v1/apiservices", message = request
        );
        return v;
    }

    public function createApiregistrationV1APIService(io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService
                                                      _createApiregistrationV1APIServiceBody) returns http:Response|
                error {
        endpoint http:Client _createApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createApiregistrationV1APIServiceBody);

        // TODO: Update the request as needed
        var v = _createApiregistrationV1APIServiceEp->post("/apis/apiregistration_k8s_io/v1/apiservices", request);
        return v;
    }

    public function deleteApiregistrationV1CollectionAPIService() returns http:Response|error {
        endpoint http:Client _deleteApiregistrationV1CollectionAPIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteApiregistrationV1CollectionAPIServiceEp->delete("/apis/apiregistration_k8s_io/v1/apiservices",
            request);
        return v;
    }

    public function readApiregistrationV1APIService(string name) returns http:Response|error {
        endpoint http:Client _readApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readApiregistrationV1APIServiceEp->get("/apis/apiregistration_k8s_io/v1/apiservices/{name}", message =
            request);
        return v;
    }

    public function replaceApiregistrationV1APIService(io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService
                                                       _replaceApiregistrationV1APIServiceBody
        ,                                              string name) returns http
                :Response|error {
        endpoint http:Client _replaceApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiregistrationV1APIServiceBody);

        // TODO: Update the request as needed
        var v = _replaceApiregistrationV1APIServiceEp->put("/apis/apiregistration_k8s_io/v1/apiservices/{name}", request
        );
        return v;
    }

    public function deleteApiregistrationV1APIService(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                      _deleteApiregistrationV1APIServiceBody
        ,                                             string name) returns http:
                Response|error {
        endpoint http:Client _deleteApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteApiregistrationV1APIServiceBody);

        // TODO: Update the request as needed
        var v = _deleteApiregistrationV1APIServiceEp->delete("/apis/apiregistration_k8s_io/v1/apiservices/{name}",
            request);
        return v;
    }

    public function patchApiregistrationV1APIService(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                     _patchApiregistrationV1APIServiceBody
        ,                                            string name) returns http:
                Response|error {
        endpoint http:Client _patchApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchApiregistrationV1APIServiceBody);

        // TODO: Update the request as needed
        var v = _patchApiregistrationV1APIServiceEp->patch("/apis/apiregistration_k8s_io/v1/apiservices/{name}", request
        );
        return v;
    }

    public function replaceApiregistrationV1APIServiceStatus(
                        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService
                        _replaceApiregistrationV1APIServiceStatusBody,
                        string name) returns http:Response|error {
        endpoint http:Client _replaceApiregistrationV1APIServiceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiregistrationV1APIServiceStatusBody);

        // TODO: Update the request as needed
        var v = _replaceApiregistrationV1APIServiceStatusEp->put("/apis/apiregistration_k8s_io/v1/apiservices/{name}/status"
            , request);
        return v;
    }

    public function watchApiregistrationV1APIServiceList() returns http:Response|error {
        endpoint http:Client _watchApiregistrationV1APIServiceListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiregistrationV1APIServiceListEp->get("/apis/apiregistration_k8s_io/v1/watch/apiservices",
            message = request);
        return v;
    }

    public function watchApiregistrationV1APIService(string name) returns http:Response|error {
        endpoint http:Client _watchApiregistrationV1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiregistrationV1APIServiceEp->get("/apis/apiregistration_k8s_io/v1/watch/apiservices/{name}",
            message = request);
        return v;
    }

    public function getApiregistrationV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getApiregistrationV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getApiregistrationV1beta1APIResourcesEp->get("/apis/apiregistration_k8s_io/v1beta1/", message = request
        );
        return v;
    }

    public function listApiregistrationV1beta1APIService() returns http:Response|error {
        endpoint http:Client _listApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listApiregistrationV1beta1APIServiceEp->get("/apis/apiregistration_k8s_io/v1beta1/apiservices", message
            = request);
        return v;
    }

    public function createApiregistrationV1beta1APIService(
                        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService
                        _createApiregistrationV1beta1APIServiceBody) returns http:Response|error {
        endpoint http:Client _createApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createApiregistrationV1beta1APIServiceBody);

        // TODO: Update the request as needed
        var v = _createApiregistrationV1beta1APIServiceEp->post("/apis/apiregistration_k8s_io/v1beta1/apiservices",
            request);
        return v;
    }

    public function deleteApiregistrationV1beta1CollectionAPIService() returns http:Response|error {
        endpoint http:Client _deleteApiregistrationV1beta1CollectionAPIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteApiregistrationV1beta1CollectionAPIServiceEp->delete(
                                                                         "/apis/apiregistration_k8s_io/v1beta1/apiservices"
                                                                         , request);
        return v;
    }

    public function readApiregistrationV1beta1APIService(string name) returns http:Response|error {
        endpoint http:Client _readApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readApiregistrationV1beta1APIServiceEp->get("/apis/apiregistration_k8s_io/v1beta1/apiservices/{name}",
            message = request);
        return v;
    }

    public function replaceApiregistrationV1beta1APIService(
                        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService
                        _replaceApiregistrationV1beta1APIServiceBody,
                        string name) returns http:Response|error {
        endpoint http:Client _replaceApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiregistrationV1beta1APIServiceBody);

        // TODO: Update the request as needed
        var v = _replaceApiregistrationV1beta1APIServiceEp->put("/apis/apiregistration_k8s_io/v1beta1/apiservices/{name}"
            , request);
        return v;
    }

    public function deleteApiregistrationV1beta1APIService(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                           _deleteApiregistrationV1beta1APIServiceBody
        ,                                                  string name)
                        returns http:Response|error {
        endpoint http:Client _deleteApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteApiregistrationV1beta1APIServiceBody);

        // TODO: Update the request as needed
        var v = _deleteApiregistrationV1beta1APIServiceEp->delete(
                                                               "/apis/apiregistration_k8s_io/v1beta1/apiservices/{name}"
                                                               , request);
        return v;
    }

    public function patchApiregistrationV1beta1APIService(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchApiregistrationV1beta1APIServiceBody
        ,                                                 string name)
                        returns http:Response|error {
        endpoint http:Client _patchApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchApiregistrationV1beta1APIServiceBody);

        // TODO: Update the request as needed
        var v = _patchApiregistrationV1beta1APIServiceEp->patch(
                                                              "/apis/apiregistration_k8s_io/v1beta1/apiservices/{name}",
                                                              request);
        return v;
    }

    public function replaceApiregistrationV1beta1APIServiceStatus(
                        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService
                        _replaceApiregistrationV1beta1APIServiceStatusBody, string name) returns http:Response|error {
        endpoint http:Client _replaceApiregistrationV1beta1APIServiceStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceApiregistrationV1beta1APIServiceStatusBody);

        // TODO: Update the request as needed
        var v = _replaceApiregistrationV1beta1APIServiceStatusEp->put("/apis/apiregistration_k8s_io/v1beta1/apiservices/{name}/status"
            , request);
        return v;
    }

    public function watchApiregistrationV1beta1APIServiceList() returns http:Response|error {
        endpoint http:Client _watchApiregistrationV1beta1APIServiceListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiregistrationV1beta1APIServiceListEp->get("/apis/apiregistration_k8s_io/v1beta1/watch/apiservices"
            , message = request);
        return v;
    }

    public function watchApiregistrationV1beta1APIService(string name) returns http:Response|error {
        endpoint http:Client _watchApiregistrationV1beta1APIServiceEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchApiregistrationV1beta1APIServiceEp->get("/apis/apiregistration_k8s_io/v1beta1/watch/apiservices/{name}"
            , message = request);
        return v;
    }

    public function getAppsAPIGroup() returns http:Response|error {
        endpoint http:Client _getAppsAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAppsAPIGroupEp->get("/apis/apps/", message = request);
        return v;
    }

    public function getAppsV1APIResources() returns http:Response|error {
        endpoint http:Client _getAppsV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAppsV1APIResourcesEp->get("/apis/apps/v1/", message = request);
        return v;
    }

    public function listAppsV1ControllerRevisionForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1ControllerRevisionForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1ControllerRevisionForAllNamespacesEp->get("/apis/apps/v1/controllerrevisions", message =
            request);
        return v;
    }

    public function listAppsV1DaemonSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1DaemonSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1DaemonSetForAllNamespacesEp->get("/apis/apps/v1/daemonsets", message = request);
        return v;
    }

    public function listAppsV1DeploymentForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1DeploymentForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1DeploymentForAllNamespacesEp->get("/apis/apps/v1/deployments", message = request);
        return v;
    }

    public function listAppsV1NamespacedControllerRevision(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1NamespacedControllerRevisionEp->get("/apis/apps/v1/namespaces/{namespace}/controllerrevisions"
            , message = request);
        return v;
    }

    public function createAppsV1NamespacedControllerRevision(io_k8s_api_apps_v1_ControllerRevision
                                                             _createAppsV1NamespacedControllerRevisionBody
        ,                                                    string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _createAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _createAppsV1NamespacedControllerRevisionEp->post(
                                                                 "/apis/apps/v1/namespaces/{namespace}/controllerrevisions"
                                                                 , request);
        return v;
    }

    public function deleteAppsV1CollectionNamespacedControllerRevision(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1CollectionNamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1CollectionNamespacedControllerRevisionEp->delete(
                                                                           "/apis/apps/v1/namespaces/{namespace}/controllerrevisions"
                                                                           , request);
        return v;
    }

    public function readAppsV1NamespacedControllerRevision(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedControllerRevisionEp->get("/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedControllerRevision(io_k8s_api_apps_v1_ControllerRevision
                                                              _replaceAppsV1NamespacedControllerRevisionBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedControllerRevisionEp->put("/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}"
            , request);
        return v;
    }

    public function deleteAppsV1NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                             _deleteAppsV1NamespacedControllerRevisionBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1NamespacedControllerRevisionEp->delete(
                                                                 "/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}"
                                                                 , request);
        return v;
    }

    public function patchAppsV1NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                            _patchAppsV1NamespacedControllerRevisionBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedControllerRevisionEp->patch(
                                                                "/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}"
                                                                , request);
        return v;
    }

    public function listAppsV1NamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1NamespacedDaemonSetEp->get("/apis/apps/v1/namespaces/{namespace}/daemonsets", message =
            request);
        return v;
    }

    public function createAppsV1NamespacedDaemonSet(io_k8s_api_apps_v1_DaemonSet _createAppsV1NamespacedDaemonSetBody,
                                                    string namespace) returns http:Response|error {
        endpoint http:Client _createAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var v = _createAppsV1NamespacedDaemonSetEp->post("/apis/apps/v1/namespaces/{namespace}/daemonsets", request);
        return v;
    }

    public function deleteAppsV1CollectionNamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1CollectionNamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1CollectionNamespacedDaemonSetEp->delete("/apis/apps/v1/namespaces/{namespace}/daemonsets",
            request);
        return v;
    }

    public function readAppsV1NamespacedDaemonSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedDaemonSetEp->get("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}", message
            = request);
        return v;
    }

    public function replaceAppsV1NamespacedDaemonSet(io_k8s_api_apps_v1_DaemonSet _replaceAppsV1NamespacedDaemonSetBody,
                                                     string name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedDaemonSetEp->put("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}",
            request);
        return v;
    }

    public function deleteAppsV1NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                    _deleteAppsV1NamespacedDaemonSetBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1NamespacedDaemonSetEp->delete("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}",
            request);
        return v;
    }

    public function patchAppsV1NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                   _patchAppsV1NamespacedDaemonSetBody
        ,                                          string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedDaemonSetEp->patch("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}",
            request);
        return v;
    }

    public function readAppsV1NamespacedDaemonSetStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedDaemonSetStatusEp->get("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedDaemonSetStatus(io_k8s_api_apps_v1_DaemonSet
                                                           _replaceAppsV1NamespacedDaemonSetStatusBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedDaemonSetStatusEp->put("/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedDaemonSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1NamespacedDaemonSetStatusBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedDaemonSetStatusEp->patch(
                                                             "/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status"
                                                             , request);
        return v;
    }

    public function listAppsV1NamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1NamespacedDeploymentEp->get("/apis/apps/v1/namespaces/{namespace}/deployments", message =
            request);
        return v;
    }

    public function createAppsV1NamespacedDeployment(io_k8s_api_apps_v1_Deployment _createAppsV1NamespacedDeploymentBody
        ,                                            string namespace) returns http:Response|error {
        endpoint http:Client _createAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _createAppsV1NamespacedDeploymentEp->post("/apis/apps/v1/namespaces/{namespace}/deployments", request);
        return v;
    }

    public function deleteAppsV1CollectionNamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1CollectionNamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1CollectionNamespacedDeploymentEp->delete("/apis/apps/v1/namespaces/{namespace}/deployments"
            , request);
        return v;
    }

    public function readAppsV1NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedDeploymentEp->get("/apis/apps/v1/namespaces/{namespace}/deployments/{name}",
            message = request);
        return v;
    }

    public function replaceAppsV1NamespacedDeployment(io_k8s_api_apps_v1_Deployment
                                                      _replaceAppsV1NamespacedDeploymentBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _replaceAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedDeploymentEp->put("/apis/apps/v1/namespaces/{namespace}/deployments/{name}",
            request);
        return v;
    }

    public function deleteAppsV1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                     _deleteAppsV1NamespacedDeploymentBody
        ,                                            string name, string
                                                     namespace) returns http:
                Response|error {
        endpoint http:Client _deleteAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1NamespacedDeploymentEp->delete("/apis/apps/v1/namespaces/{namespace}/deployments/{name}",
            request);
        return v;
    }

    public function patchAppsV1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                    _patchAppsV1NamespacedDeploymentBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedDeploymentEp->patch("/apis/apps/v1/namespaces/{namespace}/deployments/{name}",
            request);
        return v;
    }

    public function readAppsV1NamespacedDeploymentScale(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedDeploymentScaleEp->get("/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedDeploymentScale(io_k8s_api_autoscaling_v1_Scale
                                                           _replaceAppsV1NamespacedDeploymentScaleBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedDeploymentScaleEp->put("/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedDeploymentScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1NamespacedDeploymentScaleBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedDeploymentScaleEp->patch(
                                                             "/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale"
                                                             , request);
        return v;
    }

    public function readAppsV1NamespacedDeploymentStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedDeploymentStatusEp->get("/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedDeploymentStatus(io_k8s_api_apps_v1_Deployment
                                                            _replaceAppsV1NamespacedDeploymentStatusBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedDeploymentStatusEp->put("/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedDeploymentStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchAppsV1NamespacedDeploymentStatusBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedDeploymentStatusEp->patch(
                                                              "/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status"
                                                              , request);
        return v;
    }

    public function listAppsV1NamespacedReplicaSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1NamespacedReplicaSetEp->get("/apis/apps/v1/namespaces/{namespace}/replicasets", message =
            request);
        return v;
    }

    public function createAppsV1NamespacedReplicaSet(io_k8s_api_apps_v1_ReplicaSet _createAppsV1NamespacedReplicaSetBody
        ,                                            string namespace) returns http:Response|error {
        endpoint http:Client _createAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var v = _createAppsV1NamespacedReplicaSetEp->post("/apis/apps/v1/namespaces/{namespace}/replicasets", request);
        return v;
    }

    public function deleteAppsV1CollectionNamespacedReplicaSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1CollectionNamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1CollectionNamespacedReplicaSetEp->delete("/apis/apps/v1/namespaces/{namespace}/replicasets"
            , request);
        return v;
    }

    public function readAppsV1NamespacedReplicaSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedReplicaSetEp->get("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}",
            message = request);
        return v;
    }

    public function replaceAppsV1NamespacedReplicaSet(io_k8s_api_apps_v1_ReplicaSet
                                                      _replaceAppsV1NamespacedReplicaSetBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _replaceAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedReplicaSetEp->put("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}",
            request);
        return v;
    }

    public function deleteAppsV1NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                     _deleteAppsV1NamespacedReplicaSetBody
        ,                                            string name, string
                                                     namespace) returns http:
                Response|error {
        endpoint http:Client _deleteAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1NamespacedReplicaSetEp->delete("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}",
            request);
        return v;
    }

    public function patchAppsV1NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                    _patchAppsV1NamespacedReplicaSetBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedReplicaSetEp->patch("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}",
            request);
        return v;
    }

    public function readAppsV1NamespacedReplicaSetScale(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedReplicaSetScaleEp->get("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedReplicaSetScale(io_k8s_api_autoscaling_v1_Scale
                                                           _replaceAppsV1NamespacedReplicaSetScaleBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedReplicaSetScaleEp->put("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedReplicaSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1NamespacedReplicaSetScaleBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedReplicaSetScaleEp->patch(
                                                             "/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale"
                                                             , request);
        return v;
    }

    public function readAppsV1NamespacedReplicaSetStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedReplicaSetStatusEp->get("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedReplicaSetStatus(io_k8s_api_apps_v1_ReplicaSet
                                                            _replaceAppsV1NamespacedReplicaSetStatusBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedReplicaSetStatusEp->put("/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedReplicaSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchAppsV1NamespacedReplicaSetStatusBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedReplicaSetStatusEp->patch(
                                                              "/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status"
                                                              , request);
        return v;
    }

    public function listAppsV1NamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1NamespacedStatefulSetEp->get("/apis/apps/v1/namespaces/{namespace}/statefulsets", message =
            request);
        return v;
    }

    public function createAppsV1NamespacedStatefulSet(io_k8s_api_apps_v1_StatefulSet
                                                      _createAppsV1NamespacedStatefulSetBody
        ,                                             string namespace) returns http
                :Response|error {
        endpoint http:Client _createAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _createAppsV1NamespacedStatefulSetEp->post("/apis/apps/v1/namespaces/{namespace}/statefulsets", request)
        ;
        return v;
    }

    public function deleteAppsV1CollectionNamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1CollectionNamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1CollectionNamespacedStatefulSetEp->delete(
                                                                    "/apis/apps/v1/namespaces/{namespace}/statefulsets",
                                                                    request);
        return v;
    }

    public function readAppsV1NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedStatefulSetEp->get("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}",
            message = request);
        return v;
    }

    public function replaceAppsV1NamespacedStatefulSet(io_k8s_api_apps_v1_StatefulSet
                                                       _replaceAppsV1NamespacedStatefulSetBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _replaceAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedStatefulSetEp->put("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}",
            request);
        return v;
    }

    public function deleteAppsV1NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                      _deleteAppsV1NamespacedStatefulSetBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _deleteAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1NamespacedStatefulSetEp->delete("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}",
            request);
        return v;
    }

    public function patchAppsV1NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                     _patchAppsV1NamespacedStatefulSetBody
        ,                                            string name, string
                                                     namespace) returns http:
                Response|error {
        endpoint http:Client _patchAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedStatefulSetEp->patch("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}",
            request);
        return v;
    }

    public function readAppsV1NamespacedStatefulSetScale(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedStatefulSetScaleEp->get("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedStatefulSetScale(io_k8s_api_autoscaling_v1_Scale
                                                            _replaceAppsV1NamespacedStatefulSetScaleBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedStatefulSetScaleEp->put("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedStatefulSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchAppsV1NamespacedStatefulSetScaleBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedStatefulSetScaleEp->patch(
                                                              "/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale"
                                                              , request);
        return v;
    }

    public function readAppsV1NamespacedStatefulSetStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1NamespacedStatefulSetStatusEp->get("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1NamespacedStatefulSetStatus(io_k8s_api_apps_v1_StatefulSet
                                                             _replaceAppsV1NamespacedStatefulSetStatusBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1NamespacedStatefulSetStatusEp->put("/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1NamespacedStatefulSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                           _patchAppsV1NamespacedStatefulSetStatusBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1NamespacedStatefulSetStatusEp->patch(
                                                               "/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status"
                                                               , request);
        return v;
    }

    public function listAppsV1ReplicaSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1ReplicaSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1ReplicaSetForAllNamespacesEp->get("/apis/apps/v1/replicasets", message = request);
        return v;
    }

    public function listAppsV1StatefulSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1StatefulSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1StatefulSetForAllNamespacesEp->get("/apis/apps/v1/statefulsets", message = request);
        return v;
    }

    public function watchAppsV1ControllerRevisionListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1ControllerRevisionListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1ControllerRevisionListForAllNamespacesEp->get("/apis/apps/v1/watch/controllerrevisions",
            message = request);
        return v;
    }

    public function watchAppsV1DaemonSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1DaemonSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1DaemonSetListForAllNamespacesEp->get("/apis/apps/v1/watch/daemonsets", message = request);
        return v;
    }

    public function watchAppsV1DeploymentListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1DeploymentListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1DeploymentListForAllNamespacesEp->get("/apis/apps/v1/watch/deployments", message = request);
        return v;
    }

    public function watchAppsV1NamespacedControllerRevisionList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedControllerRevisionListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedControllerRevisionListEp->get("/apis/apps/v1/watch/namespaces/{namespace}/controllerrevisions"
            , message = request);
        return v;
    }

    public function watchAppsV1NamespacedControllerRevision(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedControllerRevisionEp->get("/apis/apps/v1/watch/namespaces/{namespace}/controllerrevisions/{name}"
            , message = request);
        return v;
    }

    public function watchAppsV1NamespacedDaemonSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedDaemonSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedDaemonSetListEp->get("/apis/apps/v1/watch/namespaces/{namespace}/daemonsets",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedDaemonSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedDaemonSetEp->get("/apis/apps/v1/watch/namespaces/{namespace}/daemonsets/{name}",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedDeploymentList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedDeploymentListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedDeploymentListEp->get("/apis/apps/v1/watch/namespaces/{namespace}/deployments",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedDeploymentEp->get("/apis/apps/v1/watch/namespaces/{namespace}/deployments/{name}",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedReplicaSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedReplicaSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedReplicaSetListEp->get("/apis/apps/v1/watch/namespaces/{namespace}/replicasets",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedReplicaSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedReplicaSetEp->get("/apis/apps/v1/watch/namespaces/{namespace}/replicasets/{name}",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedStatefulSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedStatefulSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedStatefulSetListEp->get("/apis/apps/v1/watch/namespaces/{namespace}/statefulsets",
            message = request);
        return v;
    }

    public function watchAppsV1NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1NamespacedStatefulSetEp->get("/apis/apps/v1/watch/namespaces/{namespace}/statefulsets/{name}"
            , message = request);
        return v;
    }

    public function watchAppsV1ReplicaSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1ReplicaSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1ReplicaSetListForAllNamespacesEp->get("/apis/apps/v1/watch/replicasets", message = request);
        return v;
    }

    public function watchAppsV1StatefulSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1StatefulSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1StatefulSetListForAllNamespacesEp->get("/apis/apps/v1/watch/statefulsets", message = request
        );
        return v;
    }

    public function getAppsV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getAppsV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _getAppsV1beta1APIResourcesEp->get("/apis/apps/v1beta1/", message = request);
        return v;
    }

    public function listAppsV1beta1ControllerRevisionForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta1ControllerRevisionForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1ControllerRevisionForAllNamespacesEp->get("/apis/apps/v1beta1/controllerrevisions",
            message = request);
        return v;
    }

    public function listAppsV1beta1DeploymentForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta1DeploymentForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1DeploymentForAllNamespacesEp->get("/apis/apps/v1beta1/deployments", message = request);
        return v;
    }

    public function listAppsV1beta1NamespacedControllerRevision(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1NamespacedControllerRevisionEp->get("/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions"
            , message = request);
        return v;
    }

    public function createAppsV1beta1NamespacedControllerRevision(io_k8s_api_apps_v1beta1_ControllerRevision
                                                                  _createAppsV1beta1NamespacedControllerRevisionBody,
                                                                  string namespace) returns http:Response|error {
        endpoint http:Client _createAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _createAppsV1beta1NamespacedControllerRevisionEp->post(
                                                                      "/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions"
                                                                      , request);
        return v;
    }

    public function deleteAppsV1beta1CollectionNamespacedControllerRevision(string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteAppsV1beta1CollectionNamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1CollectionNamespacedControllerRevisionEp->delete(
                                                                                "/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions"
                                                                                , request);
        return v;
    }

    public function readAppsV1beta1NamespacedControllerRevision(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedControllerRevisionEp->get("/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions/{name}"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedControllerRevision(io_k8s_api_apps_v1beta1_ControllerRevision
                                                                   _replaceAppsV1beta1NamespacedControllerRevisionBody,
                                                                   string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedControllerRevisionEp->put("/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions/{name}"
            , request);
        return v;
    }

    public function deleteAppsV1beta1NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                  _deleteAppsV1beta1NamespacedControllerRevisionBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1NamespacedControllerRevisionEp->delete(
                                                                      "/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions/{name}"
                                                                      , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                 _patchAppsV1beta1NamespacedControllerRevisionBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _patchAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedControllerRevisionEp->patch(
                                                                     "/apis/apps/v1beta1/namespaces/{namespace}/controllerrevisions/{name}"
                                                                     , request);
        return v;
    }

    public function listAppsV1beta1NamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1NamespacedDeploymentEp->get("/apis/apps/v1beta1/namespaces/{namespace}/deployments",
            message = request);
        return v;
    }

    public function createAppsV1beta1NamespacedDeployment(io_k8s_api_apps_v1beta1_Deployment
                                                          _createAppsV1beta1NamespacedDeploymentBody
        ,                                                 string namespace)
                        returns http:Response|error {
        endpoint http:Client _createAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _createAppsV1beta1NamespacedDeploymentEp->post("/apis/apps/v1beta1/namespaces/{namespace}/deployments",
            request);
        return v;
    }

    public function deleteAppsV1beta1CollectionNamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta1CollectionNamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1CollectionNamespacedDeploymentEp->delete(
                                                                        "/apis/apps/v1beta1/namespaces/{namespace}/deployments"
                                                                        , request);
        return v;
    }

    public function readAppsV1beta1NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedDeploymentEp->get("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedDeployment(io_k8s_api_apps_v1beta1_Deployment
                                                           _replaceAppsV1beta1NamespacedDeploymentBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedDeploymentEp->put("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}"
            , request);
        return v;
    }

    public function deleteAppsV1beta1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                          _deleteAppsV1beta1NamespacedDeploymentBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1NamespacedDeploymentEp->delete(
                                                              "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                              , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1beta1NamespacedDeploymentBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedDeploymentEp->patch(
                                                             "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                             , request);
        return v;
    }

    public function createAppsV1beta1NamespacedDeploymentRollback(io_k8s_api_apps_v1beta1_DeploymentRollback
                                                                  _createAppsV1beta1NamespacedDeploymentRollbackBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _createAppsV1beta1NamespacedDeploymentRollbackEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta1NamespacedDeploymentRollbackBody);

        // TODO: Update the request as needed
        var v = _createAppsV1beta1NamespacedDeploymentRollbackEp->post(
                                                                      "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/rollback"
                                                                      , request);
        return v;
    }

    public function readAppsV1beta1NamespacedDeploymentScale(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedDeploymentScaleEp->get("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedDeploymentScale(io_k8s_api_apps_v1beta1_Scale
                                                                _replaceAppsV1beta1NamespacedDeploymentScaleBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedDeploymentScaleEp->put("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
            , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedDeploymentScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                              _patchAppsV1beta1NamespacedDeploymentScaleBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedDeploymentScaleEp->patch(
                                                                  "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
                                                                  , request);
        return v;
    }

    public function readAppsV1beta1NamespacedDeploymentStatus(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedDeploymentStatusEp->get("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedDeploymentStatus(io_k8s_api_apps_v1beta1_Deployment
                                                                 _replaceAppsV1beta1NamespacedDeploymentStatusBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedDeploymentStatusEp->put("/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedDeploymentStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchAppsV1beta1NamespacedDeploymentStatusBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedDeploymentStatusEp->patch(
                                                                   "/apis/apps/v1beta1/namespaces/{namespace}/deployments/{name}/status"
                                                                   , request);
        return v;
    }

    public function listAppsV1beta1NamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1NamespacedStatefulSetEp->get("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets",
            message = request);
        return v;
    }

    public function createAppsV1beta1NamespacedStatefulSet(io_k8s_api_apps_v1beta1_StatefulSet
                                                           _createAppsV1beta1NamespacedStatefulSetBody
        ,                                                  string namespace
                        ) returns http:Response|error {
        endpoint http:Client _createAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _createAppsV1beta1NamespacedStatefulSetEp->post("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets"
            , request);
        return v;
    }

    public function deleteAppsV1beta1CollectionNamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta1CollectionNamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1CollectionNamespacedStatefulSetEp->delete(
                                                                         "/apis/apps/v1beta1/namespaces/{namespace}/statefulsets"
                                                                         , request);
        return v;
    }

    public function readAppsV1beta1NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedStatefulSetEp->get("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedStatefulSet(io_k8s_api_apps_v1beta1_StatefulSet
                                                            _replaceAppsV1beta1NamespacedStatefulSetBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedStatefulSetEp->put("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}"
            , request);
        return v;
    }

    public function deleteAppsV1beta1NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                           _deleteAppsV1beta1NamespacedStatefulSetBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _deleteAppsV1beta1NamespacedStatefulSetEp->delete(
                                                               "/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}"
                                                               , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchAppsV1beta1NamespacedStatefulSetBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedStatefulSetEp->patch(
                                                              "/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}"
                                                              , request);
        return v;
    }

    public function readAppsV1beta1NamespacedStatefulSetScale(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedStatefulSetScaleEp->get("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/scale"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedStatefulSetScale(io_k8s_api_apps_v1beta1_Scale
                                                                 _replaceAppsV1beta1NamespacedStatefulSetScaleBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedStatefulSetScaleEp->put("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/scale"
            , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedStatefulSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchAppsV1beta1NamespacedStatefulSetScaleBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedStatefulSetScaleEp->patch(
                                                                   "/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/scale"
                                                                   , request);
        return v;
    }

    public function readAppsV1beta1NamespacedStatefulSetStatus(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readAppsV1beta1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _readAppsV1beta1NamespacedStatefulSetStatusEp->get("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/status"
            , message = request);
        return v;
    }

    public function replaceAppsV1beta1NamespacedStatefulSetStatus(io_k8s_api_apps_v1beta1_StatefulSet
                                                                  _replaceAppsV1beta1NamespacedStatefulSetStatusBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta1NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var v = _replaceAppsV1beta1NamespacedStatefulSetStatusEp->put("/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/status"
            , request);
        return v;
    }

    public function patchAppsV1beta1NamespacedStatefulSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                _patchAppsV1beta1NamespacedStatefulSetStatusBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta1NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta1NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var v = _patchAppsV1beta1NamespacedStatefulSetStatusEp->patch(
                                                                    "/apis/apps/v1beta1/namespaces/{namespace}/statefulsets/{name}/status"
                                                                    , request);
        return v;
    }

    public function listAppsV1beta1StatefulSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta1StatefulSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _listAppsV1beta1StatefulSetForAllNamespacesEp->get("/apis/apps/v1beta1/statefulsets", message = request)
        ;
        return v;
    }

    public function watchAppsV1beta1ControllerRevisionListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1ControllerRevisionListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1beta1ControllerRevisionListForAllNamespacesEp->get("/apis/apps/v1beta1/watch/controllerrevisions"
            , message = request);
        return v;
    }

    public function watchAppsV1beta1DeploymentListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1DeploymentListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1beta1DeploymentListForAllNamespacesEp->get("/apis/apps/v1beta1/watch/deployments", message =
            request);
        return v;
    }

    public function watchAppsV1beta1NamespacedControllerRevisionList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1NamespacedControllerRevisionListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1beta1NamespacedControllerRevisionListEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/controllerrevisions"
            , message = request);
        return v;
    }

    public function watchAppsV1beta1NamespacedControllerRevision(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchAppsV1beta1NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1beta1NamespacedControllerRevisionEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/controllerrevisions/{name}"
            , message = request);
        return v;
    }

    public function watchAppsV1beta1NamespacedDeploymentList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1NamespacedDeploymentListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var v = _watchAppsV1beta1NamespacedDeploymentListEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/deployments"
            , message = request);
        return v;
    }

    public function watchAppsV1beta1NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        // TODO: Update the request as needed
        var x = _watchAppsV1beta1NamespacedDeploymentEp->get(
                                                             "/apis/apps/v1beta1/watch/namespaces/{namespace}/deployments/{name}"
                                                             , message = request);
        return x;
    }

    public function watchAppsV1beta1NamespacedStatefulSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1NamespacedStatefulSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta1NamespacedStatefulSetListEp->get(
                                                                  "/apis/apps/v1beta1/watch/namespaces/{namespace}/statefulsets"
                                                                  , message = request);
        return x;
    }

    public function watchAppsV1beta1NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta1NamespacedStatefulSetEp->get(
                                                              "/apis/apps/v1beta1/watch/namespaces/{namespace}/statefulsets/{name}"
                                                              , message = request);
        return x;
    }

    public function watchAppsV1beta1StatefulSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta1StatefulSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta1StatefulSetListForAllNamespacesEp->get("/apis/apps/v1beta1/watch/statefulsets", message
            =
            request);
        return x;
    }

    public function getAppsV1beta2APIResources() returns http:Response|error {
        endpoint http:Client _getAppsV1beta2APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAppsV1beta2APIResourcesEp->get("/apis/apps/v1beta2/", message = request);
        return x;
    }

    public function listAppsV1beta2ControllerRevisionForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta2ControllerRevisionForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2ControllerRevisionForAllNamespacesEp->get("/apis/apps/v1beta2/controllerrevisions",
            message
            = request);
        return x;
    }

    public function listAppsV1beta2DaemonSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta2DaemonSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2DaemonSetForAllNamespacesEp->get("/apis/apps/v1beta2/daemonsets", message = request);
        return x;
    }

    public function listAppsV1beta2DeploymentForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta2DeploymentForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2DeploymentForAllNamespacesEp->get("/apis/apps/v1beta2/deployments", message = request);
        return x;
    }

    public function listAppsV1beta2NamespacedControllerRevision(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2NamespacedControllerRevisionEp->get(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions"
                                                                    , message = request);
        return x;
    }

    public function createAppsV1beta2NamespacedControllerRevision(io_k8s_api_apps_v1beta2_ControllerRevision
                                                                  _createAppsV1beta2NamespacedControllerRevisionBody,
                                                                  string namespace) returns http:Response|error {
        endpoint http:Client _createAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta2NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var x = _createAppsV1beta2NamespacedControllerRevisionEp->post(
                                                                      "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions"
                                                                      , request);
        return x;
    }

    public function deleteAppsV1beta2CollectionNamespacedControllerRevision(string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteAppsV1beta2CollectionNamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2CollectionNamespacedControllerRevisionEp->delete(
                                                                                "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions"
                                                                                , request);
        return x;
    }

    public function readAppsV1beta2NamespacedControllerRevision(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedControllerRevisionEp->get(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}"
                                                                    , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedControllerRevision(io_k8s_api_apps_v1beta2_ControllerRevision
                                                                   _replaceAppsV1beta2NamespacedControllerRevisionBody,
                                                                   string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedControllerRevisionEp->put(
                                                                       "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}"
                                                                       , request);
        return x;
    }

    public function deleteAppsV1beta2NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                  _deleteAppsV1beta2NamespacedControllerRevisionBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta2NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2NamespacedControllerRevisionEp->delete(
                                                                      "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}"
                                                                      , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedControllerRevision(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                 _patchAppsV1beta2NamespacedControllerRevisionBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _patchAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedControllerRevisionBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedControllerRevisionEp->patch(
                                                                     "/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}"
                                                                     , request);
        return x;
    }

    public function listAppsV1beta2NamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2NamespacedDaemonSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets",
            message
            = request);
        return x;
    }

    public function createAppsV1beta2NamespacedDaemonSet(io_k8s_api_apps_v1beta2_DaemonSet
                                                         _createAppsV1beta2NamespacedDaemonSetBody
        ,                                                string namespace)
                        returns http:Response|error {
        endpoint http:Client _createAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta2NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _createAppsV1beta2NamespacedDaemonSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets",
            request);
        return x;
    }

    public function deleteAppsV1beta2CollectionNamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2CollectionNamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2CollectionNamespacedDaemonSetEp->delete(
                                                                       "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets"
                                                                       , request);
        return x;
    }

    public function readAppsV1beta2NamespacedDaemonSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedDaemonSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}"
            ,
            message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedDaemonSet(io_k8s_api_apps_v1beta2_DaemonSet
                                                          _replaceAppsV1beta2NamespacedDaemonSetBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedDaemonSetEp->put("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}"
            , request);
        return x;
    }

    public function deleteAppsV1beta2NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                         _deleteAppsV1beta2NamespacedDaemonSetBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _deleteAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta2NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2NamespacedDaemonSetEp->delete(
                                                             "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}"
                                                             , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                        _patchAppsV1beta2NamespacedDaemonSetBody
        ,                                               string name, string
                                                        namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedDaemonSetEp->patch(
                                                            "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}"
                                                            , request);
        return x;
    }

    public function readAppsV1beta2NamespacedDaemonSetStatus(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedDaemonSetStatusEp->get(
                                                                 "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status"
                                                                 , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedDaemonSetStatus(io_k8s_api_apps_v1beta2_DaemonSet
                                                                _replaceAppsV1beta2NamespacedDaemonSetStatusBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedDaemonSetStatusEp->put(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status"
                                                                    , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedDaemonSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                              _patchAppsV1beta2NamespacedDaemonSetStatusBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedDaemonSetStatusEp->patch(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status"
                                                                  , request);
        return x;
    }

    public function listAppsV1beta2NamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2NamespacedDeploymentEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments",
            message = request);
        return x;
    }

    public function createAppsV1beta2NamespacedDeployment(io_k8s_api_apps_v1beta2_Deployment
                                                          _createAppsV1beta2NamespacedDeploymentBody
        ,                                                 string namespace)
                        returns http:Response|error {
        endpoint http:Client _createAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta2NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _createAppsV1beta2NamespacedDeploymentEp->post("/apis/apps/v1beta2/namespaces/{namespace}/deployments",
            request);
        return x;
    }

    public function deleteAppsV1beta2CollectionNamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2CollectionNamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2CollectionNamespacedDeploymentEp->delete(
                                                                        "/apis/apps/v1beta2/namespaces/{namespace}/deployments"
                                                                        , request);
        return x;
    }

    public function readAppsV1beta2NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedDeploymentEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}"
            ,
            message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedDeployment(io_k8s_api_apps_v1beta2_Deployment
                                                           _replaceAppsV1beta2NamespacedDeploymentBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedDeploymentEp->put(
                                                               "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}"
                                                               , request);
        return x;
    }

    public function deleteAppsV1beta2NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                          _deleteAppsV1beta2NamespacedDeploymentBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta2NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2NamespacedDeploymentEp->delete(
                                                              "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}"
                                                              , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1beta2NamespacedDeploymentBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedDeploymentEp->patch(
                                                             "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}"
                                                             , request);
        return x;
    }

    public function readAppsV1beta2NamespacedDeploymentScale(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedDeploymentScaleEp->get(
                                                                 "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale"
                                                                 , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedDeploymentScale(io_k8s_api_apps_v1beta2_Scale
                                                                _replaceAppsV1beta2NamespacedDeploymentScaleBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedDeploymentScaleEp->put(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale"
                                                                    , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedDeploymentScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                              _patchAppsV1beta2NamespacedDeploymentScaleBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedDeploymentScaleEp->patch(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale"
                                                                  , request);
        return x;
    }

    public function readAppsV1beta2NamespacedDeploymentStatus(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedDeploymentStatusEp->get(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status"
                                                                  , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedDeploymentStatus(io_k8s_api_apps_v1beta2_Deployment
                                                                 _replaceAppsV1beta2NamespacedDeploymentStatusBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedDeploymentStatusEp->put(
                                                                     "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status"
                                                                     , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedDeploymentStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchAppsV1beta2NamespacedDeploymentStatusBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedDeploymentStatusEp->patch(
                                                                   "/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status"
                                                                   , request);
        return x;
    }

    public function listAppsV1beta2NamespacedReplicaSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2NamespacedReplicaSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets",
            message = request);
        return x;
    }

    public function createAppsV1beta2NamespacedReplicaSet(io_k8s_api_apps_v1beta2_ReplicaSet
                                                          _createAppsV1beta2NamespacedReplicaSetBody
        ,                                                 string namespace)
                        returns http:Response|error {
        endpoint http:Client _createAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta2NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _createAppsV1beta2NamespacedReplicaSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/replicasets",
            request);
        return x;
    }

    public function deleteAppsV1beta2CollectionNamespacedReplicaSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2CollectionNamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2CollectionNamespacedReplicaSetEp->delete(
                                                                        "/apis/apps/v1beta2/namespaces/{namespace}/replicasets"
                                                                        , request);
        return x;
    }

    public function readAppsV1beta2NamespacedReplicaSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedReplicaSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}"
            ,
            message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedReplicaSet(io_k8s_api_apps_v1beta2_ReplicaSet
                                                           _replaceAppsV1beta2NamespacedReplicaSetBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedReplicaSetEp->put(
                                                               "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}"
                                                               , request);
        return x;
    }

    public function deleteAppsV1beta2NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                          _deleteAppsV1beta2NamespacedReplicaSetBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta2NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2NamespacedReplicaSetEp->delete(
                                                              "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}"
                                                              , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                         _patchAppsV1beta2NamespacedReplicaSetBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedReplicaSetEp->patch(
                                                             "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}"
                                                             , request);
        return x;
    }

    public function readAppsV1beta2NamespacedReplicaSetScale(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedReplicaSetScaleEp->get(
                                                                 "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale"
                                                                 , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedReplicaSetScale(io_k8s_api_apps_v1beta2_Scale
                                                                _replaceAppsV1beta2NamespacedReplicaSetScaleBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedReplicaSetScaleEp->put(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale"
                                                                    , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedReplicaSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                              _patchAppsV1beta2NamespacedReplicaSetScaleBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedReplicaSetScaleEp->patch(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale"
                                                                  , request);
        return x;
    }

    public function readAppsV1beta2NamespacedReplicaSetStatus(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedReplicaSetStatusEp->get(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status"
                                                                  , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedReplicaSetStatus(io_k8s_api_apps_v1beta2_ReplicaSet
                                                                 _replaceAppsV1beta2NamespacedReplicaSetStatusBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedReplicaSetStatusEp->put(
                                                                     "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status"
                                                                     , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedReplicaSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchAppsV1beta2NamespacedReplicaSetStatusBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedReplicaSetStatusEp->patch(
                                                                   "/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status"
                                                                   , request);
        return x;
    }

    public function listAppsV1beta2NamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _listAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2NamespacedStatefulSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets",
            message = request);
        return x;
    }

    public function createAppsV1beta2NamespacedStatefulSet(io_k8s_api_apps_v1beta2_StatefulSet
                                                           _createAppsV1beta2NamespacedStatefulSetBody
        ,                                                  string namespace
                        ) returns http:Response|error {
        endpoint http:Client _createAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAppsV1beta2NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var x = _createAppsV1beta2NamespacedStatefulSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets"
            ,
            request);
        return x;
    }

    public function deleteAppsV1beta2CollectionNamespacedStatefulSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2CollectionNamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2CollectionNamespacedStatefulSetEp->delete(
                                                                         "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets"
                                                                         , request);
        return x;
    }

    public function readAppsV1beta2NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedStatefulSetEp->get(
                                                             "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}"
                                                             , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedStatefulSet(io_k8s_api_apps_v1beta2_StatefulSet
                                                            _replaceAppsV1beta2NamespacedStatefulSetBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedStatefulSetEp->put(
                                                                "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}"
                                                                , request);
        return x;
    }

    public function deleteAppsV1beta2NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                           _deleteAppsV1beta2NamespacedStatefulSetBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAppsV1beta2NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var x = _deleteAppsV1beta2NamespacedStatefulSetEp->delete(
                                                               "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}"
                                                               , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedStatefulSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                          _patchAppsV1beta2NamespacedStatefulSetBody
        ,                                                 string name,
                                                          string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedStatefulSetBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedStatefulSetEp->patch(
                                                              "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}"
                                                              , request);
        return x;
    }

    public function readAppsV1beta2NamespacedStatefulSetScale(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedStatefulSetScaleEp->get(
                                                                  "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale"
                                                                  , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedStatefulSetScale(io_k8s_api_apps_v1beta2_Scale
                                                                 _replaceAppsV1beta2NamespacedStatefulSetScaleBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedStatefulSetScaleEp->put(
                                                                     "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale"
                                                                     , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedStatefulSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchAppsV1beta2NamespacedStatefulSetScaleBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedStatefulSetScaleBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedStatefulSetScaleEp->patch(
                                                                   "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale"
                                                                   , request);
        return x;
    }

    public function readAppsV1beta2NamespacedStatefulSetStatus(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAppsV1beta2NamespacedStatefulSetStatusEp->get(
                                                                   "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status"
                                                                   , message = request);
        return x;
    }

    public function replaceAppsV1beta2NamespacedStatefulSetStatus(io_k8s_api_apps_v1beta2_StatefulSet
                                                                  _replaceAppsV1beta2NamespacedStatefulSetStatusBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAppsV1beta2NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAppsV1beta2NamespacedStatefulSetStatusEp->put(
                                                                      "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status"
                                                                      , request);
        return x;
    }

    public function patchAppsV1beta2NamespacedStatefulSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                _patchAppsV1beta2NamespacedStatefulSetStatusBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAppsV1beta2NamespacedStatefulSetStatusBody);

        // TODO: Update the request as needed
        var x = _patchAppsV1beta2NamespacedStatefulSetStatusEp->patch(
                                                                    "/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status"
                                                                    , request);
        return x;
    }

    public function listAppsV1beta2ReplicaSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta2ReplicaSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2ReplicaSetForAllNamespacesEp->get("/apis/apps/v1beta2/replicasets", message = request);
        return x;
    }

    public function listAppsV1beta2StatefulSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAppsV1beta2StatefulSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAppsV1beta2StatefulSetForAllNamespacesEp->get("/apis/apps/v1beta2/statefulsets", message = request)
        ;
        return x;
    }

    public function watchAppsV1beta2ControllerRevisionListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2ControllerRevisionListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2ControllerRevisionListForAllNamespacesEp->get(
                                                                               "/apis/apps/v1beta2/watch/controllerrevisions"
                                                                               , message = request);
        return x;
    }

    public function watchAppsV1beta2DaemonSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2DaemonSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2DaemonSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/daemonsets", message =
            request);
        return x;
    }

    public function watchAppsV1beta2DeploymentListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2DeploymentListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2DeploymentListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/deployments", message =
            request);
        return x;
    }

    public function watchAppsV1beta2NamespacedControllerRevisionList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedControllerRevisionListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedControllerRevisionListEp->get(
                                                                         "/apis/apps/v1beta2/watch/namespaces/{namespace}/controllerrevisions"
                                                                         , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedControllerRevision(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _watchAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedControllerRevisionEp->get(
                                                                     "/apis/apps/v1beta2/watch/namespaces/{namespace}/controllerrevisions/{name}"
                                                                     , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedDaemonSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedDaemonSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedDaemonSetListEp->get(
                                                                "/apis/apps/v1beta2/watch/namespaces/{namespace}/daemonsets"
                                                                , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedDaemonSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedDaemonSetEp->get(
                                                            "/apis/apps/v1beta2/watch/namespaces/{namespace}/daemonsets/{name}"
                                                            , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedDeploymentList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedDeploymentListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedDeploymentListEp->get(
                                                                 "/apis/apps/v1beta2/watch/namespaces/{namespace}/deployments"
                                                                 , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedDeployment(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedDeploymentEp->get(
                                                             "/apis/apps/v1beta2/watch/namespaces/{namespace}/deployments/{name}"
                                                             , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedReplicaSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedReplicaSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedReplicaSetListEp->get(
                                                                 "/apis/apps/v1beta2/watch/namespaces/{namespace}/replicasets"
                                                                 , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedReplicaSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedReplicaSetEp->get(
                                                             "/apis/apps/v1beta2/watch/namespaces/{namespace}/replicasets/{name}"
                                                             , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedStatefulSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedStatefulSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedStatefulSetListEp->get(
                                                                  "/apis/apps/v1beta2/watch/namespaces/{namespace}/statefulsets"
                                                                  , message = request);
        return x;
    }

    public function watchAppsV1beta2NamespacedStatefulSet(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2NamespacedStatefulSetEp->get(
                                                              "/apis/apps/v1beta2/watch/namespaces/{namespace}/statefulsets/{name}"
                                                              , message = request);
        return x;
    }

    public function watchAppsV1beta2ReplicaSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2ReplicaSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2ReplicaSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/replicasets", message =
            request);
        return x;
    }

    public function watchAppsV1beta2StatefulSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAppsV1beta2StatefulSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAppsV1beta2StatefulSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/statefulsets", message
            =
            request);
        return x;
    }

    public function getAuthenticationAPIGroup() returns http:Response|error {
        endpoint http:Client _getAuthenticationAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthenticationAPIGroupEp->get("/apis/authentication_k8s_io/", message = request);
        return x;
    }

    public function getAuthenticationV1APIResources() returns http:Response|error {
        endpoint http:Client _getAuthenticationV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthenticationV1APIResourcesEp->get("/apis/authentication_k8s_io/v1/", message = request);
        return x;
    }

    public function createAuthenticationV1TokenReview(io_k8s_api_authentication_v1_TokenReview
                                                      _createAuthenticationV1TokenReviewBody) returns http:Response|
                error {
        endpoint http:Client _createAuthenticationV1TokenReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthenticationV1TokenReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthenticationV1TokenReviewEp->post("/apis/authentication_k8s_io/v1/tokenreviews", request);
        return x;
    }

    public function getAuthenticationV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getAuthenticationV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthenticationV1beta1APIResourcesEp->get("/apis/authentication_k8s_io/v1beta1/", message = request);
        return x;
    }

    public function createAuthenticationV1beta1TokenReview(io_k8s_api_authentication_v1beta1_TokenReview
                                                           _createAuthenticationV1beta1TokenReviewBody) returns http:
                Response|error {
        endpoint http:Client _createAuthenticationV1beta1TokenReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthenticationV1beta1TokenReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthenticationV1beta1TokenReviewEp->post("/apis/authentication_k8s_io/v1beta1/tokenreviews",
            request
        );
        return x;
    }

    public function getAuthorizationAPIGroup() returns http:Response|error {
        endpoint http:Client _getAuthorizationAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthorizationAPIGroupEp->get("/apis/authorization_k8s_io/", message = request);
        return x;
    }

    public function getAuthorizationV1APIResources() returns http:Response|error {
        endpoint http:Client _getAuthorizationV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthorizationV1APIResourcesEp->get("/apis/authorization_k8s_io/v1/", message = request);
        return x;
    }

    public function createAuthorizationV1NamespacedLocalSubjectAccessReview(
                        io_k8s_api_authorization_v1_LocalSubjectAccessReview
                        _createAuthorizationV1NamespacedLocalSubjectAccessReviewBody, string namespace) returns http:
                Response|error {
        endpoint http:Client _createAuthorizationV1NamespacedLocalSubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1NamespacedLocalSubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1NamespacedLocalSubjectAccessReviewEp->post(
                                                                                "/apis/authorization_k8s_io/v1/namespaces/{namespace}/localsubjectaccessreviews"
                                                                                , request);
        return x;
    }

    public function createAuthorizationV1SelfSubjectAccessReview(io_k8s_api_authorization_v1_SelfSubjectAccessReview
                                                                 _createAuthorizationV1SelfSubjectAccessReviewBody)
                        returns http:Response|error {
        endpoint http:Client _createAuthorizationV1SelfSubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1SelfSubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1SelfSubjectAccessReviewEp->post(
                                                                     "/apis/authorization_k8s_io/v1/selfsubjectaccessreviews"
                                                                     , request);
        return x;
    }

    public function createAuthorizationV1SelfSubjectRulesReview(io_k8s_api_authorization_v1_SelfSubjectRulesReview
                                                                _createAuthorizationV1SelfSubjectRulesReviewBody)
                        returns http:Response|error {
        endpoint http:Client _createAuthorizationV1SelfSubjectRulesReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1SelfSubjectRulesReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1SelfSubjectRulesReviewEp->post(
                                                                    "/apis/authorization_k8s_io/v1/selfsubjectrulesreviews"
                                                                    , request);
        return x;
    }

    public function createAuthorizationV1SubjectAccessReview(io_k8s_api_authorization_v1_SubjectAccessReview
                                                             _createAuthorizationV1SubjectAccessReviewBody) returns http
                :Response|error {
        endpoint http:Client _createAuthorizationV1SubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1SubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1SubjectAccessReviewEp->post("/apis/authorization_k8s_io/v1/subjectaccessreviews",
            request);
        return x;
    }

    public function getAuthorizationV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getAuthorizationV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAuthorizationV1beta1APIResourcesEp->get("/apis/authorization_k8s_io/v1beta1/", message = request);
        return x;
    }

    public function createAuthorizationV1beta1NamespacedLocalSubjectAccessReview(
                        io_k8s_api_authorization_v1beta1_LocalSubjectAccessReview
                        _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewBody, string namespace) returns
                                                                                                                     http
                                                                                                                     :
                                                                                                                     Response
                                                                                                                     |
                                                                                                                     error
    {
        endpoint http:Client _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp->post(
                                                                                     "/apis/authorization_k8s_io/v1beta1/namespaces/{namespace}/localsubjectaccessreviews"
                                                                                     , request);
        return x;
    }

    public function createAuthorizationV1beta1SelfSubjectAccessReview(
                        io_k8s_api_authorization_v1beta1_SelfSubjectAccessReview
                        _createAuthorizationV1beta1SelfSubjectAccessReviewBody) returns http:Response|error {
        endpoint http:Client _createAuthorizationV1beta1SelfSubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1beta1SelfSubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1beta1SelfSubjectAccessReviewEp->post(
                                                                          "/apis/authorization_k8s_io/v1beta1/selfsubjectaccessreviews"
                                                                          , request);
        return x;
    }

    public function createAuthorizationV1beta1SelfSubjectRulesReview(
                        io_k8s_api_authorization_v1beta1_SelfSubjectRulesReview
                        _createAuthorizationV1beta1SelfSubjectRulesReviewBody) returns http:Response|error {
        endpoint http:Client _createAuthorizationV1beta1SelfSubjectRulesReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1beta1SelfSubjectRulesReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1beta1SelfSubjectRulesReviewEp->post(
                                                                         "/apis/authorization_k8s_io/v1beta1/selfsubjectrulesreviews"
                                                                         , request);
        return x;
    }

    public function createAuthorizationV1beta1SubjectAccessReview(io_k8s_api_authorization_v1beta1_SubjectAccessReview
                                                                  _createAuthorizationV1beta1SubjectAccessReviewBody)
                        returns http:Response|error {
        endpoint http:Client _createAuthorizationV1beta1SubjectAccessReviewEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAuthorizationV1beta1SubjectAccessReviewBody);

        // TODO: Update the request as needed
        var x = _createAuthorizationV1beta1SubjectAccessReviewEp->post(
                                                                      "/apis/authorization_k8s_io/v1beta1/subjectaccessreviews"
                                                                      , request);
        return x;
    }

    public function getAutoscalingAPIGroup() returns http:Response|error {
        endpoint http:Client _getAutoscalingAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAutoscalingAPIGroupEp->get("/apis/autoscaling/", message = request);
        return x;
    }

    public function getAutoscalingV1APIResources() returns http:Response|error {
        endpoint http:Client _getAutoscalingV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAutoscalingV1APIResourcesEp->get("/apis/autoscaling/v1/", message = request);
        return x;
    }

    public function listAutoscalingV1HorizontalPodAutoscalerForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp->get(
                                                                                 "/apis/autoscaling/v1/horizontalpodautoscalers"
                                                                                 , message = request);
        return x;
    }

    public function listAutoscalingV1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response|error {
        endpoint http:Client _listAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(
                                                                           "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                           , message = request);
        return x;
    }

    public function createAutoscalingV1NamespacedHorizontalPodAutoscaler(
                        io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler
                        _createAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string namespace) returns http:
                Response|error {
        endpoint http:Client _createAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _createAutoscalingV1NamespacedHorizontalPodAutoscalerEp->post(
                                                                             "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                             , request);
        return x;
    }

    public function deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscaler(string namespace) returns http:
                Response|
                error {
        endpoint http:Client _deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp->delete(
                                                                                       "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                       , request);
        return x;
    }

    public function readAutoscalingV1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:
                Response|
                error {
        endpoint http:Client _readAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(
                                                                           "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                           , message = request);
        return x;
    }

    public function replaceAutoscalingV1NamespacedHorizontalPodAutoscaler(
                        io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler
                        _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace)
                        returns http:Response|error
    {
        endpoint http:Client _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp->put(
                                                                              "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                              , request);
        return x;
    }

    public function deleteAutoscalingV1NamespacedHorizontalPodAutoscaler(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace)
                        returns http:Response|
                                error {
        endpoint http:Client _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp->delete(
                                                                             "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                             , request);
        return x;
    }

    public function patchAutoscalingV1NamespacedHorizontalPodAutoscaler(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                        _patchAutoscalingV1NamespacedHorizontalPodAutoscalerBody
        ,                                                               string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->patch(
                                                                            "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                            , request);
        return x;
    }

    public function readAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(string name, string namespace) returns http
                :
                Response|error {
        endpoint http:Client _readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->get(
                                                                                 "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                 , message = request);
        return x;
    }

    public function replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(
                        io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler
                        _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->put(
                                                                                    "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                    , request);
        return x;
    }

    public function patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                              _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody
        ,                                                                     string name, string namespace) returns http
                :Response|
                error {
        endpoint http:Client _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody);

        // TODO: Update the request as needed
        var x = _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->patch(
                                                                                  "/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                  , request);
        return x;
    }

    public function watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp->get(
                                                                                      "/apis/autoscaling/v1/watch/horizontalpodautoscalers"
                                                                                      , message = request);
        return x;
    }

    public function watchAutoscalingV1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response|
                error {
        endpoint http:Client _watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp->get(
                                                                                "/apis/autoscaling/v1/watch/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                , message = request);
        return x;
    }

    public function watchAutoscalingV1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:
                Response
                |
                error {
        endpoint http:Client _watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(
                                                                            "/apis/autoscaling/v1/watch/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                            , message = request);
        return x;
    }

    public function getAutoscalingV2beta1APIResources() returns http:Response|error {
        endpoint http:Client _getAutoscalingV2beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getAutoscalingV2beta1APIResourcesEp->get("/apis/autoscaling/v2beta1/", message = request);
        return x;
    }

    public function listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp->get(
                                                                                      "/apis/autoscaling/v2beta1/horizontalpodautoscalers"
                                                                                      , message = request);
        return x;
    }

    public function listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response|
                error {
        endpoint http:Client _listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(
                                                                                "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                , message = request);
        return x;
    }

    public function createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(
                        io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler
                        _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string namespace) returns http:
                Response|error {
        endpoint http:Client _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->post(
                                                                                  "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                  , request);
        return x;
    }

    public function deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler(string namespace) returns http:
                Response|error {
        endpoint http:Client _deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp.
        client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp->delete(
                                                                                            "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                            , request);
        return x;
    }

    public function readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(
                                                                                "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                                , message = request);
        return x;
    }

    public function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(
                        io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler
                        _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->put(
                                                                                   "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                                   , request);
        return x;
    }

    public function deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace)
                        returns
                                http:Response|error {
        endpoint http:Client _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->delete(
                                                                                  "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                                  , request);
        return x;
    }

    public function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                             _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody
        ,                                                                    string name, string namespace) returns http
                :Response|
                error {
        endpoint http:Client _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

        // TODO: Update the request as needed
        var x = _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->patch(
                                                                                 "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                                 , request);
        return x;
    }

    public function readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(string name, string namespace) returns
                                                                                                                         http
                                                                                                                         :
                                                                                                                         Response
                                                                                                                         |
                                                                                                                         error
    {
        endpoint http:Client _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->get(
                                                                                      "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                      , message = request);
        return x;
    }

    public function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(
                        io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler
                        _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string
                        namespace) returns http:Response|error {
        endpoint http:Client _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody);

        // TODO: Update the request as needed
        var x = _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->put(
                                                                                         "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                         , request);
        return x;
    }

    public function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(
                        io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                        _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string
                        namespace) returns http:
                Response|error {
        endpoint http:Client _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody);

        // TODO: Update the request as needed
        var x = _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->patch(
                                                                                       "/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status"
                                                                                       , request);
        return x;
    }

    public function watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp.
        client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp->get(
                                                                                           "/apis/autoscaling/v2beta1/watch/horizontalpodautoscalers"
                                                                                           , message = request);
        return x;
    }

    public function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response
                |
                error {
        endpoint http:Client _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp->get(
                                                                                     "/apis/autoscaling/v2beta1/watch/namespaces/{namespace}/horizontalpodautoscalers"
                                                                                     , message = request);
        return x;
    }

    public function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http
                :
                Response|error {
        endpoint http:Client _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(
                                                                                 "/apis/autoscaling/v2beta1/watch/namespaces/{namespace}/horizontalpodautoscalers/{name}"
                                                                                 , message = request);
        return x;
    }

    public function getBatchAPIGroup() returns http:Response|error {
        endpoint http:Client _getBatchAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getBatchAPIGroupEp->get("/apis/batch/", message = request);
        return x;
    }

    public function getBatchV1APIResources() returns http:Response|error {
        endpoint http:Client _getBatchV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getBatchV1APIResourcesEp->get("/apis/batch/v1/", message = request);
        return x;
    }

    public function listBatchV1JobForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listBatchV1JobForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listBatchV1JobForAllNamespacesEp->get("/apis/batch/v1/jobs", message = request);
        return x;
    }

    public function listBatchV1NamespacedJob(string namespace) returns http:Response|error {
        endpoint http:Client _listBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listBatchV1NamespacedJobEp->get("/apis/batch/v1/namespaces/{namespace}/jobs", message = request);
        return x;
    }

    public function createBatchV1NamespacedJob(io_k8s_api_batch_v1_Job _createBatchV1NamespacedJobBody, string namespace
                        )
                        returns http:Response|error {
        endpoint http:Client _createBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createBatchV1NamespacedJobBody);

        // TODO: Update the request as needed
        var x = _createBatchV1NamespacedJobEp->post("/apis/batch/v1/namespaces/{namespace}/jobs", request);
        return x;
    }

    public function deleteBatchV1CollectionNamespacedJob(string namespace) returns http:Response|error {
        endpoint http:Client _deleteBatchV1CollectionNamespacedJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteBatchV1CollectionNamespacedJobEp->delete("/apis/batch/v1/namespaces/{namespace}/jobs", request);
        return x;
    }

    public function readBatchV1NamespacedJob(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readBatchV1NamespacedJobEp->get("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", message = request)
        ;
        return x;
    }

    public function replaceBatchV1NamespacedJob(io_k8s_api_batch_v1_Job _replaceBatchV1NamespacedJobBody, string name,
                                                string namespace) returns http:Response|error {
        endpoint http:Client _replaceBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceBatchV1NamespacedJobBody);

        // TODO: Update the request as needed
        var x = _replaceBatchV1NamespacedJobEp->put("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request);
        return x;
    }

    public function deleteBatchV1NamespacedJob(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                               _deleteBatchV1NamespacedJobBody, string name, string namespace) returns http
                :Response|error {
        endpoint http:Client _deleteBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteBatchV1NamespacedJobBody);

        // TODO: Update the request as needed
        var x = _deleteBatchV1NamespacedJobEp->delete("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request);
        return x;
    }

    public function patchBatchV1NamespacedJob(io_k8s_apimachinery_pkg_apis_meta_v1_Patch _patchBatchV1NamespacedJobBody,
                                              string name, string namespace) returns http:Response|error {
        endpoint http:Client _patchBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchBatchV1NamespacedJobBody);

        // TODO: Update the request as needed
        var x = _patchBatchV1NamespacedJobEp->patch("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request);
        return x;
    }

    public function readBatchV1NamespacedJobStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readBatchV1NamespacedJobStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readBatchV1NamespacedJobStatusEp->get("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status",
            message
            = request);
        return x;
    }

    public function replaceBatchV1NamespacedJobStatus(io_k8s_api_batch_v1_Job _replaceBatchV1NamespacedJobStatusBody,
        string
        name, string namespace) returns http:Response|error {
        endpoint http:Client _replaceBatchV1NamespacedJobStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceBatchV1NamespacedJobStatusBody);

        // TODO: Update the request as needed
        var x = _replaceBatchV1NamespacedJobStatusEp->put("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status",
            request);
        return x;
    }

    public function patchBatchV1NamespacedJobStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                    _patchBatchV1NamespacedJobStatusBody
        ,                                           string name, string namespace)
                        returns http:Response|error {
        endpoint http:Client _patchBatchV1NamespacedJobStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchBatchV1NamespacedJobStatusBody);

        // TODO: Update the request as needed
        var x = _patchBatchV1NamespacedJobStatusEp->patch("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status",
            request);
        return x;
    }

    public function watchBatchV1JobListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchBatchV1JobListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1JobListForAllNamespacesEp->get("/apis/batch/v1/watch/jobs", message = request);
        return x;
    }

    public function watchBatchV1NamespacedJobList(string namespace) returns http:Response|error {
        endpoint http:Client _watchBatchV1NamespacedJobListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1NamespacedJobListEp->get("/apis/batch/v1/watch/namespaces/{namespace}/jobs", message =
            request
        );
        return x;
    }

    public function watchBatchV1NamespacedJob(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchBatchV1NamespacedJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1NamespacedJobEp->get("/apis/batch/v1/watch/namespaces/{namespace}/jobs/{name}", message =
            request);
        return x;
    }

    public function getBatchV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getBatchV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getBatchV1beta1APIResourcesEp->get("/apis/batch/v1beta1/", message = request);
        return x;
    }

    public function listBatchV1beta1CronJobForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listBatchV1beta1CronJobForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listBatchV1beta1CronJobForAllNamespacesEp->get("/apis/batch/v1beta1/cronjobs", message = request);
        return x;
    }

    public function listBatchV1beta1NamespacedCronJob(string namespace) returns http:Response|error {
        endpoint http:Client _listBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listBatchV1beta1NamespacedCronJobEp->get("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs", message
            =
            request);
        return x;
    }

    public function createBatchV1beta1NamespacedCronJob(io_k8s_api_batch_v1beta1_CronJob
                                                        _createBatchV1beta1NamespacedCronJobBody
        ,                                               string namespace)
                        returns http:Response|error {
        endpoint http:Client _createBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createBatchV1beta1NamespacedCronJobBody);

        // TODO: Update the request as needed
        var x = _createBatchV1beta1NamespacedCronJobEp->post("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs",
            request
        );
        return x;
    }

    public function deleteBatchV1beta1CollectionNamespacedCronJob(string namespace) returns http:Response|error {
        endpoint http:Client _deleteBatchV1beta1CollectionNamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteBatchV1beta1CollectionNamespacedCronJobEp->delete(
                                                                      "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs"
                                                                      , request);
        return x;
    }

    public function readBatchV1beta1NamespacedCronJob(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readBatchV1beta1NamespacedCronJobEp->get("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}",
            message = request);
        return x;
    }

    public function replaceBatchV1beta1NamespacedCronJob(io_k8s_api_batch_v1beta1_CronJob
                                                         _replaceBatchV1beta1NamespacedCronJobBody
        ,                                                string name, string
                                                         namespace) returns http
                :Response|error {
        endpoint http:Client _replaceBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceBatchV1beta1NamespacedCronJobBody);

        // TODO: Update the request as needed
        var x = _replaceBatchV1beta1NamespacedCronJobEp->put("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}"
            ,
            request);
        return x;
    }

    public function deleteBatchV1beta1NamespacedCronJob(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                        _deleteBatchV1beta1NamespacedCronJobBody
        ,                                               string name, string
                                                        namespace) returns http
                :Response|error {
        endpoint http:Client _deleteBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteBatchV1beta1NamespacedCronJobBody);

        // TODO: Update the request as needed
        var x = _deleteBatchV1beta1NamespacedCronJobEp->delete(
                                                            "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}"
                                                            , request);
        return x;
    }

    public function patchBatchV1beta1NamespacedCronJob(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                       _patchBatchV1beta1NamespacedCronJobBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _patchBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchBatchV1beta1NamespacedCronJobBody);

        // TODO: Update the request as needed
        var x = _patchBatchV1beta1NamespacedCronJobEp->patch(
                                                           "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}",
                                                           request);
        return x;
    }

    public function readBatchV1beta1NamespacedCronJobStatus(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readBatchV1beta1NamespacedCronJobStatusEp->get(
                                                                "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status"
                                                                , message = request);
        return x;
    }

    public function replaceBatchV1beta1NamespacedCronJobStatus(io_k8s_api_batch_v1beta1_CronJob
                                                               _replaceBatchV1beta1NamespacedCronJobStatusBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceBatchV1beta1NamespacedCronJobStatusBody);

        // TODO: Update the request as needed
        var x = _replaceBatchV1beta1NamespacedCronJobStatusEp->put(
                                                                   "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status"
                                                                   , request);
        return x;
    }

    public function patchBatchV1beta1NamespacedCronJobStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                             _patchBatchV1beta1NamespacedCronJobStatusBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _patchBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchBatchV1beta1NamespacedCronJobStatusBody);

        // TODO: Update the request as needed
        var x = _patchBatchV1beta1NamespacedCronJobStatusEp->patch(
                                                                 "/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status"
                                                                 , request);
        return x;
    }

    public function watchBatchV1beta1CronJobListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchBatchV1beta1CronJobListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1beta1CronJobListForAllNamespacesEp->get("/apis/batch/v1beta1/watch/cronjobs", message =
            request);
        return x;
    }

    public function watchBatchV1beta1NamespacedCronJobList(string namespace) returns http:Response|error {
        endpoint http:Client _watchBatchV1beta1NamespacedCronJobListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1beta1NamespacedCronJobListEp->get("/apis/batch/v1beta1/watch/namespaces/{namespace}/cronjobs"
            ,
            message = request);
        return x;
    }

    public function watchBatchV1beta1NamespacedCronJob(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchBatchV1beta1NamespacedCronJobEp->get(
                                                           "/apis/batch/v1beta1/watch/namespaces/{namespace}/cronjobs/{name}"
                                                           , message = request);
        return x;
    }

    public function getCertificatesAPIGroup() returns http:Response|error {
        endpoint http:Client _getCertificatesAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getCertificatesAPIGroupEp->get("/apis/certificates_k8s_io/", message = request);
        return x;
    }

    public function getCertificatesV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getCertificatesV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getCertificatesV1beta1APIResourcesEp->get("/apis/certificates_k8s_io/v1beta1/", message = request);
        return x;
    }

    public function listCertificatesV1beta1CertificateSigningRequest() returns http:Response|error {
        endpoint http:Client _listCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listCertificatesV1beta1CertificateSigningRequestEp->get(
                                                                         "/apis/certificates_k8s_io/v1beta1/certificatesigningmessage=requests"
                                                                         , message = request);
        return x;
    }

    public function createCertificatesV1beta1CertificateSigningRequest(
                        io_k8s_api_certificates_v1beta1_CertificateSigningRequest
                        _createCertificatesV1beta1CertificateSigningRequestBody) returns http:Response|error {
        endpoint http:Client _createCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createCertificatesV1beta1CertificateSigningRequestBody);

        // TODO: Update the request as needed
        var x = _createCertificatesV1beta1CertificateSigningRequestEp->post(
                                                                           "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests"
                                                                           , request);
        return x;
    }

    public function deleteCertificatesV1beta1CollectionCertificateSigningRequest() returns http:Response|error {
        endpoint http:Client _deleteCertificatesV1beta1CollectionCertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteCertificatesV1beta1CollectionCertificateSigningRequestEp->delete(
                                                                                     "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests"
                                                                                     , request);
        return x;
    }

    public function readCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response|error {
        endpoint http:Client _readCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readCertificatesV1beta1CertificateSigningRequestEp->get(
                                                                         "/apis/certificates_k8s_io/v1beta1/certificatesigningmessage=requests/{name}"
                                                                         , message = request);
        return x;
    }

    public function replaceCertificatesV1beta1CertificateSigningRequest(
                        io_k8s_api_certificates_v1beta1_CertificateSigningRequest
                        _replaceCertificatesV1beta1CertificateSigningRequestBody, string name) returns http:Response|
                error {
        endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCertificatesV1beta1CertificateSigningRequestBody);

        // TODO: Update the request as needed
        var x = _replaceCertificatesV1beta1CertificateSigningRequestEp->put(
                                                                            "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests/{name}"
                                                                            , request);
        return x;
    }

    public function deleteCertificatesV1beta1CertificateSigningRequest(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteCertificatesV1beta1CertificateSigningRequestBody, string name) returns http:Response|
                error {
        endpoint http:Client _deleteCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteCertificatesV1beta1CertificateSigningRequestBody);

        // TODO: Update the request as needed
        var x = _deleteCertificatesV1beta1CertificateSigningRequestEp->delete(
                                                                           "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests/{name}"
                                                                           , request);
        return x;
    }

    public function patchCertificatesV1beta1CertificateSigningRequest(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                      _patchCertificatesV1beta1CertificateSigningRequestBody
        ,                                                             string name) returns http:Response|error {
        endpoint http:Client _patchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchCertificatesV1beta1CertificateSigningRequestBody);

        // TODO: Update the request as needed
        var x = _patchCertificatesV1beta1CertificateSigningRequestEp->patch(
                                                                          "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests/{name}"
                                                                          , request);
        return x;
    }

    public function replaceCertificatesV1beta1CertificateSigningRequestApproval(
                        io_k8s_api_certificates_v1beta1_CertificateSigningRequest
                        _replaceCertificatesV1beta1CertificateSigningRequestApprovalBody, string name) returns http:
                Response|error {
        endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestApprovalEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCertificatesV1beta1CertificateSigningRequestApprovalBody);

        // TODO: Update the request as needed
        var x = _replaceCertificatesV1beta1CertificateSigningRequestApprovalEp->put(
                                                                                    "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests/{name}/approval"
                                                                                    , request);
        return x;
    }

    public function replaceCertificatesV1beta1CertificateSigningRequestStatus(
                        io_k8s_api_certificates_v1beta1_CertificateSigningRequest
                        _replaceCertificatesV1beta1CertificateSigningRequestStatusBody, string name) returns http:
                Response|error {
        endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceCertificatesV1beta1CertificateSigningRequestStatusBody);

        // TODO: Update the request as needed
        var x = _replaceCertificatesV1beta1CertificateSigningRequestStatusEp->put(
                                                                                  "/apis/certificates_k8s_io/v1beta1/certificatesigningrequests/{name}/status"
                                                                                  , request);
        return x;
    }

    public function watchCertificatesV1beta1CertificateSigningRequestList() returns http:Response|error {
        endpoint http:Client _watchCertificatesV1beta1CertificateSigningRequestListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchCertificatesV1beta1CertificateSigningRequestListEp->get(
                                                                              "/apis/certificates_k8s_io/v1beta1/watch/certificatesigningmessage=requests"
                                                                              , message = request);
        return x;
    }

    public function watchCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response|error {
        endpoint http:Client _watchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchCertificatesV1beta1CertificateSigningRequestEp->get(
                                                                          "/apis/certificates_k8s_io/v1beta1/watch/certificatesigningmessage=requests/{name}"
                                                                          , message = request);
        return x;
    }

    public function getEventsAPIGroup() returns http:Response|error {
        endpoint http:Client _getEventsAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getEventsAPIGroupEp->get("/apis/events_k8s_io/", message = request);
        return x;
    }

    public function getEventsV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getEventsV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getEventsV1beta1APIResourcesEp->get("/apis/events_k8s_io/v1beta1/", message = request);
        return x;
    }

    public function listEventsV1beta1EventForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listEventsV1beta1EventForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listEventsV1beta1EventForAllNamespacesEp->get("/apis/events_k8s_io/v1beta1/events", message = request);
        return x;
    }

    public function listEventsV1beta1NamespacedEvent(string namespace) returns http:Response|error {
        endpoint http:Client _listEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listEventsV1beta1NamespacedEventEp->get("/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events",
            message = request);
        return x;
    }

    public function createEventsV1beta1NamespacedEvent(io_k8s_api_events_v1beta1_Event
                                                       _createEventsV1beta1NamespacedEventBody
        ,                                              string namespace)
                        returns http:Response|error {
        endpoint http:Client _createEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createEventsV1beta1NamespacedEventBody);

        // TODO: Update the request as needed
        var x = _createEventsV1beta1NamespacedEventEp->post("/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events",
            request);
        return x;
    }

    public function deleteEventsV1beta1CollectionNamespacedEvent(string namespace) returns http:Response|error {
        endpoint http:Client _deleteEventsV1beta1CollectionNamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteEventsV1beta1CollectionNamespacedEventEp->delete(
                                                                     "/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events"
                                                                     , request);
        return x;
    }

    public function readEventsV1beta1NamespacedEvent(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readEventsV1beta1NamespacedEventEp->get("/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events/{name}"
            , message = request);
        return x;
    }

    public function replaceEventsV1beta1NamespacedEvent(io_k8s_api_events_v1beta1_Event
                                                        _replaceEventsV1beta1NamespacedEventBody
        ,                                               string name, string
                                                        namespace) returns http
                :Response|error {
        endpoint http:Client _replaceEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceEventsV1beta1NamespacedEventBody);

        // TODO: Update the request as needed
        var x = _replaceEventsV1beta1NamespacedEventEp->put(
                                                            "/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events/{name}"
                                                            , request);
        return x;
    }

    public function deleteEventsV1beta1NamespacedEvent(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                       _deleteEventsV1beta1NamespacedEventBody
        ,                                              string name, string
                                                       namespace) returns http:
                Response|error {
        endpoint http:Client _deleteEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteEventsV1beta1NamespacedEventBody);

        // TODO: Update the request as needed
        var x = _deleteEventsV1beta1NamespacedEventEp->delete(
                                                           "/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events/{name}"
                                                           , request);
        return x;
    }

    public function patchEventsV1beta1NamespacedEvent(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                      _patchEventsV1beta1NamespacedEventBody
        ,                                             string name, string
                                                      namespace) returns http:
                Response|error {
        endpoint http:Client _patchEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchEventsV1beta1NamespacedEventBody);

        // TODO: Update the request as needed
        var x = _patchEventsV1beta1NamespacedEventEp->patch(
                                                          "/apis/events_k8s_io/v1beta1/namespaces/{namespace}/events/{name}"
                                                          , request);
        return x;
    }

    public function watchEventsV1beta1EventListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchEventsV1beta1EventListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchEventsV1beta1EventListForAllNamespacesEp->get("/apis/events_k8s_io/v1beta1/watch/events", message
            =
            request);
        return x;
    }

    public function watchEventsV1beta1NamespacedEventList(string namespace) returns http:Response|error {
        endpoint http:Client _watchEventsV1beta1NamespacedEventListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchEventsV1beta1NamespacedEventListEp->get(
                                                              "/apis/events_k8s_io/v1beta1/watch/namespaces/{namespace}/events"
                                                              , message = request);
        return x;
    }

    public function watchEventsV1beta1NamespacedEvent(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchEventsV1beta1NamespacedEventEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchEventsV1beta1NamespacedEventEp->get(
                                                          "/apis/events_k8s_io/v1beta1/watch/namespaces/{namespace}/events/{name}"
                                                          , message = request);
        return x;
    }

    public function getExtensionsAPIGroup() returns http:Response|error {
        endpoint http:Client _getExtensionsAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getExtensionsAPIGroupEp->get("/apis/extensions/", message = request);
        return x;
    }

    public function getExtensionsV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getExtensionsV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getExtensionsV1beta1APIResourcesEp->get("/apis/extensions/v1beta1/", message = request);
        return x;
    }

    public function listExtensionsV1beta1DaemonSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1DaemonSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1DaemonSetForAllNamespacesEp->get("/apis/extensions/v1beta1/daemonsets", message =
            request);
        return x;
    }

    public function listExtensionsV1beta1DeploymentForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1DeploymentForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1DeploymentForAllNamespacesEp->get("/apis/extensions/v1beta1/deployments", message
            =
            request);
        return x;
    }

    public function listExtensionsV1beta1IngressForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1IngressForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1IngressForAllNamespacesEp->get("/apis/extensions/v1beta1/ingresses", message =
            request);
        return x;
    }

    public function listExtensionsV1beta1NamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NamespacedDaemonSetEp->get(
                                                                 "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets"
                                                                 , message = request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedDaemonSet(io_k8s_api_extensions_v1beta1_DaemonSet
                                                               _createExtensionsV1beta1NamespacedDaemonSetBody
        ,                                                      string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedDaemonSetEp->post(
                                                                   "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets"
                                                                   , request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionNamespacedDaemonSet(string namespace) returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionNamespacedDaemonSetEp->delete(
                                                                             "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets"
                                                                             , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedDaemonSet(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedDaemonSetEp->get(
                                                                 "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}"
                                                                 , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedDaemonSet(io_k8s_api_extensions_v1beta1_DaemonSet
                                                                _replaceExtensionsV1beta1NamespacedDaemonSetBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedDaemonSetEp->put(
                                                                    "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}"
                                                                    , request);
        return x;
    }

    public function deleteExtensionsV1beta1NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                               _deleteExtensionsV1beta1NamespacedDaemonSetBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1NamespacedDaemonSetEp->delete(
                                                                   "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}"
                                                                   , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedDaemonSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                              _patchExtensionsV1beta1NamespacedDaemonSetBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedDaemonSetBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedDaemonSetEp->patch(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}"
                                                                  , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedDaemonSetStatus(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedDaemonSetStatusEp->get(
                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status"
                                                                       , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedDaemonSetStatus(io_k8s_api_extensions_v1beta1_DaemonSet
                                                                      _replaceExtensionsV1beta1NamespacedDaemonSetStatusBody
        ,                                                             string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedDaemonSetStatusEp->put(
                                                                          "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status"
                                                                          , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedDaemonSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchExtensionsV1beta1NamespacedDaemonSetStatusBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedDaemonSetStatusBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedDaemonSetStatusEp->patch(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status"
                                                                        , request);
        return x;
    }

    public function listExtensionsV1beta1NamespacedDeployment(string namespace) returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NamespacedDeploymentEp->get(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/deployments"
                                                                  , message = request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedDeployment(io_k8s_api_extensions_v1beta1_Deployment
                                                                _createExtensionsV1beta1NamespacedDeploymentBody
        ,                                                       string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedDeploymentEp->post(
                                                                    "/apis/extensions/v1beta1/namespaces/{namespace}/deployments"
                                                                    , request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionNamespacedDeployment(string namespace) returns http:Response|error
    {
        endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionNamespacedDeploymentEp->delete(
                                                                              "/apis/extensions/v1beta1/namespaces/{namespace}/deployments"
                                                                              , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedDeployment(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedDeploymentEp->get(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                                  , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedDeployment(io_k8s_api_extensions_v1beta1_Deployment
                                                                 _replaceExtensionsV1beta1NamespacedDeploymentBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedDeploymentEp->put(
                                                                     "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                                     , request);
        return x;
    }

    public function deleteExtensionsV1beta1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                _deleteExtensionsV1beta1NamespacedDeploymentBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1NamespacedDeploymentEp->delete(
                                                                    "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                                    , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedDeployment(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchExtensionsV1beta1NamespacedDeploymentBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedDeploymentBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedDeploymentEp->patch(
                                                                   "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}"
                                                                   , request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedDeploymentRollback(io_k8s_api_extensions_v1beta1_DeploymentRollback
                                                                        _createExtensionsV1beta1NamespacedDeploymentRollbackBody
        ,                                                               string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedDeploymentRollbackEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedDeploymentRollbackBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedDeploymentRollbackEp->post(
                                                                            "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/rollback"
                                                                            , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedDeploymentScale(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedDeploymentScaleEp->get(
                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
                                                                       , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedDeploymentScale(io_k8s_api_extensions_v1beta1_Scale
                                                                      _replaceExtensionsV1beta1NamespacedDeploymentScaleBody
        ,                                                             string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedDeploymentScaleEp->put(
                                                                          "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
                                                                          , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedDeploymentScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchExtensionsV1beta1NamespacedDeploymentScaleBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedDeploymentScaleBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedDeploymentScaleEp->patch(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale"
                                                                        , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedDeploymentStatus(string name, string namespace) returns http:Response
                |
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedDeploymentStatusEp->get(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status"
                                                                        , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedDeploymentStatus(io_k8s_api_extensions_v1beta1_Deployment
                                                                       _replaceExtensionsV1beta1NamespacedDeploymentStatusBody
        ,                                                              string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedDeploymentStatusEp->put(
                                                                           "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status"
                                                                           , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedDeploymentStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                     _patchExtensionsV1beta1NamespacedDeploymentStatusBody
        ,                                                            string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedDeploymentStatusBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedDeploymentStatusEp->patch(
                                                                         "/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status"
                                                                         , request);
        return x;
    }

    public function listExtensionsV1beta1NamespacedIngress(string namespace) returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NamespacedIngressEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses"
            ,
            message = request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedIngress(io_k8s_api_extensions_v1beta1_Ingress
                                                             _createExtensionsV1beta1NamespacedIngressBody
        ,                                                    string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedIngressBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedIngressEp->post(
                                                                 "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses"
                                                                 , request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionNamespacedIngress(string namespace) returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedIngressEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionNamespacedIngressEp->delete(
                                                                           "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses"
                                                                           , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedIngress(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedIngressEp->get(
                                                               "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}"
                                                               , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedIngress(io_k8s_api_extensions_v1beta1_Ingress
                                                              _replaceExtensionsV1beta1NamespacedIngressBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedIngressBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedIngressEp->put(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}"
                                                                  , request);
        return x;
    }

    public function deleteExtensionsV1beta1NamespacedIngress(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                             _deleteExtensionsV1beta1NamespacedIngressBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1NamespacedIngressBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1NamespacedIngressEp->delete(
                                                                 "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}"
                                                                 , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedIngress(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                            _patchExtensionsV1beta1NamespacedIngressBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedIngressBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedIngressEp->patch(
                                                                "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}"
                                                                , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedIngressStatus(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedIngressStatusEp->get(
                                                                     "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status"
                                                                     , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedIngressStatus(io_k8s_api_extensions_v1beta1_Ingress
                                                                    _replaceExtensionsV1beta1NamespacedIngressStatusBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedIngressStatusBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedIngressStatusEp->put(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status"
                                                                        , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedIngressStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                  _patchExtensionsV1beta1NamespacedIngressStatusBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedIngressStatusBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedIngressStatusEp->patch(
                                                                      "/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status"
                                                                      , request);
        return x;
    }

    public function listExtensionsV1beta1NamespacedNetworkPolicy(string namespace) returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NamespacedNetworkPolicyEp->get(
                                                                     "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies"
                                                                     , message = request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedNetworkPolicy(io_k8s_api_extensions_v1beta1_NetworkPolicy
                                                                   _createExtensionsV1beta1NamespacedNetworkPolicyBody,
                                                                   string namespace) returns http:Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedNetworkPolicyEp->post(
                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies"
                                                                       , request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionNamespacedNetworkPolicy(string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionNamespacedNetworkPolicyEp->delete(
                                                                                 "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies"
                                                                                 , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedNetworkPolicy(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedNetworkPolicyEp->get(
                                                                     "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}"
                                                                     , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedNetworkPolicy(io_k8s_api_extensions_v1beta1_NetworkPolicy
                                                                    _replaceExtensionsV1beta1NamespacedNetworkPolicyBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedNetworkPolicyEp->put(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}"
                                                                        , request);
        return x;
    }

    public function deleteExtensionsV1beta1NamespacedNetworkPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                   _deleteExtensionsV1beta1NamespacedNetworkPolicyBody,
                                                                   string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1NamespacedNetworkPolicyEp->delete(
                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}"
                                                                       , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedNetworkPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                  _patchExtensionsV1beta1NamespacedNetworkPolicyBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedNetworkPolicyEp->patch(
                                                                      "/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}"
                                                                      , request);
        return x;
    }

    public function listExtensionsV1beta1NamespacedReplicaSet(string namespace) returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NamespacedReplicaSetEp->get(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets"
                                                                  , message = request);
        return x;
    }

    public function createExtensionsV1beta1NamespacedReplicaSet(io_k8s_api_extensions_v1beta1_ReplicaSet
                                                                _createExtensionsV1beta1NamespacedReplicaSetBody
        ,                                                       string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _createExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1NamespacedReplicaSetEp->post(
                                                                    "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets"
                                                                    , request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionNamespacedReplicaSet(string namespace) returns http:Response|error
    {
        endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionNamespacedReplicaSetEp->delete(
                                                                              "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets"
                                                                              , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedReplicaSet(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedReplicaSetEp->get(
                                                                  "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}"
                                                                  , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedReplicaSet(io_k8s_api_extensions_v1beta1_ReplicaSet
                                                                 _replaceExtensionsV1beta1NamespacedReplicaSetBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedReplicaSetEp->put(
                                                                     "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}"
                                                                     , request);
        return x;
    }

    public function deleteExtensionsV1beta1NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                _deleteExtensionsV1beta1NamespacedReplicaSetBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1NamespacedReplicaSetEp->delete(
                                                                    "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}"
                                                                    , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedReplicaSet(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchExtensionsV1beta1NamespacedReplicaSetBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedReplicaSetBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedReplicaSetEp->patch(
                                                                   "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}"
                                                                   , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedReplicaSetScale(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedReplicaSetScaleEp->get(
                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale"
                                                                       , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedReplicaSetScale(io_k8s_api_extensions_v1beta1_Scale
                                                                      _replaceExtensionsV1beta1NamespacedReplicaSetScaleBody
        ,                                                             string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedReplicaSetScaleEp->put(
                                                                          "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale"
                                                                          , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedReplicaSetScale(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchExtensionsV1beta1NamespacedReplicaSetScaleBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedReplicaSetScaleBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedReplicaSetScaleEp->patch(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale"
                                                                        , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedReplicaSetStatus(string name, string namespace) returns http:Response
                |
                error
    {
        endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedReplicaSetStatusEp->get(
                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status"
                                                                        , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedReplicaSetStatus(io_k8s_api_extensions_v1beta1_ReplicaSet
                                                                       _replaceExtensionsV1beta1NamespacedReplicaSetStatusBody
        ,                                                              string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedReplicaSetStatusEp->put(
                                                                           "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status"
                                                                           , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedReplicaSetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                     _patchExtensionsV1beta1NamespacedReplicaSetStatusBody
        ,                                                            string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedReplicaSetStatusBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedReplicaSetStatusEp->patch(
                                                                         "/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status"
                                                                         , request);
        return x;
    }

    public function readExtensionsV1beta1NamespacedReplicationControllerDummyScale(string name, string namespace)
                        returns
                                http
                                :Response|error {
        endpoint http:Client _readExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->get(
                                                                                       "/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
                                                                                       , message = request);
        return x;
    }

    public function replaceExtensionsV1beta1NamespacedReplicationControllerDummyScale(
                        io_k8s_api_extensions_v1beta1_Scale
                        _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody, string name, string
                        namespace) returns http:
                Response|error {
        endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client
        ;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->put(
                                                                                          "/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
                                                                                          , request);
        return x;
    }

    public function patchExtensionsV1beta1NamespacedReplicationControllerDummyScale(
                        io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                        _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody, string name, string
                        namespace) returns http
                :Response|error {
        endpoint http:Client _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->patch(
                                                                                        "/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale"
                                                                                        , request);
        return x;
    }

    public function listExtensionsV1beta1NetworkPolicyForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1NetworkPolicyForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1NetworkPolicyForAllNamespacesEp->get("/apis/extensions/v1beta1/networkpolicies",
            message = request);
        return x;
    }

    public function listExtensionsV1beta1PodSecurityPolicy() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/podsecuritypolicies", message =
            request);
        return x;
    }

    public function createExtensionsV1beta1PodSecurityPolicy(io_k8s_api_extensions_v1beta1_PodSecurityPolicy
                                                             _createExtensionsV1beta1PodSecurityPolicyBody) returns http
                :Response|error {
        endpoint http:Client _createExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createExtensionsV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _createExtensionsV1beta1PodSecurityPolicyEp->post("/apis/extensions/v1beta1/podsecuritypolicies",
            request);
        return x;
    }

    public function deleteExtensionsV1beta1CollectionPodSecurityPolicy() returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1CollectionPodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1CollectionPodSecurityPolicyEp->delete(
                                                                           "/apis/extensions/v1beta1/podsecuritypolicies"
                                                                           , request);
        return x;
    }

    public function readExtensionsV1beta1PodSecurityPolicy(string name) returns http:Response|error {
        endpoint http:Client _readExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/podsecuritypolicies/{name}",
            message = request);
        return x;
    }

    public function replaceExtensionsV1beta1PodSecurityPolicy(io_k8s_api_extensions_v1beta1_PodSecurityPolicy
                                                              _replaceExtensionsV1beta1PodSecurityPolicyBody
        ,                                                     string
                                                              name)
                        returns http:Response|error {
        endpoint http:Client _replaceExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceExtensionsV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _replaceExtensionsV1beta1PodSecurityPolicyEp->put("/apis/extensions/v1beta1/podsecuritypolicies/{name}",
            request);
        return x;
    }

    public function deleteExtensionsV1beta1PodSecurityPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                             _deleteExtensionsV1beta1PodSecurityPolicyBody
        ,                                                    string name)
                        returns http:Response|error {
        endpoint http:Client _deleteExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteExtensionsV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _deleteExtensionsV1beta1PodSecurityPolicyEp->delete(
                                                                 "/apis/extensions/v1beta1/podsecuritypolicies/{name}",
                                                                 request);
        return x;
    }

    public function patchExtensionsV1beta1PodSecurityPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                            _patchExtensionsV1beta1PodSecurityPolicyBody
        ,                                                   string name)
                        returns http:Response|error {
        endpoint http:Client _patchExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchExtensionsV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _patchExtensionsV1beta1PodSecurityPolicyEp->patch("/apis/extensions/v1beta1/podsecuritypolicies/{name}",
            request);
        return x;
    }

    public function listExtensionsV1beta1ReplicaSetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listExtensionsV1beta1ReplicaSetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listExtensionsV1beta1ReplicaSetForAllNamespacesEp->get("/apis/extensions/v1beta1/replicasets", message
            =
            request);
        return x;
    }

    public function watchExtensionsV1beta1DaemonSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1DaemonSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1DaemonSetListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/daemonsets",
            message = request);
        return x;
    }

    public function watchExtensionsV1beta1DeploymentListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1DeploymentListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1DeploymentListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/deployments"
            ,
            message = request);
        return x;
    }

    public function watchExtensionsV1beta1IngressListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1IngressListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1IngressListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/ingresses",
            message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedDaemonSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedDaemonSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedDaemonSetListEp->get(
                                                                      "/apis/extensions/v1beta1/watch/namespaces/{namespace}/daemonsets"
                                                                      , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedDaemonSet(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _watchExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedDaemonSetEp->get(
                                                                  "/apis/extensions/v1beta1/watch/namespaces/{namespace}/daemonsets/{name}"
                                                                  , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedDeploymentList(string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedDeploymentListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedDeploymentListEp->get(
                                                                       "/apis/extensions/v1beta1/watch/namespaces/{namespace}/deployments"
                                                                       , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedDeployment(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedDeploymentEp->get(
                                                                   "/apis/extensions/v1beta1/watch/namespaces/{namespace}/deployments/{name}"
                                                                   , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedIngressList(string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedIngressListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedIngressListEp->get(
                                                                    "/apis/extensions/v1beta1/watch/namespaces/{namespace}/ingresses"
                                                                    , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedIngress(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedIngressEp->get(
                                                                "/apis/extensions/v1beta1/watch/namespaces/{namespace}/ingresses/{name}"
                                                                , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedNetworkPolicyList(string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedNetworkPolicyListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedNetworkPolicyListEp->get(
                                                                          "/apis/extensions/v1beta1/watch/namespaces/{namespace}/networkpolicies"
                                                                          , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedNetworkPolicy(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _watchExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedNetworkPolicyEp->get(
                                                                      "/apis/extensions/v1beta1/watch/namespaces/{namespace}/networkpolicies/{name}"
                                                                      , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedReplicaSetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedReplicaSetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedReplicaSetListEp->get(
                                                                       "/apis/extensions/v1beta1/watch/namespaces/{namespace}/replicasets"
                                                                       , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NamespacedReplicaSet(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NamespacedReplicaSetEp->get(
                                                                   "/apis/extensions/v1beta1/watch/namespaces/{namespace}/replicasets/{name}"
                                                                   , message = request);
        return x;
    }

    public function watchExtensionsV1beta1NetworkPolicyListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1NetworkPolicyListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1NetworkPolicyListForAllNamespacesEp->get(
                                                                                "/apis/extensions/v1beta1/watch/networkpolicies"
                                                                                , message = request);
        return x;
    }

    public function watchExtensionsV1beta1PodSecurityPolicyList() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1PodSecurityPolicyListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1PodSecurityPolicyListEp->get("/apis/extensions/v1beta1/watch/podsecuritypolicies"
            ,
            message = request);
        return x;
    }

    public function watchExtensionsV1beta1PodSecurityPolicy(string name) returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/watch/podsecuritypolicies/{name}"
            , message = request);
        return x;
    }

    public function watchExtensionsV1beta1ReplicaSetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchExtensionsV1beta1ReplicaSetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchExtensionsV1beta1ReplicaSetListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/replicasets"
            ,
            message = request);
        return x;
    }

    public function getNetworkingAPIGroup() returns http:Response|error {
        endpoint http:Client _getNetworkingAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getNetworkingAPIGroupEp->get("/apis/networking_k8s_io/", message = request);
        return x;
    }

    public function getNetworkingV1APIResources() returns http:Response|error {
        endpoint http:Client _getNetworkingV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getNetworkingV1APIResourcesEp->get("/apis/networking_k8s_io/v1/", message = request);
        return x;
    }

    public function listNetworkingV1NamespacedNetworkPolicy(string namespace) returns http:Response|error {
        endpoint http:Client _listNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listNetworkingV1NamespacedNetworkPolicyEp->get(
                                                                "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies"
                                                                , message = request);
        return x;
    }

    public function createNetworkingV1NamespacedNetworkPolicy(io_k8s_api_networking_v1_NetworkPolicy
                                                              _createNetworkingV1NamespacedNetworkPolicyBody
        ,                                                     string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _createNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createNetworkingV1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _createNetworkingV1NamespacedNetworkPolicyEp->post(
                                                                  "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies"
                                                                  , request);
        return x;
    }

    public function deleteNetworkingV1CollectionNamespacedNetworkPolicy(string namespace) returns http:Response|error {
        endpoint http:Client _deleteNetworkingV1CollectionNamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteNetworkingV1CollectionNamespacedNetworkPolicyEp->delete(
                                                                            "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies"
                                                                            , request);
        return x;
    }

    public function readNetworkingV1NamespacedNetworkPolicy(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readNetworkingV1NamespacedNetworkPolicyEp->get(
                                                                "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies/{name}"
                                                                , message = request);
        return x;
    }

    public function replaceNetworkingV1NamespacedNetworkPolicy(io_k8s_api_networking_v1_NetworkPolicy
                                                               _replaceNetworkingV1NamespacedNetworkPolicyBody
        ,                                                      string
                                                               name,
                                                               string
                                                               namespace
                        ) returns http:Response|error {
        endpoint http:Client _replaceNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceNetworkingV1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _replaceNetworkingV1NamespacedNetworkPolicyEp->put(
                                                                   "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies/{name}"
                                                                   , request);
        return x;
    }

    public function deleteNetworkingV1NamespacedNetworkPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                              _deleteNetworkingV1NamespacedNetworkPolicyBody
        ,                                                     string
                                                              name,
                                                              string
                                                              namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteNetworkingV1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _deleteNetworkingV1NamespacedNetworkPolicyEp->delete(
                                                                  "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies/{name}"
                                                                  , request);
        return x;
    }

    public function patchNetworkingV1NamespacedNetworkPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                             _patchNetworkingV1NamespacedNetworkPolicyBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _patchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchNetworkingV1NamespacedNetworkPolicyBody);

        // TODO: Update the request as needed
        var x = _patchNetworkingV1NamespacedNetworkPolicyEp->patch(
                                                                 "/apis/networking_k8s_io/v1/namespaces/{namespace}/networkpolicies/{name}"
                                                                 , request);
        return x;
    }

    public function listNetworkingV1NetworkPolicyForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listNetworkingV1NetworkPolicyForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listNetworkingV1NetworkPolicyForAllNamespacesEp->get("/apis/networking_k8s_io/v1/networkpolicies",
            message
            = request);
        return x;
    }

    public function watchNetworkingV1NamespacedNetworkPolicyList(string namespace) returns http:Response|error {
        endpoint http:Client _watchNetworkingV1NamespacedNetworkPolicyListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchNetworkingV1NamespacedNetworkPolicyListEp->get(
                                                                     "/apis/networking_k8s_io/v1/watch/namespaces/{namespace}/networkpolicies"
                                                                     , message = request);
        return x;
    }

    public function watchNetworkingV1NamespacedNetworkPolicy(string name, string namespace) returns http:Response|error
    {
        endpoint http:Client _watchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchNetworkingV1NamespacedNetworkPolicyEp->get(
                                                                 "/apis/networking_k8s_io/v1/watch/namespaces/{namespace}/networkpolicies/{name}"
                                                                 , message = request);
        return x;
    }

    public function watchNetworkingV1NetworkPolicyListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchNetworkingV1NetworkPolicyListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchNetworkingV1NetworkPolicyListForAllNamespacesEp->get(
                                                                           "/apis/networking_k8s_io/v1/watch/networkpolicies"
                                                                           , message = request);
        return x;
    }

    public function getPolicyAPIGroup() returns http:Response|error {
        endpoint http:Client _getPolicyAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getPolicyAPIGroupEp->get("/apis/policy/", message = request);
        return x;
    }

    public function getPolicyV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getPolicyV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getPolicyV1beta1APIResourcesEp->get("/apis/policy/v1beta1/", message = request);
        return x;
    }

    public function listPolicyV1beta1NamespacedPodDisruptionBudget(string namespace) returns http:Response|error {
        endpoint http:Client _listPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(
                                                                       "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets"
                                                                       , message = request);
        return x;
    }

    public function createPolicyV1beta1NamespacedPodDisruptionBudget(io_k8s_api_policy_v1beta1_PodDisruptionBudget
                                                                     _createPolicyV1beta1NamespacedPodDisruptionBudgetBody
        ,                                                            string namespace) returns http:Response|error {
        endpoint http:Client _createPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createPolicyV1beta1NamespacedPodDisruptionBudgetBody);

        // TODO: Update the request as needed
        var x = _createPolicyV1beta1NamespacedPodDisruptionBudgetEp->post(
                                                                         "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets"
                                                                         , request);
        return x;
    }

    public function deletePolicyV1beta1CollectionNamespacedPodDisruptionBudget(string namespace) returns http:Response|
                error
    {
        endpoint http:Client _deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp->delete(
                                                                                   "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets"
                                                                                   , request);
        return x;
    }

    public function readPolicyV1beta1NamespacedPodDisruptionBudget(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(
                                                                       "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}"
                                                                       , message = request);
        return x;
    }

    public function replacePolicyV1beta1NamespacedPodDisruptionBudget(io_k8s_api_policy_v1beta1_PodDisruptionBudget
                                                                      _replacePolicyV1beta1NamespacedPodDisruptionBudgetBody
        ,                                                             string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replacePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replacePolicyV1beta1NamespacedPodDisruptionBudgetBody);

        // TODO: Update the request as needed
        var x = _replacePolicyV1beta1NamespacedPodDisruptionBudgetEp->put(
                                                                          "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}"
                                                                          , request);
        return x;
    }

    public function deletePolicyV1beta1NamespacedPodDisruptionBudget(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                     _deletePolicyV1beta1NamespacedPodDisruptionBudgetBody
        ,                                                            string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _deletePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deletePolicyV1beta1NamespacedPodDisruptionBudgetBody);

        // TODO: Update the request as needed
        var x = _deletePolicyV1beta1NamespacedPodDisruptionBudgetEp->delete(
                                                                         "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}"
                                                                         , request);
        return x;
    }

    public function patchPolicyV1beta1NamespacedPodDisruptionBudget(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchPolicyV1beta1NamespacedPodDisruptionBudgetBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _patchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchPolicyV1beta1NamespacedPodDisruptionBudgetBody);

        // TODO: Update the request as needed
        var x = _patchPolicyV1beta1NamespacedPodDisruptionBudgetEp->patch(
                                                                        "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}"
                                                                        , request);
        return x;
    }

    public function readPolicyV1beta1NamespacedPodDisruptionBudgetStatus(string name, string namespace) returns http:
                Response|
                error {
        endpoint http:Client _readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->get(
                                                                             "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status"
                                                                             , message = request);
        return x;
    }

    public function replacePolicyV1beta1NamespacedPodDisruptionBudgetStatus(
                        io_k8s_api_policy_v1beta1_PodDisruptionBudget
                        _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusBody, string name, string namespace)
                        returns http:Response|
                                error {
        endpoint http:Client _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusBody);

        // TODO: Update the request as needed
        var x = _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->put(
                                                                                "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status"
                                                                                , request);
        return x;
    }

    public function patchPolicyV1beta1NamespacedPodDisruptionBudgetStatus(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                          _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusBody
        ,                                                                 string name, string namespace) returns http:
                Response|error
    {
        endpoint http:Client _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusBody);

        // TODO: Update the request as needed
        var x = _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->patch(
                                                                              "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status"
                                                                              , request);
        return x;
    }

    public function listPolicyV1beta1PodDisruptionBudgetForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp->get("/apis/policy/v1beta1/poddisruptionbudgets"
            ,
            message = request);
        return x;
    }

    public function listPolicyV1beta1PodSecurityPolicy() returns http:Response|error {
        endpoint http:Client _listPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/podsecuritypolicies", message = request
        );
        return x;
    }

    public function createPolicyV1beta1PodSecurityPolicy(io_k8s_api_policy_v1beta1_PodSecurityPolicy
                                                         _createPolicyV1beta1PodSecurityPolicyBody) returns http:
                Response|error {
        endpoint http:Client _createPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createPolicyV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _createPolicyV1beta1PodSecurityPolicyEp->post("/apis/policy/v1beta1/podsecuritypolicies", request);
        return x;
    }

    public function deletePolicyV1beta1CollectionPodSecurityPolicy() returns http:Response|error {
        endpoint http:Client _deletePolicyV1beta1CollectionPodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deletePolicyV1beta1CollectionPodSecurityPolicyEp->delete("/apis/policy/v1beta1/podsecuritypolicies",
            request);
        return x;
    }

    public function readPolicyV1beta1PodSecurityPolicy(string name) returns http:Response|error {
        endpoint http:Client _readPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/podsecuritypolicies/{name}", message =
            request);
        return x;
    }

    public function replacePolicyV1beta1PodSecurityPolicy(io_k8s_api_policy_v1beta1_PodSecurityPolicy
                                                          _replacePolicyV1beta1PodSecurityPolicyBody
        ,                                                 string name)
                        returns http:Response|error {
        endpoint http:Client _replacePolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replacePolicyV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _replacePolicyV1beta1PodSecurityPolicyEp->put("/apis/policy/v1beta1/podsecuritypolicies/{name}", request
        );
        return x;
    }

    public function deletePolicyV1beta1PodSecurityPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                         _deletePolicyV1beta1PodSecurityPolicyBody
        ,                                                string name) returns http
                :Response|error {
        endpoint http:Client _deletePolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deletePolicyV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _deletePolicyV1beta1PodSecurityPolicyEp->delete("/apis/policy/v1beta1/podsecuritypolicies/{name}",
            request)
        ;
        return x;
    }

    public function patchPolicyV1beta1PodSecurityPolicy(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                        _patchPolicyV1beta1PodSecurityPolicyBody
        ,                                               string name) returns http
                :Response|error {
        endpoint http:Client _patchPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchPolicyV1beta1PodSecurityPolicyBody);

        // TODO: Update the request as needed
        var x = _patchPolicyV1beta1PodSecurityPolicyEp->patch("/apis/policy/v1beta1/podsecuritypolicies/{name}", request
        );
        return x;
    }

    public function watchPolicyV1beta1NamespacedPodDisruptionBudgetList(string namespace) returns http:Response|error {
        endpoint http:Client _watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp->get(
                                                                            "/apis/policy/v1beta1/watch/namespaces/{namespace}/poddisruptionbudgets"
                                                                            , message = request);
        return x;
    }

    public function watchPolicyV1beta1NamespacedPodDisruptionBudget(string name, string namespace) returns http:Response
                |
                error
    {
        endpoint http:Client _watchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(
                                                                        "/apis/policy/v1beta1/watch/namespaces/{namespace}/poddisruptionbudgets/{name}"
                                                                        , message = request);
        return x;
    }

    public function watchPolicyV1beta1PodDisruptionBudgetListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp->get(
                                                                                  "/apis/policy/v1beta1/watch/poddisruptionbudgets"
                                                                                  , message = request);
        return x;
    }

    public function watchPolicyV1beta1PodSecurityPolicyList() returns http:Response|error {
        endpoint http:Client _watchPolicyV1beta1PodSecurityPolicyListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchPolicyV1beta1PodSecurityPolicyListEp->get("/apis/policy/v1beta1/watch/podsecuritypolicies",
            message =
            request);
        return x;
    }

    public function watchPolicyV1beta1PodSecurityPolicy(string name) returns http:Response|error {
        endpoint http:Client _watchPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/watch/podsecuritypolicies/{name}",
            message = request);
        return x;
    }

    public function getRbacAuthorizationAPIGroup() returns http:Response|error {
        endpoint http:Client _getRbacAuthorizationAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getRbacAuthorizationAPIGroupEp->get("/apis/rbac_authorization_k8s_io/", message = request);
        return x;
    }

    public function getRbacAuthorizationV1APIResources() returns http:Response|error {
        endpoint http:Client _getRbacAuthorizationV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getRbacAuthorizationV1APIResourcesEp->get("/apis/rbac_authorization_k8s_io/v1/", message = request);
        return x;
    }

    public function listRbacAuthorizationV1ClusterRoleBinding() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1ClusterRoleBindingEp->get("/apis/rbac_authorization_k8s_io/v1/clusterrolebindings"
            ,
            message = request);
        return x;
    }

    public function createRbacAuthorizationV1ClusterRoleBinding(io_k8s_api_rbac_v1_ClusterRoleBinding
                                                                _createRbacAuthorizationV1ClusterRoleBindingBody)
                        returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1ClusterRoleBindingEp->post(
                                                                    "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings"
                                                                    , request);
        return x;
    }

    public function deleteRbacAuthorizationV1CollectionClusterRoleBinding() returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1CollectionClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1CollectionClusterRoleBindingEp->delete(
                                                                              "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings"
                                                                              , request);
        return x;
    }

    public function readRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response|error {
        endpoint http:Client _readRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1ClusterRoleBindingEp->get(
                                                                  "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings/{name}"
                                                                  , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1ClusterRoleBinding(io_k8s_api_rbac_v1_ClusterRoleBinding
                                                                 _replaceRbacAuthorizationV1ClusterRoleBindingBody,
                                                                 string name) returns http:Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1ClusterRoleBindingEp->put(
                                                                     "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings/{name}"
                                                                     , request);
        return x;
    }

    public function deleteRbacAuthorizationV1ClusterRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                _deleteRbacAuthorizationV1ClusterRoleBindingBody
        ,                                                       string
                                                                name)
                        returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1ClusterRoleBindingEp->delete(
                                                                    "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings/{name}"
                                                                    , request);
        return x;
    }

    public function patchRbacAuthorizationV1ClusterRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                               _patchRbacAuthorizationV1ClusterRoleBindingBody
        ,                                                      string
                                                               name)
                        returns http:Response|error {
        endpoint http:Client _patchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1ClusterRoleBindingEp->patch(
                                                                   "/apis/rbac_authorization_k8s_io/v1/clusterrolebindings/{name}"
                                                                   , request);
        return x;
    }

    public function listRbacAuthorizationV1ClusterRole() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac_authorization_k8s_io/v1/clusterroles", message =
            request);
        return x;
    }

    public function createRbacAuthorizationV1ClusterRole(io_k8s_api_rbac_v1_ClusterRole
                                                         _createRbacAuthorizationV1ClusterRoleBody) returns http:
                Response|error {
        endpoint http:Client _createRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1ClusterRoleEp->post("/apis/rbac_authorization_k8s_io/v1/clusterroles", request
        );
        return x;
    }

    public function deleteRbacAuthorizationV1CollectionClusterRole() returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1CollectionClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1CollectionClusterRoleEp->delete(
                                                                       "/apis/rbac_authorization_k8s_io/v1/clusterroles"
                                                                       , request);
        return x;
    }

    public function readRbacAuthorizationV1ClusterRole(string name) returns http:Response|error {
        endpoint http:Client _readRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac_authorization_k8s_io/v1/clusterroles/{name}",
            message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1ClusterRole(io_k8s_api_rbac_v1_ClusterRole
                                                          _replaceRbacAuthorizationV1ClusterRoleBody
        ,                                                 string name)
                        returns http:Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1ClusterRoleEp->put("/apis/rbac_authorization_k8s_io/v1/clusterroles/{name}",
            request);
        return x;
    }

    public function deleteRbacAuthorizationV1ClusterRole(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                         _deleteRbacAuthorizationV1ClusterRoleBody
        ,                                                string name) returns http
                :Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1ClusterRoleEp->delete("/apis/rbac_authorization_k8s_io/v1/clusterroles/{name}"
            ,
            request);
        return x;
    }

    public function patchRbacAuthorizationV1ClusterRole(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                        _patchRbacAuthorizationV1ClusterRoleBody
        ,                                               string name) returns http
                :Response|error {
        endpoint http:Client _patchRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1ClusterRoleEp->patch("/apis/rbac_authorization_k8s_io/v1/clusterroles/{name}",
            request);
        return x;
    }

    public function listRbacAuthorizationV1NamespacedRoleBinding(string namespace) returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1NamespacedRoleBindingEp->get(
                                                                     "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings"
                                                                     , message = request);
        return x;
    }

    public function createRbacAuthorizationV1NamespacedRoleBinding(io_k8s_api_rbac_v1_RoleBinding
                                                                   _createRbacAuthorizationV1NamespacedRoleBindingBody,
                                                                   string namespace) returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1NamespacedRoleBindingEp->post(
                                                                       "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings"
                                                                       , request);
        return x;
    }

    public function deleteRbacAuthorizationV1CollectionNamespacedRoleBinding(string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp->delete(
                                                                                 "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings"
                                                                                 , request);
        return x;
    }

    public function readRbacAuthorizationV1NamespacedRoleBinding(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _readRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1NamespacedRoleBindingEp->get(
                                                                     "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings/{name}"
                                                                     , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1NamespacedRoleBinding(io_k8s_api_rbac_v1_RoleBinding
                                                                    _replaceRbacAuthorizationV1NamespacedRoleBindingBody
        ,                                                           string name, string namespace) returns http:Response
                |error {
        endpoint http:Client _replaceRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1NamespacedRoleBindingEp->put(
                                                                        "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings/{name}"
                                                                        , request);
        return x;
    }

    public function deleteRbacAuthorizationV1NamespacedRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                   _deleteRbacAuthorizationV1NamespacedRoleBindingBody,
                                                                   string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1NamespacedRoleBindingEp->delete(
                                                                       "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings/{name}"
                                                                       , request);
        return x;
    }

    public function patchRbacAuthorizationV1NamespacedRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                  _patchRbacAuthorizationV1NamespacedRoleBindingBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _patchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1NamespacedRoleBindingEp->patch(
                                                                      "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/rolebindings/{name}"
                                                                      , request);
        return x;
    }

    public function listRbacAuthorizationV1NamespacedRole(string namespace) returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1NamespacedRoleEp->get(
                                                              "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles"
                                                              , message = request);
        return x;
    }

    public function createRbacAuthorizationV1NamespacedRole(io_k8s_api_rbac_v1_Role
                                                            _createRbacAuthorizationV1NamespacedRoleBody
        ,                                                   string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1NamespacedRoleEp->post(
                                                                "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles"
                                                                , request);
        return x;
    }

    public function deleteRbacAuthorizationV1CollectionNamespacedRole(string namespace) returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1CollectionNamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1CollectionNamespacedRoleEp->delete(
                                                                          "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles"
                                                                          , request);
        return x;
    }

    public function readRbacAuthorizationV1NamespacedRole(string name, string namespace) returns http:Response|error {
        endpoint http:Client _readRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1NamespacedRoleEp->get(
                                                              "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles/{name}"
                                                              , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1NamespacedRole(io_k8s_api_rbac_v1_Role
                                                             _replaceRbacAuthorizationV1NamespacedRoleBody
        ,                                                    string name,
                                                             string
                                                             namespace)
                        returns http:Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1NamespacedRoleEp->put(
                                                                 "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles/{name}"
                                                                 , request);
        return x;
    }

    public function deleteRbacAuthorizationV1NamespacedRole(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                            _deleteRbacAuthorizationV1NamespacedRoleBody
        ,                                                   string name,
                                                            string
                                                            namespace)
                        returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1NamespacedRoleEp->delete(
                                                                "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles/{name}"
                                                                , request);
        return x;
    }

    public function patchRbacAuthorizationV1NamespacedRole(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                           _patchRbacAuthorizationV1NamespacedRoleBody
        ,                                                  string name,
                                                           string namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1NamespacedRoleEp->patch(
                                                               "/apis/rbac_authorization_k8s_io/v1/namespaces/{namespace}/roles/{name}"
                                                               , request);
        return x;
    }

    public function listRbacAuthorizationV1RoleBindingForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1RoleBindingForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1RoleBindingForAllNamespacesEp->get(
                                                                           "/apis/rbac_authorization_k8s_io/v1/rolebindings"
                                                                           , message = request);
        return x;
    }

    public function listRbacAuthorizationV1RoleForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1RoleForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1RoleForAllNamespacesEp->get("/apis/rbac_authorization_k8s_io/v1/roles", message
            =
            request);
        return x;
    }

    public function watchRbacAuthorizationV1ClusterRoleBindingList() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1ClusterRoleBindingListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1ClusterRoleBindingListEp->get(
                                                                       "/apis/rbac_authorization_k8s_io/v1/watch/clusterrolebindings"
                                                                       , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1ClusterRoleBindingEp->get(
                                                                   "/apis/rbac_authorization_k8s_io/v1/watch/clusterrolebindings/{name}"
                                                                   , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1ClusterRoleList() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1ClusterRoleListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1ClusterRoleListEp->get("/apis/rbac_authorization_k8s_io/v1/watch/clusterroles",
            message = request);
        return x;
    }

    public function watchRbacAuthorizationV1ClusterRole(string name) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac_authorization_k8s_io/v1/watch/clusterroles/{name}"
            ,
            message = request);
        return x;
    }

    public function watchRbacAuthorizationV1NamespacedRoleBindingList(string namespace) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleBindingListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1NamespacedRoleBindingListEp->get(
                                                                          "/apis/rbac_authorization_k8s_io/v1/watch/namespaces/{namespace}/rolebindings"
                                                                          , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1NamespacedRoleBinding(string name, string namespace) returns http:Response|
                error
    {
        endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1NamespacedRoleBindingEp->get(
                                                                      "/apis/rbac_authorization_k8s_io/v1/watch/namespaces/{namespace}/rolebindings/{name}"
                                                                      , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1NamespacedRoleList(string namespace) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1NamespacedRoleListEp->get(
                                                                   "/apis/rbac_authorization_k8s_io/v1/watch/namespaces/{namespace}/roles"
                                                                   , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1NamespacedRole(string name, string namespace) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1NamespacedRoleEp->get(
                                                               "/apis/rbac_authorization_k8s_io/v1/watch/namespaces/{namespace}/roles/{name}"
                                                               , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1RoleBindingListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp->get(
                                                                                "/apis/rbac_authorization_k8s_io/v1/watch/rolebindings"
                                                                                , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1RoleListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1RoleListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1RoleListForAllNamespacesEp->get("/apis/rbac_authorization_k8s_io/v1/watch/roles"
            ,
            message = request);
        return x;
    }

    public function getRbacAuthorizationV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getRbacAuthorizationV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getRbacAuthorizationV1beta1APIResourcesEp->get("/apis/rbac_authorization_k8s_io/v1beta1/", message =
            request);
        return x;
    }

    public function listRbacAuthorizationV1beta1ClusterRoleBinding() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1ClusterRoleBindingEp->get(
                                                                       "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings"
                                                                       , message = request);
        return x;
    }

    public function createRbacAuthorizationV1beta1ClusterRoleBinding(io_k8s_api_rbac_v1beta1_ClusterRoleBinding
                                                                     _createRbacAuthorizationV1beta1ClusterRoleBindingBody
                        ) returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1beta1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1beta1ClusterRoleBindingEp->post(
                                                                         "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings"
                                                                         , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1CollectionClusterRoleBinding() returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp->delete(
                                                                                   "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings"
                                                                                   , request);
        return x;
    }

    public function readRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response|error {
        endpoint http:Client _readRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1beta1ClusterRoleBindingEp->get(
                                                                       "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings/{name}"
                                                                       , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1beta1ClusterRoleBinding(io_k8s_api_rbac_v1beta1_ClusterRoleBinding
                                                                      _replaceRbacAuthorizationV1beta1ClusterRoleBindingBody
        ,                                                             string name) returns http:Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1beta1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1beta1ClusterRoleBindingEp->put(
                                                                          "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings/{name}"
                                                                          , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1ClusterRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                     _deleteRbacAuthorizationV1beta1ClusterRoleBindingBody
        ,                                                            string name) returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1beta1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1ClusterRoleBindingEp->delete(
                                                                         "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings/{name}"
                                                                         , request);
        return x;
    }

    public function patchRbacAuthorizationV1beta1ClusterRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                    _patchRbacAuthorizationV1beta1ClusterRoleBindingBody
        ,                                                           string name) returns http:Response|error {
        endpoint http:Client _patchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1beta1ClusterRoleBindingBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1beta1ClusterRoleBindingEp->patch(
                                                                        "/apis/rbac_authorization_k8s_io/v1beta1/clusterrolebindings/{name}"
                                                                        , request);
        return x;
    }

    public function listRbacAuthorizationV1beta1ClusterRole() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1ClusterRoleEp->get("/apis/rbac_authorization_k8s_io/v1beta1/clusterroles",
            message = request);
        return x;
    }

    public function createRbacAuthorizationV1beta1ClusterRole(io_k8s_api_rbac_v1beta1_ClusterRole
                                                              _createRbacAuthorizationV1beta1ClusterRoleBody) returns http
                :Response|error {
        endpoint http:Client _createRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1beta1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1beta1ClusterRoleEp->post(
                                                                  "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles"
                                                                  ,
                                                                  request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1CollectionClusterRole() returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1CollectionClusterRoleEp->delete(
                                                                            "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles"
                                                                            , request);
        return x;
    }

    public function readRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response|error {
        endpoint http:Client _readRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1beta1ClusterRoleEp->get(
                                                                "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles/{name}"
                                                                , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1beta1ClusterRole(io_k8s_api_rbac_v1beta1_ClusterRole
                                                               _replaceRbacAuthorizationV1beta1ClusterRoleBody
        ,                                                      string
                                                               name)
                        returns http:Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1beta1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1beta1ClusterRoleEp->put(
                                                                   "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles/{name}"
                                                                   , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1ClusterRole(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                              _deleteRbacAuthorizationV1beta1ClusterRoleBody
        ,                                                     string
                                                              name)
                        returns http:Response|error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1beta1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1ClusterRoleEp->delete(
                                                                  "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles/{name}"
                                                                  , request);
        return x;
    }

    public function patchRbacAuthorizationV1beta1ClusterRole(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                             _patchRbacAuthorizationV1beta1ClusterRoleBody
        ,                                                    string name)
                        returns http:Response|error {
        endpoint http:Client _patchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1beta1ClusterRoleBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1beta1ClusterRoleEp->patch(
                                                                 "/apis/rbac_authorization_k8s_io/v1beta1/clusterroles/{name}"
                                                                 , request);
        return x;
    }

    public function listRbacAuthorizationV1beta1NamespacedRoleBinding(string namespace) returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(
                                                                          "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings"
                                                                          , message = request);
        return x;
    }

    public function createRbacAuthorizationV1beta1NamespacedRoleBinding(io_k8s_api_rbac_v1beta1_RoleBinding
                                                                        _createRbacAuthorizationV1beta1NamespacedRoleBindingBody
        ,                                                               string namespace) returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1beta1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1beta1NamespacedRoleBindingEp->post(
                                                                            "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings"
                                                                            , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBinding(string namespace) returns http:
                Response|
                error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp->delete(
                                                                                      "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings"
                                                                                      , request);
        return x;
    }

    public function readRbacAuthorizationV1beta1NamespacedRoleBinding(string name, string namespace) returns http:
                Response|
                error {
        endpoint http:Client _readRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(
                                                                          "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings/{name}"
                                                                          , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1beta1NamespacedRoleBinding(io_k8s_api_rbac_v1beta1_RoleBinding
                                                                         _replaceRbacAuthorizationV1beta1NamespacedRoleBindingBody
        ,                                                                string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1beta1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp->put(
                                                                             "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings/{name}"
                                                                             , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1NamespacedRoleBinding(
                        io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                        _deleteRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace) returns http
                :Response|error
    {
        endpoint http:Client _deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1beta1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp->delete(
                                                                            "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings/{name}"
                                                                            , request);
        return x;
    }

    public function patchRbacAuthorizationV1beta1NamespacedRoleBinding(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                       _patchRbacAuthorizationV1beta1NamespacedRoleBindingBody
        ,                                                              string name, string namespace) returns http:
                Response|error {
        endpoint http:Client _patchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1beta1NamespacedRoleBindingBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1beta1NamespacedRoleBindingEp->patch(
                                                                           "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/rolebindings/{name}"
                                                                           , request);
        return x;
    }

    public function listRbacAuthorizationV1beta1NamespacedRole(string namespace) returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1NamespacedRoleEp->get(
                                                                   "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles"
                                                                   , message = request);
        return x;
    }

    public function createRbacAuthorizationV1beta1NamespacedRole(io_k8s_api_rbac_v1beta1_Role
                                                                 _createRbacAuthorizationV1beta1NamespacedRoleBody,
                                                                 string namespace) returns http:Response|error {
        endpoint http:Client _createRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createRbacAuthorizationV1beta1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _createRbacAuthorizationV1beta1NamespacedRoleEp->post(
                                                                     "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles"
                                                                     , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1CollectionNamespacedRole(string namespace) returns http:Response|error
    {
        endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp->delete(
                                                                               "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles"
                                                                               , request);
        return x;
    }

    public function readRbacAuthorizationV1beta1NamespacedRole(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _readRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readRbacAuthorizationV1beta1NamespacedRoleEp->get(
                                                                   "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles/{name}"
                                                                   , message = request);
        return x;
    }

    public function replaceRbacAuthorizationV1beta1NamespacedRole(io_k8s_api_rbac_v1beta1_Role
                                                                  _replaceRbacAuthorizationV1beta1NamespacedRoleBody,
                                                                  string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _replaceRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceRbacAuthorizationV1beta1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _replaceRbacAuthorizationV1beta1NamespacedRoleEp->put(
                                                                      "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles/{name}"
                                                                      , request);
        return x;
    }

    public function deleteRbacAuthorizationV1beta1NamespacedRole(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                                 _deleteRbacAuthorizationV1beta1NamespacedRoleBody,
                                                                 string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _deleteRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteRbacAuthorizationV1beta1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _deleteRbacAuthorizationV1beta1NamespacedRoleEp->delete(
                                                                     "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles/{name}"
                                                                     , request);
        return x;
    }

    public function patchRbacAuthorizationV1beta1NamespacedRole(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                                _patchRbacAuthorizationV1beta1NamespacedRoleBody
        ,                                                       string
                                                                name,
                                                                string
                                                                namespace
                        ) returns http:Response|error {
        endpoint http:Client _patchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchRbacAuthorizationV1beta1NamespacedRoleBody);

        // TODO: Update the request as needed
        var x = _patchRbacAuthorizationV1beta1NamespacedRoleEp->patch(
                                                                    "/apis/rbac_authorization_k8s_io/v1beta1/namespaces/{namespace}/roles/{name}"
                                                                    , request);
        return x;
    }

    public function listRbacAuthorizationV1beta1RoleBindingForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp->get(
                                                                                "/apis/rbac_authorization_k8s_io/v1beta1/rolebindings"
                                                                                , message = request);
        return x;
    }

    public function listRbacAuthorizationV1beta1RoleForAllNamespaces() returns http:Response|error {
        endpoint http:Client _listRbacAuthorizationV1beta1RoleForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listRbacAuthorizationV1beta1RoleForAllNamespacesEp->get("/apis/rbac_authorization_k8s_io/v1beta1/roles"
            ,
            message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1ClusterRoleBindingList() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleBindingListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1ClusterRoleBindingListEp->get(
                                                                            "/apis/rbac_authorization_k8s_io/v1beta1/watch/clusterrolebindings"
                                                                            , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1ClusterRoleBindingEp->get(
                                                                        "/apis/rbac_authorization_k8s_io/v1beta1/watch/clusterrolebindings/{name}"
                                                                        , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1ClusterRoleList() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1ClusterRoleListEp->get(
                                                                     "/apis/rbac_authorization_k8s_io/v1beta1/watch/clusterroles"
                                                                     , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1ClusterRoleEp->get(
                                                                 "/apis/rbac_authorization_k8s_io/v1beta1/watch/clusterroles/{name}"
                                                                 , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1NamespacedRoleBindingList(string namespace) returns http:Response|error
    {
        endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp->get(
                                                                               "/apis/rbac_authorization_k8s_io/v1beta1/watch/namespaces/{namespace}/rolebindings"
                                                                               , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1NamespacedRoleBinding(string name, string namespace) returns http:
                Response|
                error {
        endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(
                                                                           "/apis/rbac_authorization_k8s_io/v1beta1/watch/namespaces/{namespace}/rolebindings/{name}"
                                                                           , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1NamespacedRoleList(string namespace) returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1NamespacedRoleListEp->get(
                                                                        "/apis/rbac_authorization_k8s_io/v1beta1/watch/namespaces/{namespace}/roles"
                                                                        , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1NamespacedRole(string name, string namespace) returns http:Response|
                error {
        endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1NamespacedRoleEp->get(
                                                                    "/apis/rbac_authorization_k8s_io/v1beta1/watch/namespaces/{namespace}/roles/{name}"
                                                                    , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1RoleBindingListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp->get(
                                                                                     "/apis/rbac_authorization_k8s_io/v1beta1/watch/rolebindings"
                                                                                     , message = request);
        return x;
    }

    public function watchRbacAuthorizationV1beta1RoleListForAllNamespaces() returns http:Response|error {
        endpoint http:Client _watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp->get(
                                                                              "/apis/rbac_authorization_k8s_io/v1beta1/watch/roles"
                                                                              , message = request);
        return x;
    }

    public function getStorageAPIGroup() returns http:Response|error {
        endpoint http:Client _getStorageAPIGroupEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getStorageAPIGroupEp->get("/apis/storage_k8s_io/", message = request);
        return x;
    }

    public function getStorageV1APIResources() returns http:Response|error {
        endpoint http:Client _getStorageV1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getStorageV1APIResourcesEp->get("/apis/storage_k8s_io/v1/", message = request);
        return x;
    }

    public function listStorageV1StorageClass() returns http:Response|error {
        endpoint http:Client _listStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listStorageV1StorageClassEp->get("/apis/storage_k8s_io/v1/storageclasses", message = request);
        return x;
    }

    public function createStorageV1StorageClass(io_k8s_api_storage_v1_StorageClass _createStorageV1StorageClassBody)
                        returns http:Response|error {
        endpoint http:Client _createStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createStorageV1StorageClassBody);

        // TODO: Update the request as needed
        var x = _createStorageV1StorageClassEp->post("/apis/storage_k8s_io/v1/storageclasses", request);
        return x;
    }

    public function deleteStorageV1CollectionStorageClass() returns http:Response|error {
        endpoint http:Client _deleteStorageV1CollectionStorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteStorageV1CollectionStorageClassEp->delete("/apis/storage_k8s_io/v1/storageclasses", request);
        return x;
    }

    public function readStorageV1StorageClass(string name) returns http:Response|error {
        endpoint http:Client _readStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readStorageV1StorageClassEp->get("/apis/storage_k8s_io/v1/storageclasses/{name}", message = request);
        return x;
    }

    public function replaceStorageV1StorageClass(io_k8s_api_storage_v1_StorageClass _replaceStorageV1StorageClassBody,
                                                 string name) returns http:Response|error {
        endpoint http:Client _replaceStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceStorageV1StorageClassBody);

        // TODO: Update the request as needed
        var x = _replaceStorageV1StorageClassEp->put("/apis/storage_k8s_io/v1/storageclasses/{name}", request);
        return x;
    }

    public function deleteStorageV1StorageClass(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                _deleteStorageV1StorageClassBody,
                                                string name) returns http:Response|
                error {
        endpoint http:Client _deleteStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteStorageV1StorageClassBody);

        // TODO: Update the request as needed
        var x = _deleteStorageV1StorageClassEp->delete("/apis/storage_k8s_io/v1/storageclasses/{name}", request);
        return x;
    }

    public function patchStorageV1StorageClass(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                               _patchStorageV1StorageClassBody,
                                               string name) returns http:Response|error {
        endpoint http:Client _patchStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchStorageV1StorageClassBody);

        // TODO: Update the request as needed
        var x = _patchStorageV1StorageClassEp->patch("/apis/storage_k8s_io/v1/storageclasses/{name}", request);
        return x;
    }

    public function watchStorageV1StorageClassList() returns http:Response|error {
        endpoint http:Client _watchStorageV1StorageClassListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1StorageClassListEp->get("/apis/storage_k8s_io/v1/watch/storageclasses", message = request
        );
        return x;
    }

    public function watchStorageV1StorageClass(string name) returns http:Response|error {
        endpoint http:Client _watchStorageV1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1StorageClassEp->get("/apis/storage_k8s_io/v1/watch/storageclasses/{name}", message =
            request
        );
        return x;
    }

    public function getStorageV1beta1APIResources() returns http:Response|error {
        endpoint http:Client _getStorageV1beta1APIResourcesEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getStorageV1beta1APIResourcesEp->get("/apis/storage_k8s_io/v1beta1/", message = request);
        return x;
    }

    public function listStorageV1beta1StorageClass() returns http:Response|error {
        endpoint http:Client _listStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listStorageV1beta1StorageClassEp->get("/apis/storage_k8s_io/v1beta1/storageclasses", message = request)
        ;
        return x;
    }

    public function createStorageV1beta1StorageClass(io_k8s_api_storage_v1beta1_StorageClass
                                                     _createStorageV1beta1StorageClassBody) returns http:Response|error
    {
        endpoint http:Client _createStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createStorageV1beta1StorageClassBody);

        // TODO: Update the request as needed
        var x = _createStorageV1beta1StorageClassEp->post("/apis/storage_k8s_io/v1beta1/storageclasses", request);
        return x;
    }

    public function deleteStorageV1beta1CollectionStorageClass() returns http:Response|error {
        endpoint http:Client _deleteStorageV1beta1CollectionStorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteStorageV1beta1CollectionStorageClassEp->delete("/apis/storage_k8s_io/v1beta1/storageclasses",
            request);
        return x;
    }

    public function readStorageV1beta1StorageClass(string name) returns http:Response|error {
        endpoint http:Client _readStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readStorageV1beta1StorageClassEp->get("/apis/storage_k8s_io/v1beta1/storageclasses/{name}", message =
            request);
        return x;
    }

    public function replaceStorageV1beta1StorageClass(io_k8s_api_storage_v1beta1_StorageClass
                                                      _replaceStorageV1beta1StorageClassBody
        ,                                             string name) returns http:
                Response|error {
        endpoint http:Client _replaceStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceStorageV1beta1StorageClassBody);

        // TODO: Update the request as needed
        var x = _replaceStorageV1beta1StorageClassEp->put("/apis/storage_k8s_io/v1beta1/storageclasses/{name}", request)
        ;
        return x;
    }

    public function deleteStorageV1beta1StorageClass(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                     _deleteStorageV1beta1StorageClassBody
        ,                                            string name) returns http:
                Response|error {
        endpoint http:Client _deleteStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteStorageV1beta1StorageClassBody);

        // TODO: Update the request as needed
        var x = _deleteStorageV1beta1StorageClassEp->delete("/apis/storage_k8s_io/v1beta1/storageclasses/{name}",
            request);
        return x;
    }

    public function patchStorageV1beta1StorageClass(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                    _patchStorageV1beta1StorageClassBody
        ,                                           string name) returns http:
                Response|error {
        endpoint http:Client _patchStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchStorageV1beta1StorageClassBody);

        // TODO: Update the request as needed
        var x = _patchStorageV1beta1StorageClassEp->patch("/apis/storage_k8s_io/v1beta1/storageclasses/{name}", request)
        ;
        return x;
    }

    public function listStorageV1beta1VolumeAttachment() returns http:Response|error {
        endpoint http:Client _listStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _listStorageV1beta1VolumeAttachmentEp->get("/apis/storage_k8s_io/v1beta1/volumeattachments", message =
            request);
        return x;
    }

    public function createStorageV1beta1VolumeAttachment(io_k8s_api_storage_v1beta1_VolumeAttachment
                                                         _createStorageV1beta1VolumeAttachmentBody) returns http:
                Response|error {
        endpoint http:Client _createStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_createStorageV1beta1VolumeAttachmentBody);

        // TODO: Update the request as needed
        var x = _createStorageV1beta1VolumeAttachmentEp->post("/apis/storage_k8s_io/v1beta1/volumeattachments", request)
        ;
        return x;
    }

    public function deleteStorageV1beta1CollectionVolumeAttachment() returns http:Response|error {
        endpoint http:Client _deleteStorageV1beta1CollectionVolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _deleteStorageV1beta1CollectionVolumeAttachmentEp->delete(
                                                                       "/apis/storage_k8s_io/v1beta1/volumeattachments",
                                                                       request);
        return x;
    }

    public function readStorageV1beta1VolumeAttachment(string name) returns http:Response|error {
        endpoint http:Client _readStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _readStorageV1beta1VolumeAttachmentEp->get("/apis/storage_k8s_io/v1beta1/volumeattachments/{name}",
            message
            = request);
        return x;
    }

    public function replaceStorageV1beta1VolumeAttachment(io_k8s_api_storage_v1beta1_VolumeAttachment
                                                          _replaceStorageV1beta1VolumeAttachmentBody
        ,                                                 string name)
                        returns http:Response|error {
        endpoint http:Client _replaceStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_replaceStorageV1beta1VolumeAttachmentBody);

        // TODO: Update the request as needed
        var x = _replaceStorageV1beta1VolumeAttachmentEp->put("/apis/storage_k8s_io/v1beta1/volumeattachments/{name}",
            request);
        return x;
    }

    public function deleteStorageV1beta1VolumeAttachment(io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions
                                                         _deleteStorageV1beta1VolumeAttachmentBody
        ,                                                string name) returns http
                :Response|error {
        endpoint http:Client _deleteStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_deleteStorageV1beta1VolumeAttachmentBody);

        // TODO: Update the request as needed
        var x = _deleteStorageV1beta1VolumeAttachmentEp->delete("/apis/storage_k8s_io/v1beta1/volumeattachments/{name}",
            request);
        return x;
    }

    public function patchStorageV1beta1VolumeAttachment(io_k8s_apimachinery_pkg_apis_meta_v1_Patch
                                                        _patchStorageV1beta1VolumeAttachmentBody
        ,                                               string name) returns http
                :Response|error {
        endpoint http:Client _patchStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;
        request.setPayload(check <json>_patchStorageV1beta1VolumeAttachmentBody);

        // TODO: Update the request as needed
        var x = _patchStorageV1beta1VolumeAttachmentEp->patch("/apis/storage_k8s_io/v1beta1/volumeattachments/{name}",
            request);
        return x;
    }

    public function watchStorageV1beta1StorageClassList() returns http:Response|error {
        endpoint http:Client _watchStorageV1beta1StorageClassListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1beta1StorageClassListEp->get("/apis/storage_k8s_io/v1beta1/watch/storageclasses", message
            =
            request);
        return x;
    }

    public function watchStorageV1beta1StorageClass(string name) returns http:Response|error {
        endpoint http:Client _watchStorageV1beta1StorageClassEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1beta1StorageClassEp->get("/apis/storage_k8s_io/v1beta1/watch/storageclasses/{name}",
            message
            = request);
        return x;
    }

    public function watchStorageV1beta1VolumeAttachmentList() returns http:Response|error {
        endpoint http:Client _watchStorageV1beta1VolumeAttachmentListEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1beta1VolumeAttachmentListEp->get("/apis/storage_k8s_io/v1beta1/watch/volumeattachments",
            message = request);
        return x;
    }

    public function watchStorageV1beta1VolumeAttachment(string name) returns http:Response|error {
        endpoint http:Client _watchStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _watchStorageV1beta1VolumeAttachmentEp->get("/apis/storage_k8s_io/v1beta1/watch/volumeattachments/{name}"
            ,
            message = request);
        return x;
    }

    public function logFileListHandler() returns http:Response|error {
        endpoint http:Client _logFileListHandlerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _logFileListHandlerEp->get("/logs/", message = request);
        return x;
    }

    public function logFileHandler(string logpath) returns http:Response|error {
        endpoint http:Client _logFileHandlerEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _logFileHandlerEp->get("/logs/{logpath}", message = request);
        return x;
    }

    public function getCodeVersion() returns http:Response|error {
        endpoint http:Client _getCodeVersionEp = self.clientEp.client;
        http:Request request = new;

        // TODO: Update the request as needed
        var x = _getCodeVersionEp->get("/version/", message = request);
        return x;
    }
};
