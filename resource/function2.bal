public function watchAppsV1beta1NamespacedDeployment(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta1NamespacedDeploymentEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/deployments/{name}", request = request);
}

public function watchAppsV1beta1NamespacedStatefulSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta1NamespacedStatefulSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta1NamespacedStatefulSetListEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/statefulsets", request = request);
}

public function watchAppsV1beta1NamespacedStatefulSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta1NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta1NamespacedStatefulSetEp->get("/apis/apps/v1beta1/watch/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function watchAppsV1beta1StatefulSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta1StatefulSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta1StatefulSetListForAllNamespacesEp->get("/apis/apps/v1beta1/watch/statefulsets", request = request);
}

public function getAppsV1beta2APIResources() returns http:Response | error {
endpoint http:Client _getAppsV1beta2APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAppsV1beta2APIResourcesEp->get("/apis/apps/v1beta2/", request = request);
}

public function listAppsV1beta2ControllerRevisionForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAppsV1beta2ControllerRevisionForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2ControllerRevisionForAllNamespacesEp->get("/apis/apps/v1beta2/controllerrevisions", request = request);
}

public function listAppsV1beta2DaemonSetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAppsV1beta2DaemonSetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2DaemonSetForAllNamespacesEp->get("/apis/apps/v1beta2/daemonsets", request = request);
}

public function listAppsV1beta2DeploymentForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAppsV1beta2DeploymentForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2DeploymentForAllNamespacesEp->get("/apis/apps/v1beta2/deployments", request = request);
}

public function listAppsV1beta2NamespacedControllerRevision(string namespace) returns http:Response | error {
endpoint http:Client _listAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2NamespacedControllerRevisionEp->get("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions", request = request);
}

public function createAppsV1beta2NamespacedControllerRevision(io.k8s.api.apps.v1beta2.ControllerRevision _createAppsV1beta2NamespacedControllerRevisionBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAppsV1beta2NamespacedControllerRevisionBody);

// TODO: Update the request as needed
return check _createAppsV1beta2NamespacedControllerRevisionEp->post("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions", request = request);
}

public function deleteAppsV1beta2CollectionNamespacedControllerRevision(string namespace) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2CollectionNamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAppsV1beta2CollectionNamespacedControllerRevisionEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions", request = request);
}

public function readAppsV1beta2NamespacedControllerRevision(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedControllerRevisionEp->get("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}", request = request);
}

public function replaceAppsV1beta2NamespacedControllerRevision(io.k8s.api.apps.v1beta2.ControllerRevision _replaceAppsV1beta2NamespacedControllerRevisionBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedControllerRevisionBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedControllerRevisionEp->put("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}", request = request);
}

public function deleteAppsV1beta2NamespacedControllerRevision(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAppsV1beta2NamespacedControllerRevisionBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAppsV1beta2NamespacedControllerRevisionBody);

// TODO: Update the request as needed
return check _deleteAppsV1beta2NamespacedControllerRevisionEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}", request = request);
}

public function patchAppsV1beta2NamespacedControllerRevision(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedControllerRevisionBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedControllerRevisionBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedControllerRevisionEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/controllerrevisions/{name}", request = request);
}

public function listAppsV1beta2NamespacedDaemonSet(string namespace) returns http:Response | error {
endpoint http:Client _listAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2NamespacedDaemonSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets", request = request);
}

public function createAppsV1beta2NamespacedDaemonSet(io.k8s.api.apps.v1beta2.DaemonSet _createAppsV1beta2NamespacedDaemonSetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAppsV1beta2NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _createAppsV1beta2NamespacedDaemonSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets", request = request);
}

public function deleteAppsV1beta2CollectionNamespacedDaemonSet(string namespace) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2CollectionNamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAppsV1beta2CollectionNamespacedDaemonSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets", request = request);
}

public function readAppsV1beta2NamespacedDaemonSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedDaemonSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function replaceAppsV1beta2NamespacedDaemonSet(io.k8s.api.apps.v1beta2.DaemonSet _replaceAppsV1beta2NamespacedDaemonSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedDaemonSetEp->put("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function deleteAppsV1beta2NamespacedDaemonSet(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAppsV1beta2NamespacedDaemonSetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAppsV1beta2NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _deleteAppsV1beta2NamespacedDaemonSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function patchAppsV1beta2NamespacedDaemonSet(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedDaemonSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedDaemonSetEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function readAppsV1beta2NamespacedDaemonSetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedDaemonSetStatusEp->get("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function replaceAppsV1beta2NamespacedDaemonSetStatus(io.k8s.api.apps.v1beta2.DaemonSet _replaceAppsV1beta2NamespacedDaemonSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedDaemonSetStatusBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedDaemonSetStatusEp->put("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function patchAppsV1beta2NamespacedDaemonSetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedDaemonSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedDaemonSetStatusBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedDaemonSetStatusEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function listAppsV1beta2NamespacedDeployment(string namespace) returns http:Response | error {
endpoint http:Client _listAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2NamespacedDeploymentEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments", request = request);
}

public function createAppsV1beta2NamespacedDeployment(io.k8s.api.apps.v1beta2.Deployment _createAppsV1beta2NamespacedDeploymentBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAppsV1beta2NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _createAppsV1beta2NamespacedDeploymentEp->post("/apis/apps/v1beta2/namespaces/{namespace}/deployments", request = request);
}

public function deleteAppsV1beta2CollectionNamespacedDeployment(string namespace) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2CollectionNamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAppsV1beta2CollectionNamespacedDeploymentEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/deployments", request = request);
}

public function readAppsV1beta2NamespacedDeployment(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedDeploymentEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}", request = request);
}

public function replaceAppsV1beta2NamespacedDeployment(io.k8s.api.apps.v1beta2.Deployment _replaceAppsV1beta2NamespacedDeploymentBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedDeploymentEp->put("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}", request = request);
}

public function deleteAppsV1beta2NamespacedDeployment(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAppsV1beta2NamespacedDeploymentBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAppsV1beta2NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _deleteAppsV1beta2NamespacedDeploymentEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}", request = request);
}

public function patchAppsV1beta2NamespacedDeployment(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedDeploymentBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedDeploymentEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}", request = request);
}

public function readAppsV1beta2NamespacedDeploymentScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedDeploymentScaleEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function replaceAppsV1beta2NamespacedDeploymentScale(io.k8s.api.apps.v1beta2.Scale _replaceAppsV1beta2NamespacedDeploymentScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedDeploymentScaleBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedDeploymentScaleEp->put("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function patchAppsV1beta2NamespacedDeploymentScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedDeploymentScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedDeploymentScaleBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedDeploymentScaleEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function readAppsV1beta2NamespacedDeploymentStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedDeploymentStatusEp->get("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function replaceAppsV1beta2NamespacedDeploymentStatus(io.k8s.api.apps.v1beta2.Deployment _replaceAppsV1beta2NamespacedDeploymentStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedDeploymentStatusBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedDeploymentStatusEp->put("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function patchAppsV1beta2NamespacedDeploymentStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedDeploymentStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedDeploymentStatusBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedDeploymentStatusEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function listAppsV1beta2NamespacedReplicaSet(string namespace) returns http:Response | error {
endpoint http:Client _listAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2NamespacedReplicaSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets", request = request);
}

public function createAppsV1beta2NamespacedReplicaSet(io.k8s.api.apps.v1beta2.ReplicaSet _createAppsV1beta2NamespacedReplicaSetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAppsV1beta2NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _createAppsV1beta2NamespacedReplicaSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/replicasets", request = request);
}

public function deleteAppsV1beta2CollectionNamespacedReplicaSet(string namespace) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2CollectionNamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAppsV1beta2CollectionNamespacedReplicaSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/replicasets", request = request);
}

public function readAppsV1beta2NamespacedReplicaSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedReplicaSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function replaceAppsV1beta2NamespacedReplicaSet(io.k8s.api.apps.v1beta2.ReplicaSet _replaceAppsV1beta2NamespacedReplicaSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedReplicaSetEp->put("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function deleteAppsV1beta2NamespacedReplicaSet(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAppsV1beta2NamespacedReplicaSetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAppsV1beta2NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _deleteAppsV1beta2NamespacedReplicaSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function patchAppsV1beta2NamespacedReplicaSet(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedReplicaSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedReplicaSetEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function readAppsV1beta2NamespacedReplicaSetScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedReplicaSetScaleEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function replaceAppsV1beta2NamespacedReplicaSetScale(io.k8s.api.apps.v1beta2.Scale _replaceAppsV1beta2NamespacedReplicaSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedReplicaSetScaleBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedReplicaSetScaleEp->put("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function patchAppsV1beta2NamespacedReplicaSetScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedReplicaSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedReplicaSetScaleBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedReplicaSetScaleEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function readAppsV1beta2NamespacedReplicaSetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedReplicaSetStatusEp->get("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function replaceAppsV1beta2NamespacedReplicaSetStatus(io.k8s.api.apps.v1beta2.ReplicaSet _replaceAppsV1beta2NamespacedReplicaSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedReplicaSetStatusBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedReplicaSetStatusEp->put("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function patchAppsV1beta2NamespacedReplicaSetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedReplicaSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedReplicaSetStatusBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedReplicaSetStatusEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function listAppsV1beta2NamespacedStatefulSet(string namespace) returns http:Response | error {
endpoint http:Client _listAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2NamespacedStatefulSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets", request = request);
}

public function createAppsV1beta2NamespacedStatefulSet(io.k8s.api.apps.v1beta2.StatefulSet _createAppsV1beta2NamespacedStatefulSetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAppsV1beta2NamespacedStatefulSetBody);

// TODO: Update the request as needed
return check _createAppsV1beta2NamespacedStatefulSetEp->post("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets", request = request);
}

public function deleteAppsV1beta2CollectionNamespacedStatefulSet(string namespace) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2CollectionNamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAppsV1beta2CollectionNamespacedStatefulSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets", request = request);
}

public function readAppsV1beta2NamespacedStatefulSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedStatefulSetEp->get("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function replaceAppsV1beta2NamespacedStatefulSet(io.k8s.api.apps.v1beta2.StatefulSet _replaceAppsV1beta2NamespacedStatefulSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedStatefulSetBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedStatefulSetEp->put("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function deleteAppsV1beta2NamespacedStatefulSet(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAppsV1beta2NamespacedStatefulSetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAppsV1beta2NamespacedStatefulSetBody);

// TODO: Update the request as needed
return check _deleteAppsV1beta2NamespacedStatefulSetEp->delete("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function patchAppsV1beta2NamespacedStatefulSet(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedStatefulSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedStatefulSetBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedStatefulSetEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function readAppsV1beta2NamespacedStatefulSetScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedStatefulSetScaleEp->get("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale", request = request);
}

public function replaceAppsV1beta2NamespacedStatefulSetScale(io.k8s.api.apps.v1beta2.Scale _replaceAppsV1beta2NamespacedStatefulSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedStatefulSetScaleBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedStatefulSetScaleEp->put("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale", request = request);
}

public function patchAppsV1beta2NamespacedStatefulSetScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedStatefulSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedStatefulSetScaleBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedStatefulSetScaleEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/scale", request = request);
}

public function readAppsV1beta2NamespacedStatefulSetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAppsV1beta2NamespacedStatefulSetStatusEp->get("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status", request = request);
}

public function replaceAppsV1beta2NamespacedStatefulSetStatus(io.k8s.api.apps.v1beta2.StatefulSet _replaceAppsV1beta2NamespacedStatefulSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAppsV1beta2NamespacedStatefulSetStatusBody);

// TODO: Update the request as needed
return check _replaceAppsV1beta2NamespacedStatefulSetStatusEp->put("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status", request = request);
}

public function patchAppsV1beta2NamespacedStatefulSetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAppsV1beta2NamespacedStatefulSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAppsV1beta2NamespacedStatefulSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAppsV1beta2NamespacedStatefulSetStatusBody);

// TODO: Update the request as needed
return check _patchAppsV1beta2NamespacedStatefulSetStatusEp->patch("/apis/apps/v1beta2/namespaces/{namespace}/statefulsets/{name}/status", request = request);
}

public function listAppsV1beta2ReplicaSetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAppsV1beta2ReplicaSetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2ReplicaSetForAllNamespacesEp->get("/apis/apps/v1beta2/replicasets", request = request);
}

public function listAppsV1beta2StatefulSetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAppsV1beta2StatefulSetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAppsV1beta2StatefulSetForAllNamespacesEp->get("/apis/apps/v1beta2/statefulsets", request = request);
}

public function watchAppsV1beta2ControllerRevisionListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta2ControllerRevisionListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2ControllerRevisionListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/controllerrevisions", request = request);
}

public function watchAppsV1beta2DaemonSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta2DaemonSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2DaemonSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/daemonsets", request = request);
}

public function watchAppsV1beta2DeploymentListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta2DeploymentListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2DeploymentListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/deployments", request = request);
}

public function watchAppsV1beta2NamespacedControllerRevisionList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedControllerRevisionListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedControllerRevisionListEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/controllerrevisions", request = request);
}

public function watchAppsV1beta2NamespacedControllerRevision(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedControllerRevisionEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedControllerRevisionEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/controllerrevisions/{name}", request = request);
}

public function watchAppsV1beta2NamespacedDaemonSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedDaemonSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedDaemonSetListEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/daemonsets", request = request);
}

public function watchAppsV1beta2NamespacedDaemonSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedDaemonSetEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function watchAppsV1beta2NamespacedDeploymentList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedDeploymentListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedDeploymentListEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/deployments", request = request);
}

public function watchAppsV1beta2NamespacedDeployment(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedDeploymentEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/deployments/{name}", request = request);
}

public function watchAppsV1beta2NamespacedReplicaSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedReplicaSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedReplicaSetListEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/replicasets", request = request);
}

public function watchAppsV1beta2NamespacedReplicaSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedReplicaSetEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function watchAppsV1beta2NamespacedStatefulSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedStatefulSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedStatefulSetListEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/statefulsets", request = request);
}

public function watchAppsV1beta2NamespacedStatefulSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAppsV1beta2NamespacedStatefulSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2NamespacedStatefulSetEp->get("/apis/apps/v1beta2/watch/namespaces/{namespace}/statefulsets/{name}", request = request);
}

public function watchAppsV1beta2ReplicaSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta2ReplicaSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2ReplicaSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/replicasets", request = request);
}

public function watchAppsV1beta2StatefulSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAppsV1beta2StatefulSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAppsV1beta2StatefulSetListForAllNamespacesEp->get("/apis/apps/v1beta2/watch/statefulsets", request = request);
}

public function getAuthenticationAPIGroup() returns http:Response | error {
endpoint http:Client _getAuthenticationAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthenticationAPIGroupEp->get("/apis/authentication.k8s.io/", request = request);
}

public function getAuthenticationV1APIResources() returns http:Response | error {
endpoint http:Client _getAuthenticationV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthenticationV1APIResourcesEp->get("/apis/authentication.k8s.io/v1/", request = request);
}

public function createAuthenticationV1TokenReview(io.k8s.api.authentication.v1.TokenReview _createAuthenticationV1TokenReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthenticationV1TokenReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthenticationV1TokenReviewBody);

// TODO: Update the request as needed
return check _createAuthenticationV1TokenReviewEp->post("/apis/authentication.k8s.io/v1/tokenreviews", request = request);
}

public function getAuthenticationV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getAuthenticationV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthenticationV1beta1APIResourcesEp->get("/apis/authentication.k8s.io/v1beta1/", request = request);
}

public function createAuthenticationV1beta1TokenReview(io.k8s.api.authentication.v1beta1.TokenReview _createAuthenticationV1beta1TokenReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthenticationV1beta1TokenReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthenticationV1beta1TokenReviewBody);

// TODO: Update the request as needed
return check _createAuthenticationV1beta1TokenReviewEp->post("/apis/authentication.k8s.io/v1beta1/tokenreviews", request = request);
}

public function getAuthorizationAPIGroup() returns http:Response | error {
endpoint http:Client _getAuthorizationAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthorizationAPIGroupEp->get("/apis/authorization.k8s.io/", request = request);
}

public function getAuthorizationV1APIResources() returns http:Response | error {
endpoint http:Client _getAuthorizationV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthorizationV1APIResourcesEp->get("/apis/authorization.k8s.io/v1/", request = request);
}

public function createAuthorizationV1NamespacedLocalSubjectAccessReview(io.k8s.api.authorization.v1.LocalSubjectAccessReview _createAuthorizationV1NamespacedLocalSubjectAccessReviewBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1NamespacedLocalSubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1NamespacedLocalSubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1NamespacedLocalSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1/namespaces/{namespace}/localsubjectaccessreviews", request = request);
}

public function createAuthorizationV1SelfSubjectAccessReview(io.k8s.api.authorization.v1.SelfSubjectAccessReview _createAuthorizationV1SelfSubjectAccessReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1SelfSubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1SelfSubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1SelfSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1/selfsubjectaccessreviews", request = request);
}

public function createAuthorizationV1SelfSubjectRulesReview(io.k8s.api.authorization.v1.SelfSubjectRulesReview _createAuthorizationV1SelfSubjectRulesReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1SelfSubjectRulesReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1SelfSubjectRulesReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1SelfSubjectRulesReviewEp->post("/apis/authorization.k8s.io/v1/selfsubjectrulesreviews", request = request);
}

public function createAuthorizationV1SubjectAccessReview(io.k8s.api.authorization.v1.SubjectAccessReview _createAuthorizationV1SubjectAccessReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1SubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1SubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1SubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1/subjectaccessreviews", request = request);
}

public function getAuthorizationV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getAuthorizationV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAuthorizationV1beta1APIResourcesEp->get("/apis/authorization.k8s.io/v1beta1/", request = request);
}

public function createAuthorizationV1beta1NamespacedLocalSubjectAccessReview(io.k8s.api.authorization.v1beta1.LocalSubjectAccessReview _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1beta1/namespaces/{namespace}/localsubjectaccessreviews", request = request);
}

public function createAuthorizationV1beta1SelfSubjectAccessReview(io.k8s.api.authorization.v1beta1.SelfSubjectAccessReview _createAuthorizationV1beta1SelfSubjectAccessReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1beta1SelfSubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1beta1SelfSubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1beta1SelfSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1beta1/selfsubjectaccessreviews", request = request);
}

public function createAuthorizationV1beta1SelfSubjectRulesReview(io.k8s.api.authorization.v1beta1.SelfSubjectRulesReview _createAuthorizationV1beta1SelfSubjectRulesReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1beta1SelfSubjectRulesReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1beta1SelfSubjectRulesReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1beta1SelfSubjectRulesReviewEp->post("/apis/authorization.k8s.io/v1beta1/selfsubjectrulesreviews", request = request);
}

public function createAuthorizationV1beta1SubjectAccessReview(io.k8s.api.authorization.v1beta1.SubjectAccessReview _createAuthorizationV1beta1SubjectAccessReviewBody, ) returns http:Response | error {
endpoint http:Client _createAuthorizationV1beta1SubjectAccessReviewEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAuthorizationV1beta1SubjectAccessReviewBody);

// TODO: Update the request as needed
return check _createAuthorizationV1beta1SubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1beta1/subjectaccessreviews", request = request);
}

public function getAutoscalingAPIGroup() returns http:Response | error {
endpoint http:Client _getAutoscalingAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAutoscalingAPIGroupEp->get("/apis/autoscaling/", request = request);
}

public function getAutoscalingV1APIResources() returns http:Response | error {
endpoint http:Client _getAutoscalingV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAutoscalingV1APIResourcesEp->get("/apis/autoscaling/v1/", request = request);
}

public function listAutoscalingV1HorizontalPodAutoscalerForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp->get("/apis/autoscaling/v1/horizontalpodautoscalers", request = request);
}

public function listAutoscalingV1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
endpoint http:Client _listAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function createAutoscalingV1NamespacedHorizontalPodAutoscaler(io.k8s.api.autoscaling.v1.HorizontalPodAutoscaler _createAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _createAutoscalingV1NamespacedHorizontalPodAutoscalerEp->post("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
endpoint http:Client _deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp->delete("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function readAutoscalingV1NamespacedHorizontalPodAutoscaler(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function replaceAutoscalingV1NamespacedHorizontalPodAutoscaler(io.k8s.api.autoscaling.v1.HorizontalPodAutoscaler _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp->put("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function deleteAutoscalingV1NamespacedHorizontalPodAutoscaler(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp->delete("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function patchAutoscalingV1NamespacedHorizontalPodAutoscaler(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAutoscalingV1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->patch("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function readAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->get("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(io.k8s.api.autoscaling.v1.HorizontalPodAutoscaler _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody);

// TODO: Update the request as needed
return check _replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->put("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody);

// TODO: Update the request as needed
return check _patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->patch("/apis/autoscaling/v1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp->get("/apis/autoscaling/v1/watch/horizontalpodautoscalers", request = request);
}

public function watchAutoscalingV1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response | error {
endpoint http:Client _watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp->get("/apis/autoscaling/v1/watch/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function watchAutoscalingV1NamespacedHorizontalPodAutoscaler(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v1/watch/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function getAutoscalingV2beta1APIResources() returns http:Response | error {
endpoint http:Client _getAutoscalingV2beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getAutoscalingV2beta1APIResourcesEp->get("/apis/autoscaling/v2beta1/", request = request);
}

public function listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces() returns http:Response | error {
endpoint http:Client _listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp->get("/apis/autoscaling/v2beta1/horizontalpodautoscalers", request = request);
}

public function listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
endpoint http:Client _listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscaler _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->post("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
endpoint http:Client _deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp->delete("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscaler _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->put("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->delete("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody);

// TODO: Update the request as needed
return check _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->patch("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->get("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(io.k8s.api.autoscaling.v2beta1.HorizontalPodAutoscaler _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody);

// TODO: Update the request as needed
return check _replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->put("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody);

// TODO: Update the request as needed
return check _patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->patch("/apis/autoscaling/v2beta1/namespaces/{namespace}/horizontalpodautoscalers/{name}/status", request = request);
}

public function watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp->get("/apis/autoscaling/v2beta1/watch/horizontalpodautoscalers", request = request);
}

public function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response | error {
endpoint http:Client _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp->get("/apis/autoscaling/v2beta1/watch/namespaces/{namespace}/horizontalpodautoscalers", request = request);
}

public function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get("/apis/autoscaling/v2beta1/watch/namespaces/{namespace}/horizontalpodautoscalers/{name}", request = request);
}

public function getBatchAPIGroup() returns http:Response | error {
endpoint http:Client _getBatchAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getBatchAPIGroupEp->get("/apis/batch/", request = request);
}

public function getBatchV1APIResources() returns http:Response | error {
endpoint http:Client _getBatchV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getBatchV1APIResourcesEp->get("/apis/batch/v1/", request = request);
}

public function listBatchV1JobForAllNamespaces() returns http:Response | error {
endpoint http:Client _listBatchV1JobForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listBatchV1JobForAllNamespacesEp->get("/apis/batch/v1/jobs", request = request);
}

public function listBatchV1NamespacedJob(string namespace) returns http:Response | error {
endpoint http:Client _listBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listBatchV1NamespacedJobEp->get("/apis/batch/v1/namespaces/{namespace}/jobs", request = request);
}

public function createBatchV1NamespacedJob(io.k8s.api.batch.v1.Job _createBatchV1NamespacedJobBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createBatchV1NamespacedJobBody);

// TODO: Update the request as needed
return check _createBatchV1NamespacedJobEp->post("/apis/batch/v1/namespaces/{namespace}/jobs", request = request);
}

public function deleteBatchV1CollectionNamespacedJob(string namespace) returns http:Response | error {
endpoint http:Client _deleteBatchV1CollectionNamespacedJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteBatchV1CollectionNamespacedJobEp->delete("/apis/batch/v1/namespaces/{namespace}/jobs", request = request);
}

public function readBatchV1NamespacedJob(string namestring namespace) returns http:Response | error {
endpoint http:Client _readBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readBatchV1NamespacedJobEp->get("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request = request);
}

public function replaceBatchV1NamespacedJob(io.k8s.api.batch.v1.Job _replaceBatchV1NamespacedJobBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceBatchV1NamespacedJobBody);

// TODO: Update the request as needed
return check _replaceBatchV1NamespacedJobEp->put("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request = request);
}

public function deleteBatchV1NamespacedJob(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteBatchV1NamespacedJobBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteBatchV1NamespacedJobBody);

// TODO: Update the request as needed
return check _deleteBatchV1NamespacedJobEp->delete("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request = request);
}

public function patchBatchV1NamespacedJob(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchBatchV1NamespacedJobBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchBatchV1NamespacedJobBody);

// TODO: Update the request as needed
return check _patchBatchV1NamespacedJobEp->patch("/apis/batch/v1/namespaces/{namespace}/jobs/{name}", request = request);
}

public function readBatchV1NamespacedJobStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readBatchV1NamespacedJobStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readBatchV1NamespacedJobStatusEp->get("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status", request = request);
}

public function replaceBatchV1NamespacedJobStatus(io.k8s.api.batch.v1.Job _replaceBatchV1NamespacedJobStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceBatchV1NamespacedJobStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceBatchV1NamespacedJobStatusBody);

// TODO: Update the request as needed
return check _replaceBatchV1NamespacedJobStatusEp->put("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status", request = request);
}

public function patchBatchV1NamespacedJobStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchBatchV1NamespacedJobStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchBatchV1NamespacedJobStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchBatchV1NamespacedJobStatusBody);

// TODO: Update the request as needed
return check _patchBatchV1NamespacedJobStatusEp->patch("/apis/batch/v1/namespaces/{namespace}/jobs/{name}/status", request = request);
}

public function watchBatchV1JobListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchBatchV1JobListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1JobListForAllNamespacesEp->get("/apis/batch/v1/watch/jobs", request = request);
}

public function watchBatchV1NamespacedJobList(string namespace) returns http:Response | error {
endpoint http:Client _watchBatchV1NamespacedJobListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1NamespacedJobListEp->get("/apis/batch/v1/watch/namespaces/{namespace}/jobs", request = request);
}

public function watchBatchV1NamespacedJob(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchBatchV1NamespacedJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1NamespacedJobEp->get("/apis/batch/v1/watch/namespaces/{namespace}/jobs/{name}", request = request);
}

public function getBatchV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getBatchV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getBatchV1beta1APIResourcesEp->get("/apis/batch/v1beta1/", request = request);
}

public function listBatchV1beta1CronJobForAllNamespaces() returns http:Response | error {
endpoint http:Client _listBatchV1beta1CronJobForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listBatchV1beta1CronJobForAllNamespacesEp->get("/apis/batch/v1beta1/cronjobs", request = request);
}

public function listBatchV1beta1NamespacedCronJob(string namespace) returns http:Response | error {
endpoint http:Client _listBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listBatchV1beta1NamespacedCronJobEp->get("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs", request = request);
}

public function createBatchV1beta1NamespacedCronJob(io.k8s.api.batch.v1beta1.CronJob _createBatchV1beta1NamespacedCronJobBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createBatchV1beta1NamespacedCronJobBody);

// TODO: Update the request as needed
return check _createBatchV1beta1NamespacedCronJobEp->post("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs", request = request);
}

public function deleteBatchV1beta1CollectionNamespacedCronJob(string namespace) returns http:Response | error {
endpoint http:Client _deleteBatchV1beta1CollectionNamespacedCronJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteBatchV1beta1CollectionNamespacedCronJobEp->delete("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs", request = request);
}

public function readBatchV1beta1NamespacedCronJob(string namestring namespace) returns http:Response | error {
endpoint http:Client _readBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readBatchV1beta1NamespacedCronJobEp->get("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}", request = request);
}

public function replaceBatchV1beta1NamespacedCronJob(io.k8s.api.batch.v1beta1.CronJob _replaceBatchV1beta1NamespacedCronJobBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceBatchV1beta1NamespacedCronJobBody);

// TODO: Update the request as needed
return check _replaceBatchV1beta1NamespacedCronJobEp->put("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}", request = request);
}

public function deleteBatchV1beta1NamespacedCronJob(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteBatchV1beta1NamespacedCronJobBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteBatchV1beta1NamespacedCronJobBody);

// TODO: Update the request as needed
return check _deleteBatchV1beta1NamespacedCronJobEp->delete("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}", request = request);
}

public function patchBatchV1beta1NamespacedCronJob(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchBatchV1beta1NamespacedCronJobBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchBatchV1beta1NamespacedCronJobBody);

// TODO: Update the request as needed
return check _patchBatchV1beta1NamespacedCronJobEp->patch("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}", request = request);
}

public function readBatchV1beta1NamespacedCronJobStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readBatchV1beta1NamespacedCronJobStatusEp->get("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status", request = request);
}

public function replaceBatchV1beta1NamespacedCronJobStatus(io.k8s.api.batch.v1beta1.CronJob _replaceBatchV1beta1NamespacedCronJobStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceBatchV1beta1NamespacedCronJobStatusBody);

// TODO: Update the request as needed
return check _replaceBatchV1beta1NamespacedCronJobStatusEp->put("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status", request = request);
}

public function patchBatchV1beta1NamespacedCronJobStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchBatchV1beta1NamespacedCronJobStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchBatchV1beta1NamespacedCronJobStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchBatchV1beta1NamespacedCronJobStatusBody);

// TODO: Update the request as needed
return check _patchBatchV1beta1NamespacedCronJobStatusEp->patch("/apis/batch/v1beta1/namespaces/{namespace}/cronjobs/{name}/status", request = request);
}

public function watchBatchV1beta1CronJobListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchBatchV1beta1CronJobListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1beta1CronJobListForAllNamespacesEp->get("/apis/batch/v1beta1/watch/cronjobs", request = request);
}

public function watchBatchV1beta1NamespacedCronJobList(string namespace) returns http:Response | error {
endpoint http:Client _watchBatchV1beta1NamespacedCronJobListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1beta1NamespacedCronJobListEp->get("/apis/batch/v1beta1/watch/namespaces/{namespace}/cronjobs", request = request);
}

public function watchBatchV1beta1NamespacedCronJob(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchBatchV1beta1NamespacedCronJobEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchBatchV1beta1NamespacedCronJobEp->get("/apis/batch/v1beta1/watch/namespaces/{namespace}/cronjobs/{name}", request = request);
}

public function getCertificatesAPIGroup() returns http:Response | error {
endpoint http:Client _getCertificatesAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getCertificatesAPIGroupEp->get("/apis/certificates.k8s.io/", request = request);
}

public function getCertificatesV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getCertificatesV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getCertificatesV1beta1APIResourcesEp->get("/apis/certificates.k8s.io/v1beta1/", request = request);
}

public function listCertificatesV1beta1CertificateSigningRequest() returns http:Response | error {
endpoint http:Client _listCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listCertificatesV1beta1CertificateSigningRequestEp->get("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", request = request);
}

public function createCertificatesV1beta1CertificateSigningRequest(io.k8s.api.certificates.v1beta1.CertificateSigningRequest _createCertificatesV1beta1CertificateSigningRequestBody, ) returns http:Response | error {
endpoint http:Client _createCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createCertificatesV1beta1CertificateSigningRequestBody);

// TODO: Update the request as needed
return check _createCertificatesV1beta1CertificateSigningRequestEp->post("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", request = request);
}

public function deleteCertificatesV1beta1CollectionCertificateSigningRequest() returns http:Response | error {
endpoint http:Client _deleteCertificatesV1beta1CollectionCertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteCertificatesV1beta1CollectionCertificateSigningRequestEp->delete("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", request = request);
}

public function readCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response | error {
endpoint http:Client _readCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readCertificatesV1beta1CertificateSigningRequestEp->get("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}", request = request);
}

public function replaceCertificatesV1beta1CertificateSigningRequest(io.k8s.api.certificates.v1beta1.CertificateSigningRequest _replaceCertificatesV1beta1CertificateSigningRequestBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceCertificatesV1beta1CertificateSigningRequestBody);

// TODO: Update the request as needed
return check _replaceCertificatesV1beta1CertificateSigningRequestEp->put("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}", request = request);
}

public function deleteCertificatesV1beta1CertificateSigningRequest(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteCertificatesV1beta1CertificateSigningRequestBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteCertificatesV1beta1CertificateSigningRequestBody);

// TODO: Update the request as needed
return check _deleteCertificatesV1beta1CertificateSigningRequestEp->delete("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}", request = request);
}

public function patchCertificatesV1beta1CertificateSigningRequest(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchCertificatesV1beta1CertificateSigningRequestBody, string name, ) returns http:Response | error {
endpoint http:Client _patchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchCertificatesV1beta1CertificateSigningRequestBody);

// TODO: Update the request as needed
return check _patchCertificatesV1beta1CertificateSigningRequestEp->patch("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}", request = request);
}

public function replaceCertificatesV1beta1CertificateSigningRequestApproval(io.k8s.api.certificates.v1beta1.CertificateSigningRequest _replaceCertificatesV1beta1CertificateSigningRequestApprovalBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestApprovalEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceCertificatesV1beta1CertificateSigningRequestApprovalBody);

// TODO: Update the request as needed
return check _replaceCertificatesV1beta1CertificateSigningRequestApprovalEp->put("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}/approval", request = request);
}

public function replaceCertificatesV1beta1CertificateSigningRequestStatus(io.k8s.api.certificates.v1beta1.CertificateSigningRequest _replaceCertificatesV1beta1CertificateSigningRequestStatusBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceCertificatesV1beta1CertificateSigningRequestStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceCertificatesV1beta1CertificateSigningRequestStatusBody);

// TODO: Update the request as needed
return check _replaceCertificatesV1beta1CertificateSigningRequestStatusEp->put("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/{name}/status", request = request);
}

public function watchCertificatesV1beta1CertificateSigningRequestList() returns http:Response | error {
endpoint http:Client _watchCertificatesV1beta1CertificateSigningRequestListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchCertificatesV1beta1CertificateSigningRequestListEp->get("/apis/certificates.k8s.io/v1beta1/watch/certificatesigningrequests", request = request);
}

public function watchCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response | error {
endpoint http:Client _watchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchCertificatesV1beta1CertificateSigningRequestEp->get("/apis/certificates.k8s.io/v1beta1/watch/certificatesigningrequests/{name}", request = request);
}

public function getEventsAPIGroup() returns http:Response | error {
endpoint http:Client _getEventsAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getEventsAPIGroupEp->get("/apis/events.k8s.io/", request = request);
}

public function getEventsV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getEventsV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getEventsV1beta1APIResourcesEp->get("/apis/events.k8s.io/v1beta1/", request = request);
}

public function listEventsV1beta1EventForAllNamespaces() returns http:Response | error {
endpoint http:Client _listEventsV1beta1EventForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listEventsV1beta1EventForAllNamespacesEp->get("/apis/events.k8s.io/v1beta1/events", request = request);
}

public function listEventsV1beta1NamespacedEvent(string namespace) returns http:Response | error {
endpoint http:Client _listEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listEventsV1beta1NamespacedEventEp->get("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", request = request);
}

public function createEventsV1beta1NamespacedEvent(io.k8s.api.events.v1beta1.Event _createEventsV1beta1NamespacedEventBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createEventsV1beta1NamespacedEventBody);

// TODO: Update the request as needed
return check _createEventsV1beta1NamespacedEventEp->post("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", request = request);
}

public function deleteEventsV1beta1CollectionNamespacedEvent(string namespace) returns http:Response | error {
endpoint http:Client _deleteEventsV1beta1CollectionNamespacedEventEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteEventsV1beta1CollectionNamespacedEventEp->delete("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events", request = request);
}

public function readEventsV1beta1NamespacedEvent(string namestring namespace) returns http:Response | error {
endpoint http:Client _readEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readEventsV1beta1NamespacedEventEp->get("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", request = request);
}

public function replaceEventsV1beta1NamespacedEvent(io.k8s.api.events.v1beta1.Event _replaceEventsV1beta1NamespacedEventBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceEventsV1beta1NamespacedEventBody);

// TODO: Update the request as needed
return check _replaceEventsV1beta1NamespacedEventEp->put("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", request = request);
}

public function deleteEventsV1beta1NamespacedEvent(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteEventsV1beta1NamespacedEventBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteEventsV1beta1NamespacedEventBody);

// TODO: Update the request as needed
return check _deleteEventsV1beta1NamespacedEventEp->delete("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", request = request);
}

public function patchEventsV1beta1NamespacedEvent(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchEventsV1beta1NamespacedEventBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchEventsV1beta1NamespacedEventBody);

// TODO: Update the request as needed
return check _patchEventsV1beta1NamespacedEventEp->patch("/apis/events.k8s.io/v1beta1/namespaces/{namespace}/events/{name}", request = request);
}

public function watchEventsV1beta1EventListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchEventsV1beta1EventListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchEventsV1beta1EventListForAllNamespacesEp->get("/apis/events.k8s.io/v1beta1/watch/events", request = request);
}

public function watchEventsV1beta1NamespacedEventList(string namespace) returns http:Response | error {
endpoint http:Client _watchEventsV1beta1NamespacedEventListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchEventsV1beta1NamespacedEventListEp->get("/apis/events.k8s.io/v1beta1/watch/namespaces/{namespace}/events", request = request);
}

public function watchEventsV1beta1NamespacedEvent(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchEventsV1beta1NamespacedEventEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchEventsV1beta1NamespacedEventEp->get("/apis/events.k8s.io/v1beta1/watch/namespaces/{namespace}/events/{name}", request = request);
}

public function getExtensionsAPIGroup() returns http:Response | error {
endpoint http:Client _getExtensionsAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getExtensionsAPIGroupEp->get("/apis/extensions/", request = request);
}

public function getExtensionsV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getExtensionsV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getExtensionsV1beta1APIResourcesEp->get("/apis/extensions/v1beta1/", request = request);
}

public function listExtensionsV1beta1DaemonSetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1DaemonSetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1DaemonSetForAllNamespacesEp->get("/apis/extensions/v1beta1/daemonsets", request = request);
}

public function listExtensionsV1beta1DeploymentForAllNamespaces() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1DeploymentForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1DeploymentForAllNamespacesEp->get("/apis/extensions/v1beta1/deployments", request = request);
}

public function listExtensionsV1beta1IngressForAllNamespaces() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1IngressForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1IngressForAllNamespacesEp->get("/apis/extensions/v1beta1/ingresses", request = request);
}

public function listExtensionsV1beta1NamespacedDaemonSet(string namespace) returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NamespacedDaemonSetEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets", request = request);
}

public function createExtensionsV1beta1NamespacedDaemonSet(io.k8s.api.extensions.v1beta1.DaemonSet _createExtensionsV1beta1NamespacedDaemonSetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedDaemonSetEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets", request = request);
}

public function deleteExtensionsV1beta1CollectionNamespacedDaemonSet(string namespace) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionNamespacedDaemonSetEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets", request = request);
}

public function readExtensionsV1beta1NamespacedDaemonSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedDaemonSetEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function replaceExtensionsV1beta1NamespacedDaemonSet(io.k8s.api.extensions.v1beta1.DaemonSet _replaceExtensionsV1beta1NamespacedDaemonSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedDaemonSetEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function deleteExtensionsV1beta1NamespacedDaemonSet(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1NamespacedDaemonSetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1NamespacedDaemonSetEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function patchExtensionsV1beta1NamespacedDaemonSet(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedDaemonSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedDaemonSetBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedDaemonSetEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function readExtensionsV1beta1NamespacedDaemonSetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedDaemonSetStatusEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function replaceExtensionsV1beta1NamespacedDaemonSetStatus(io.k8s.api.extensions.v1beta1.DaemonSet _replaceExtensionsV1beta1NamespacedDaemonSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedDaemonSetStatusBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedDaemonSetStatusEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function patchExtensionsV1beta1NamespacedDaemonSetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedDaemonSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedDaemonSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedDaemonSetStatusBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedDaemonSetStatusEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/daemonsets/{name}/status", request = request);
}

public function listExtensionsV1beta1NamespacedDeployment(string namespace) returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NamespacedDeploymentEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/deployments", request = request);
}

public function createExtensionsV1beta1NamespacedDeployment(io.k8s.api.extensions.v1beta1.Deployment _createExtensionsV1beta1NamespacedDeploymentBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedDeploymentEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/deployments", request = request);
}

public function deleteExtensionsV1beta1CollectionNamespacedDeployment(string namespace) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionNamespacedDeploymentEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/deployments", request = request);
}

public function readExtensionsV1beta1NamespacedDeployment(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedDeploymentEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}", request = request);
}

public function replaceExtensionsV1beta1NamespacedDeployment(io.k8s.api.extensions.v1beta1.Deployment _replaceExtensionsV1beta1NamespacedDeploymentBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedDeploymentEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}", request = request);
}

public function deleteExtensionsV1beta1NamespacedDeployment(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1NamespacedDeploymentBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1NamespacedDeploymentEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}", request = request);
}

public function patchExtensionsV1beta1NamespacedDeployment(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedDeploymentBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedDeploymentBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedDeploymentEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}", request = request);
}

public function createExtensionsV1beta1NamespacedDeploymentRollback(io.k8s.api.extensions.v1beta1.DeploymentRollback _createExtensionsV1beta1NamespacedDeploymentRollbackBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedDeploymentRollbackEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedDeploymentRollbackBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedDeploymentRollbackEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/rollback", request = request);
}

public function readExtensionsV1beta1NamespacedDeploymentScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedDeploymentScaleEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function replaceExtensionsV1beta1NamespacedDeploymentScale(io.k8s.api.extensions.v1beta1.Scale _replaceExtensionsV1beta1NamespacedDeploymentScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedDeploymentScaleBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedDeploymentScaleEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function patchExtensionsV1beta1NamespacedDeploymentScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedDeploymentScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedDeploymentScaleBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedDeploymentScaleEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/scale", request = request);
}

public function readExtensionsV1beta1NamespacedDeploymentStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedDeploymentStatusEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function replaceExtensionsV1beta1NamespacedDeploymentStatus(io.k8s.api.extensions.v1beta1.Deployment _replaceExtensionsV1beta1NamespacedDeploymentStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedDeploymentStatusBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedDeploymentStatusEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function patchExtensionsV1beta1NamespacedDeploymentStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedDeploymentStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedDeploymentStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedDeploymentStatusBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedDeploymentStatusEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/deployments/{name}/status", request = request);
}

public function listExtensionsV1beta1NamespacedIngress(string namespace) returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NamespacedIngressEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses", request = request);
}

public function createExtensionsV1beta1NamespacedIngress(io.k8s.api.extensions.v1beta1.Ingress _createExtensionsV1beta1NamespacedIngressBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedIngressBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedIngressEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses", request = request);
}

public function deleteExtensionsV1beta1CollectionNamespacedIngress(string namespace) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedIngressEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionNamespacedIngressEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses", request = request);
}

public function readExtensionsV1beta1NamespacedIngress(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedIngressEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}", request = request);
}

public function replaceExtensionsV1beta1NamespacedIngress(io.k8s.api.extensions.v1beta1.Ingress _replaceExtensionsV1beta1NamespacedIngressBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedIngressBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedIngressEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}", request = request);
}

public function deleteExtensionsV1beta1NamespacedIngress(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1NamespacedIngressBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1NamespacedIngressBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1NamespacedIngressEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}", request = request);
}

public function patchExtensionsV1beta1NamespacedIngress(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedIngressBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedIngressBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedIngressEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}", request = request);
}

public function readExtensionsV1beta1NamespacedIngressStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedIngressStatusEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status", request = request);
}

public function replaceExtensionsV1beta1NamespacedIngressStatus(io.k8s.api.extensions.v1beta1.Ingress _replaceExtensionsV1beta1NamespacedIngressStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedIngressStatusBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedIngressStatusEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status", request = request);
}

public function patchExtensionsV1beta1NamespacedIngressStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedIngressStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedIngressStatusBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedIngressStatusEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/ingresses/{name}/status", request = request);
}

public function listExtensionsV1beta1NamespacedNetworkPolicy(string namespace) returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NamespacedNetworkPolicyEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies", request = request);
}

public function createExtensionsV1beta1NamespacedNetworkPolicy(io.k8s.api.extensions.v1beta1.NetworkPolicy _createExtensionsV1beta1NamespacedNetworkPolicyBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedNetworkPolicyEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies", request = request);
}

public function deleteExtensionsV1beta1CollectionNamespacedNetworkPolicy(string namespace) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionNamespacedNetworkPolicyEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies", request = request);
}

public function readExtensionsV1beta1NamespacedNetworkPolicy(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedNetworkPolicyEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function replaceExtensionsV1beta1NamespacedNetworkPolicy(io.k8s.api.extensions.v1beta1.NetworkPolicy _replaceExtensionsV1beta1NamespacedNetworkPolicyBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedNetworkPolicyEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function deleteExtensionsV1beta1NamespacedNetworkPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1NamespacedNetworkPolicyBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1NamespacedNetworkPolicyEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function patchExtensionsV1beta1NamespacedNetworkPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedNetworkPolicyBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedNetworkPolicyEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function listExtensionsV1beta1NamespacedReplicaSet(string namespace) returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NamespacedReplicaSetEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets", request = request);
}

public function createExtensionsV1beta1NamespacedReplicaSet(io.k8s.api.extensions.v1beta1.ReplicaSet _createExtensionsV1beta1NamespacedReplicaSetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1NamespacedReplicaSetEp->post("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets", request = request);
}

public function deleteExtensionsV1beta1CollectionNamespacedReplicaSet(string namespace) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionNamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionNamespacedReplicaSetEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets", request = request);
}

public function readExtensionsV1beta1NamespacedReplicaSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedReplicaSetEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function replaceExtensionsV1beta1NamespacedReplicaSet(io.k8s.api.extensions.v1beta1.ReplicaSet _replaceExtensionsV1beta1NamespacedReplicaSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedReplicaSetEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function deleteExtensionsV1beta1NamespacedReplicaSet(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1NamespacedReplicaSetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1NamespacedReplicaSetEp->delete("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function patchExtensionsV1beta1NamespacedReplicaSet(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedReplicaSetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedReplicaSetBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedReplicaSetEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function readExtensionsV1beta1NamespacedReplicaSetScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedReplicaSetScaleEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function replaceExtensionsV1beta1NamespacedReplicaSetScale(io.k8s.api.extensions.v1beta1.Scale _replaceExtensionsV1beta1NamespacedReplicaSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedReplicaSetScaleBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedReplicaSetScaleEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function patchExtensionsV1beta1NamespacedReplicaSetScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedReplicaSetScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedReplicaSetScaleBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedReplicaSetScaleEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/scale", request = request);
}

public function readExtensionsV1beta1NamespacedReplicaSetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedReplicaSetStatusEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function replaceExtensionsV1beta1NamespacedReplicaSetStatus(io.k8s.api.extensions.v1beta1.ReplicaSet _replaceExtensionsV1beta1NamespacedReplicaSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedReplicaSetStatusBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedReplicaSetStatusEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function patchExtensionsV1beta1NamespacedReplicaSetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedReplicaSetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedReplicaSetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedReplicaSetStatusBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedReplicaSetStatusEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/replicasets/{name}/status", request = request);
}

public function readExtensionsV1beta1NamespacedReplicationControllerDummyScale(string namestring namespace) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->get("/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale", request = request);
}

public function replaceExtensionsV1beta1NamespacedReplicationControllerDummyScale(io.k8s.api.extensions.v1beta1.Scale _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->put("/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale", request = request);
}

public function patchExtensionsV1beta1NamespacedReplicationControllerDummyScale(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1NamespacedReplicationControllerDummyScaleEp->patch("/apis/extensions/v1beta1/namespaces/{namespace}/replicationcontrollers/{name}/scale", request = request);
}

public function listExtensionsV1beta1NetworkPolicyForAllNamespaces() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1NetworkPolicyForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1NetworkPolicyForAllNamespacesEp->get("/apis/extensions/v1beta1/networkpolicies", request = request);
}

public function listExtensionsV1beta1PodSecurityPolicy() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/podsecuritypolicies", request = request);
}

public function createExtensionsV1beta1PodSecurityPolicy(io.k8s.api.extensions.v1beta1.PodSecurityPolicy _createExtensionsV1beta1PodSecurityPolicyBody, ) returns http:Response | error {
endpoint http:Client _createExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createExtensionsV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _createExtensionsV1beta1PodSecurityPolicyEp->post("/apis/extensions/v1beta1/podsecuritypolicies", request = request);
}

public function deleteExtensionsV1beta1CollectionPodSecurityPolicy() returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1CollectionPodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1CollectionPodSecurityPolicyEp->delete("/apis/extensions/v1beta1/podsecuritypolicies", request = request);
}

public function readExtensionsV1beta1PodSecurityPolicy(string name) returns http:Response | error {
endpoint http:Client _readExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function replaceExtensionsV1beta1PodSecurityPolicy(io.k8s.api.extensions.v1beta1.PodSecurityPolicy _replaceExtensionsV1beta1PodSecurityPolicyBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceExtensionsV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _replaceExtensionsV1beta1PodSecurityPolicyEp->put("/apis/extensions/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function deleteExtensionsV1beta1PodSecurityPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteExtensionsV1beta1PodSecurityPolicyBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteExtensionsV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _deleteExtensionsV1beta1PodSecurityPolicyEp->delete("/apis/extensions/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function patchExtensionsV1beta1PodSecurityPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchExtensionsV1beta1PodSecurityPolicyBody, string name, ) returns http:Response | error {
endpoint http:Client _patchExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchExtensionsV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _patchExtensionsV1beta1PodSecurityPolicyEp->patch("/apis/extensions/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function listExtensionsV1beta1ReplicaSetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listExtensionsV1beta1ReplicaSetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listExtensionsV1beta1ReplicaSetForAllNamespacesEp->get("/apis/extensions/v1beta1/replicasets", request = request);
}

public function watchExtensionsV1beta1DaemonSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1DaemonSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1DaemonSetListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/daemonsets", request = request);
}

public function watchExtensionsV1beta1DeploymentListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1DeploymentListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1DeploymentListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/deployments", request = request);
}

public function watchExtensionsV1beta1IngressListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1IngressListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1IngressListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/ingresses", request = request);
}

public function watchExtensionsV1beta1NamespacedDaemonSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedDaemonSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedDaemonSetListEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/daemonsets", request = request);
}

public function watchExtensionsV1beta1NamespacedDaemonSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedDaemonSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedDaemonSetEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/daemonsets/{name}", request = request);
}

public function watchExtensionsV1beta1NamespacedDeploymentList(string namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedDeploymentListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedDeploymentListEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/deployments", request = request);
}

public function watchExtensionsV1beta1NamespacedDeployment(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedDeploymentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedDeploymentEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/deployments/{name}", request = request);
}

public function watchExtensionsV1beta1NamespacedIngressList(string namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedIngressListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedIngressListEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/ingresses", request = request);
}

public function watchExtensionsV1beta1NamespacedIngress(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedIngressEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedIngressEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/ingresses/{name}", request = request);
}

public function watchExtensionsV1beta1NamespacedNetworkPolicyList(string namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedNetworkPolicyListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedNetworkPolicyListEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/networkpolicies", request = request);
}

public function watchExtensionsV1beta1NamespacedNetworkPolicy(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedNetworkPolicyEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function watchExtensionsV1beta1NamespacedReplicaSetList(string namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedReplicaSetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedReplicaSetListEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/replicasets", request = request);
}

public function watchExtensionsV1beta1NamespacedReplicaSet(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NamespacedReplicaSetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NamespacedReplicaSetEp->get("/apis/extensions/v1beta1/watch/namespaces/{namespace}/replicasets/{name}", request = request);
}

public function watchExtensionsV1beta1NetworkPolicyListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1NetworkPolicyListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1NetworkPolicyListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/networkpolicies", request = request);
}

public function watchExtensionsV1beta1PodSecurityPolicyList() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1PodSecurityPolicyListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1PodSecurityPolicyListEp->get("/apis/extensions/v1beta1/watch/podsecuritypolicies", request = request);
}

public function watchExtensionsV1beta1PodSecurityPolicy(string name) returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1PodSecurityPolicyEp->get("/apis/extensions/v1beta1/watch/podsecuritypolicies/{name}", request = request);
}

public function watchExtensionsV1beta1ReplicaSetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchExtensionsV1beta1ReplicaSetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchExtensionsV1beta1ReplicaSetListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/replicasets", request = request);
}

public function getNetworkingAPIGroup() returns http:Response | error {
endpoint http:Client _getNetworkingAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getNetworkingAPIGroupEp->get("/apis/networking.k8s.io/", request = request);
}

public function getNetworkingV1APIResources() returns http:Response | error {
endpoint http:Client _getNetworkingV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getNetworkingV1APIResourcesEp->get("/apis/networking.k8s.io/v1/", request = request);
}

public function listNetworkingV1NamespacedNetworkPolicy(string namespace) returns http:Response | error {
endpoint http:Client _listNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listNetworkingV1NamespacedNetworkPolicyEp->get("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies", request = request);
}

public function createNetworkingV1NamespacedNetworkPolicy(io.k8s.api.networking.v1.NetworkPolicy _createNetworkingV1NamespacedNetworkPolicyBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createNetworkingV1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _createNetworkingV1NamespacedNetworkPolicyEp->post("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies", request = request);
}

public function deleteNetworkingV1CollectionNamespacedNetworkPolicy(string namespace) returns http:Response | error {
endpoint http:Client _deleteNetworkingV1CollectionNamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteNetworkingV1CollectionNamespacedNetworkPolicyEp->delete("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies", request = request);
}

public function readNetworkingV1NamespacedNetworkPolicy(string namestring namespace) returns http:Response | error {
endpoint http:Client _readNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readNetworkingV1NamespacedNetworkPolicyEp->get("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function replaceNetworkingV1NamespacedNetworkPolicy(io.k8s.api.networking.v1.NetworkPolicy _replaceNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceNetworkingV1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _replaceNetworkingV1NamespacedNetworkPolicyEp->put("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function deleteNetworkingV1NamespacedNetworkPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteNetworkingV1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _deleteNetworkingV1NamespacedNetworkPolicyEp->delete("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function patchNetworkingV1NamespacedNetworkPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchNetworkingV1NamespacedNetworkPolicyBody);

// TODO: Update the request as needed
return check _patchNetworkingV1NamespacedNetworkPolicyEp->patch("/apis/networking.k8s.io/v1/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function listNetworkingV1NetworkPolicyForAllNamespaces() returns http:Response | error {
endpoint http:Client _listNetworkingV1NetworkPolicyForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listNetworkingV1NetworkPolicyForAllNamespacesEp->get("/apis/networking.k8s.io/v1/networkpolicies", request = request);
}

public function watchNetworkingV1NamespacedNetworkPolicyList(string namespace) returns http:Response | error {
endpoint http:Client _watchNetworkingV1NamespacedNetworkPolicyListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchNetworkingV1NamespacedNetworkPolicyListEp->get("/apis/networking.k8s.io/v1/watch/namespaces/{namespace}/networkpolicies", request = request);
}

public function watchNetworkingV1NamespacedNetworkPolicy(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchNetworkingV1NamespacedNetworkPolicyEp->get("/apis/networking.k8s.io/v1/watch/namespaces/{namespace}/networkpolicies/{name}", request = request);
}

public function watchNetworkingV1NetworkPolicyListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchNetworkingV1NetworkPolicyListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchNetworkingV1NetworkPolicyListForAllNamespacesEp->get("/apis/networking.k8s.io/v1/watch/networkpolicies", request = request);
}

public function getPolicyAPIGroup() returns http:Response | error {
endpoint http:Client _getPolicyAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getPolicyAPIGroupEp->get("/apis/policy/", request = request);
}

public function getPolicyV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getPolicyV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getPolicyV1beta1APIResourcesEp->get("/apis/policy/v1beta1/", request = request);
}

public function listPolicyV1beta1NamespacedPodDisruptionBudget(string namespace) returns http:Response | error {
endpoint http:Client _listPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listPolicyV1beta1NamespacedPodDisruptionBudgetEp->get("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", request = request);
}

public function createPolicyV1beta1NamespacedPodDisruptionBudget(io.k8s.api.policy.v1beta1.PodDisruptionBudget _createPolicyV1beta1NamespacedPodDisruptionBudgetBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createPolicyV1beta1NamespacedPodDisruptionBudgetBody);

// TODO: Update the request as needed
return check _createPolicyV1beta1NamespacedPodDisruptionBudgetEp->post("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", request = request);
}

public function deletePolicyV1beta1CollectionNamespacedPodDisruptionBudget(string namespace) returns http:Response | error {
endpoint http:Client _deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp->delete("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", request = request);
}

public function readPolicyV1beta1NamespacedPodDisruptionBudget(string namestring namespace) returns http:Response | error {
endpoint http:Client _readPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readPolicyV1beta1NamespacedPodDisruptionBudgetEp->get("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", request = request);
}

public function replacePolicyV1beta1NamespacedPodDisruptionBudget(io.k8s.api.policy.v1beta1.PodDisruptionBudget _replacePolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replacePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replacePolicyV1beta1NamespacedPodDisruptionBudgetBody);

// TODO: Update the request as needed
return check _replacePolicyV1beta1NamespacedPodDisruptionBudgetEp->put("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", request = request);
}

public function deletePolicyV1beta1NamespacedPodDisruptionBudget(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deletePolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deletePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deletePolicyV1beta1NamespacedPodDisruptionBudgetBody);

// TODO: Update the request as needed
return check _deletePolicyV1beta1NamespacedPodDisruptionBudgetEp->delete("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", request = request);
}

public function patchPolicyV1beta1NamespacedPodDisruptionBudget(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchPolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchPolicyV1beta1NamespacedPodDisruptionBudgetBody);

// TODO: Update the request as needed
return check _patchPolicyV1beta1NamespacedPodDisruptionBudgetEp->patch("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", request = request);
}

public function readPolicyV1beta1NamespacedPodDisruptionBudgetStatus(string namestring namespace) returns http:Response | error {
endpoint http:Client _readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->get("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", request = request);
}

public function replacePolicyV1beta1NamespacedPodDisruptionBudgetStatus(io.k8s.api.policy.v1beta1.PodDisruptionBudget _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusBody);

// TODO: Update the request as needed
return check _replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->put("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", request = request);
}

public function patchPolicyV1beta1NamespacedPodDisruptionBudgetStatus(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusBody);

// TODO: Update the request as needed
return check _patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->patch("/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", request = request);
}

public function listPolicyV1beta1PodDisruptionBudgetForAllNamespaces() returns http:Response | error {
endpoint http:Client _listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp->get("/apis/policy/v1beta1/poddisruptionbudgets", request = request);
}

public function listPolicyV1beta1PodSecurityPolicy() returns http:Response | error {
endpoint http:Client _listPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/podsecuritypolicies", request = request);
}

public function createPolicyV1beta1PodSecurityPolicy(io.k8s.api.policy.v1beta1.PodSecurityPolicy _createPolicyV1beta1PodSecurityPolicyBody, ) returns http:Response | error {
endpoint http:Client _createPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createPolicyV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _createPolicyV1beta1PodSecurityPolicyEp->post("/apis/policy/v1beta1/podsecuritypolicies", request = request);
}

public function deletePolicyV1beta1CollectionPodSecurityPolicy() returns http:Response | error {
endpoint http:Client _deletePolicyV1beta1CollectionPodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deletePolicyV1beta1CollectionPodSecurityPolicyEp->delete("/apis/policy/v1beta1/podsecuritypolicies", request = request);
}

public function readPolicyV1beta1PodSecurityPolicy(string name) returns http:Response | error {
endpoint http:Client _readPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function replacePolicyV1beta1PodSecurityPolicy(io.k8s.api.policy.v1beta1.PodSecurityPolicy _replacePolicyV1beta1PodSecurityPolicyBody, string name, ) returns http:Response | error {
endpoint http:Client _replacePolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replacePolicyV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _replacePolicyV1beta1PodSecurityPolicyEp->put("/apis/policy/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function deletePolicyV1beta1PodSecurityPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deletePolicyV1beta1PodSecurityPolicyBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deletePolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deletePolicyV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _deletePolicyV1beta1PodSecurityPolicyEp->delete("/apis/policy/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function patchPolicyV1beta1PodSecurityPolicy(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchPolicyV1beta1PodSecurityPolicyBody, string name, ) returns http:Response | error {
endpoint http:Client _patchPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchPolicyV1beta1PodSecurityPolicyBody);

// TODO: Update the request as needed
return check _patchPolicyV1beta1PodSecurityPolicyEp->patch("/apis/policy/v1beta1/podsecuritypolicies/{name}", request = request);
}

public function watchPolicyV1beta1NamespacedPodDisruptionBudgetList(string namespace) returns http:Response | error {
endpoint http:Client _watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp->get("/apis/policy/v1beta1/watch/namespaces/{namespace}/poddisruptionbudgets", request = request);
}

public function watchPolicyV1beta1NamespacedPodDisruptionBudget(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchPolicyV1beta1NamespacedPodDisruptionBudgetEp->get("/apis/policy/v1beta1/watch/namespaces/{namespace}/poddisruptionbudgets/{name}", request = request);
}

public function watchPolicyV1beta1PodDisruptionBudgetListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp->get("/apis/policy/v1beta1/watch/poddisruptionbudgets", request = request);
}

public function watchPolicyV1beta1PodSecurityPolicyList() returns http:Response | error {
endpoint http:Client _watchPolicyV1beta1PodSecurityPolicyListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchPolicyV1beta1PodSecurityPolicyListEp->get("/apis/policy/v1beta1/watch/podsecuritypolicies", request = request);
}

public function watchPolicyV1beta1PodSecurityPolicy(string name) returns http:Response | error {
endpoint http:Client _watchPolicyV1beta1PodSecurityPolicyEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/watch/podsecuritypolicies/{name}", request = request);
}

public function getRbacAuthorizationAPIGroup() returns http:Response | error {
endpoint http:Client _getRbacAuthorizationAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getRbacAuthorizationAPIGroupEp->get("/apis/rbac.authorization.k8s.io/", request = request);
}

public function getRbacAuthorizationV1APIResources() returns http:Response | error {
endpoint http:Client _getRbacAuthorizationV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getRbacAuthorizationV1APIResourcesEp->get("/apis/rbac.authorization.k8s.io/v1/", request = request);
}

public function listRbacAuthorizationV1ClusterRoleBinding() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", request = request);
}

public function createRbacAuthorizationV1ClusterRoleBinding(io.k8s.api.rbac.v1.ClusterRoleBinding _createRbacAuthorizationV1ClusterRoleBindingBody, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1ClusterRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", request = request);
}

public function deleteRbacAuthorizationV1CollectionClusterRoleBinding() returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1CollectionClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1CollectionClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", request = request);
}

public function readRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}", request = request);
}

public function replaceRbacAuthorizationV1ClusterRoleBinding(io.k8s.api.rbac.v1.ClusterRoleBinding _replaceRbacAuthorizationV1ClusterRoleBindingBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1ClusterRoleBindingEp->put("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}", request = request);
}

public function deleteRbacAuthorizationV1ClusterRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1ClusterRoleBindingBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1ClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}", request = request);
}

public function patchRbacAuthorizationV1ClusterRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1ClusterRoleBindingBody, string name, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1ClusterRoleBindingEp->patch("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}", request = request);
}

public function listRbacAuthorizationV1ClusterRole() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1/clusterroles", request = request);
}

public function createRbacAuthorizationV1ClusterRole(io.k8s.api.rbac.v1.ClusterRole _createRbacAuthorizationV1ClusterRoleBody, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1ClusterRoleBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1ClusterRoleEp->post("/apis/rbac.authorization.k8s.io/v1/clusterroles", request = request);
}

public function deleteRbacAuthorizationV1CollectionClusterRole() returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1CollectionClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1CollectionClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterroles", request = request);
}

public function readRbacAuthorizationV1ClusterRole(string name) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}", request = request);
}

public function replaceRbacAuthorizationV1ClusterRole(io.k8s.api.rbac.v1.ClusterRole _replaceRbacAuthorizationV1ClusterRoleBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1ClusterRoleBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1ClusterRoleEp->put("/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}", request = request);
}

public function deleteRbacAuthorizationV1ClusterRole(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1ClusterRoleBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1ClusterRoleBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1ClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}", request = request);
}

public function patchRbacAuthorizationV1ClusterRole(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1ClusterRoleBody, string name, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1ClusterRoleBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1ClusterRoleEp->patch("/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}", request = request);
}

public function listRbacAuthorizationV1NamespacedRoleBinding(string namespace) returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings", request = request);
}

public function createRbacAuthorizationV1NamespacedRoleBinding(io.k8s.api.rbac.v1.RoleBinding _createRbacAuthorizationV1NamespacedRoleBindingBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1NamespacedRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings", request = request);
}

public function deleteRbacAuthorizationV1CollectionNamespacedRoleBinding(string namespace) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings", request = request);
}

public function readRbacAuthorizationV1NamespacedRoleBinding(string namestring namespace) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function replaceRbacAuthorizationV1NamespacedRoleBinding(io.k8s.api.rbac.v1.RoleBinding _replaceRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1NamespacedRoleBindingEp->put("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function deleteRbacAuthorizationV1NamespacedRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1NamespacedRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function patchRbacAuthorizationV1NamespacedRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1NamespacedRoleBindingEp->patch("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function listRbacAuthorizationV1NamespacedRole(string namespace) returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", request = request);
}

public function createRbacAuthorizationV1NamespacedRole(io.k8s.api.rbac.v1.Role _createRbacAuthorizationV1NamespacedRoleBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1NamespacedRoleBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1NamespacedRoleEp->post("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", request = request);
}

public function deleteRbacAuthorizationV1CollectionNamespacedRole(string namespace) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1CollectionNamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1CollectionNamespacedRoleEp->delete("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", request = request);
}

public function readRbacAuthorizationV1NamespacedRole(string namestring namespace) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", request = request);
}

public function replaceRbacAuthorizationV1NamespacedRole(io.k8s.api.rbac.v1.Role _replaceRbacAuthorizationV1NamespacedRoleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1NamespacedRoleBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1NamespacedRoleEp->put("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", request = request);
}

public function deleteRbacAuthorizationV1NamespacedRole(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1NamespacedRoleBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1NamespacedRoleBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1NamespacedRoleEp->delete("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", request = request);
}

public function patchRbacAuthorizationV1NamespacedRole(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1NamespacedRoleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1NamespacedRoleBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1NamespacedRoleEp->patch("/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", request = request);
}

public function listRbacAuthorizationV1RoleBindingForAllNamespaces() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1RoleBindingForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1RoleBindingForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/rolebindings", request = request);
}

public function listRbacAuthorizationV1RoleForAllNamespaces() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1RoleForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1RoleForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/roles", request = request);
}

public function watchRbacAuthorizationV1ClusterRoleBindingList() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1ClusterRoleBindingListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1ClusterRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings", request = request);
}

public function watchRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings/{name}", request = request);
}

public function watchRbacAuthorizationV1ClusterRoleList() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1ClusterRoleListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1ClusterRoleListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterroles", request = request);
}

public function watchRbacAuthorizationV1ClusterRole(string name) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterroles/{name}", request = request);
}

public function watchRbacAuthorizationV1NamespacedRoleBindingList(string namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleBindingListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1NamespacedRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/rolebindings", request = request);
}

public function watchRbacAuthorizationV1NamespacedRoleBinding(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function watchRbacAuthorizationV1NamespacedRoleList(string namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1NamespacedRoleListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/roles", request = request);
}

public function watchRbacAuthorizationV1NamespacedRole(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/roles/{name}", request = request);
}

public function watchRbacAuthorizationV1RoleBindingListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/watch/rolebindings", request = request);
}

public function watchRbacAuthorizationV1RoleListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1RoleListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1RoleListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/watch/roles", request = request);
}

public function getRbacAuthorizationV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getRbacAuthorizationV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getRbacAuthorizationV1beta1APIResourcesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/", request = request);
}

public function listRbacAuthorizationV1beta1ClusterRoleBinding() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", request = request);
}

public function createRbacAuthorizationV1beta1ClusterRoleBinding(io.k8s.api.rbac.v1beta1.ClusterRoleBinding _createRbacAuthorizationV1beta1ClusterRoleBindingBody, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1beta1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1beta1ClusterRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", request = request);
}

public function deleteRbacAuthorizationV1beta1CollectionClusterRoleBinding() returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", request = request);
}

public function readRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1beta1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/{name}", request = request);
}

public function replaceRbacAuthorizationV1beta1ClusterRoleBinding(io.k8s.api.rbac.v1beta1.ClusterRoleBinding _replaceRbacAuthorizationV1beta1ClusterRoleBindingBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1beta1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1beta1ClusterRoleBindingEp->put("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/{name}", request = request);
}

public function deleteRbacAuthorizationV1beta1ClusterRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1beta1ClusterRoleBindingBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1beta1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1ClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/{name}", request = request);
}

public function patchRbacAuthorizationV1beta1ClusterRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1beta1ClusterRoleBindingBody, string name, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1beta1ClusterRoleBindingBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1beta1ClusterRoleBindingEp->patch("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/{name}", request = request);
}

public function listRbacAuthorizationV1beta1ClusterRole() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", request = request);
}

public function createRbacAuthorizationV1beta1ClusterRole(io.k8s.api.rbac.v1beta1.ClusterRole _createRbacAuthorizationV1beta1ClusterRoleBody, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1beta1ClusterRoleBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1beta1ClusterRoleEp->post("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", request = request);
}

public function deleteRbacAuthorizationV1beta1CollectionClusterRole() returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1CollectionClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", request = request);
}

public function readRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1beta1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/{name}", request = request);
}

public function replaceRbacAuthorizationV1beta1ClusterRole(io.k8s.api.rbac.v1beta1.ClusterRole _replaceRbacAuthorizationV1beta1ClusterRoleBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1beta1ClusterRoleBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1beta1ClusterRoleEp->put("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/{name}", request = request);
}

public function deleteRbacAuthorizationV1beta1ClusterRole(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1beta1ClusterRoleBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1beta1ClusterRoleBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1ClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/{name}", request = request);
}

public function patchRbacAuthorizationV1beta1ClusterRole(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1beta1ClusterRoleBody, string name, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1beta1ClusterRoleBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1beta1ClusterRoleEp->patch("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/{name}", request = request);
}

public function listRbacAuthorizationV1beta1NamespacedRoleBinding(string namespace) returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings", request = request);
}

public function createRbacAuthorizationV1beta1NamespacedRoleBinding(io.k8s.api.rbac.v1beta1.RoleBinding _createRbacAuthorizationV1beta1NamespacedRoleBindingBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1beta1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1beta1NamespacedRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings", request = request);
}

public function deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBinding(string namespace) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings", request = request);
}

public function readRbacAuthorizationV1beta1NamespacedRoleBinding(string namestring namespace) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1beta1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function replaceRbacAuthorizationV1beta1NamespacedRoleBinding(io.k8s.api.rbac.v1beta1.RoleBinding _replaceRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1beta1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp->put("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function deleteRbacAuthorizationV1beta1NamespacedRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1beta1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function patchRbacAuthorizationV1beta1NamespacedRoleBinding(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1beta1NamespacedRoleBindingBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1beta1NamespacedRoleBindingEp->patch("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function listRbacAuthorizationV1beta1NamespacedRole(string namespace) returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles", request = request);
}

public function createRbacAuthorizationV1beta1NamespacedRole(io.k8s.api.rbac.v1beta1.Role _createRbacAuthorizationV1beta1NamespacedRoleBody, string namespace, ) returns http:Response | error {
endpoint http:Client _createRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createRbacAuthorizationV1beta1NamespacedRoleBody);

// TODO: Update the request as needed
return check _createRbacAuthorizationV1beta1NamespacedRoleEp->post("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles", request = request);
}

public function deleteRbacAuthorizationV1beta1CollectionNamespacedRole(string namespace) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles", request = request);
}

public function readRbacAuthorizationV1beta1NamespacedRole(string namestring namespace) returns http:Response | error {
endpoint http:Client _readRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readRbacAuthorizationV1beta1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles/{name}", request = request);
}

public function replaceRbacAuthorizationV1beta1NamespacedRole(io.k8s.api.rbac.v1beta1.Role _replaceRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _replaceRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceRbacAuthorizationV1beta1NamespacedRoleBody);

// TODO: Update the request as needed
return check _replaceRbacAuthorizationV1beta1NamespacedRoleEp->put("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles/{name}", request = request);
}

public function deleteRbacAuthorizationV1beta1NamespacedRole(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace, , , , ) returns http:Response | error {
endpoint http:Client _deleteRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteRbacAuthorizationV1beta1NamespacedRoleBody);

// TODO: Update the request as needed
return check _deleteRbacAuthorizationV1beta1NamespacedRoleEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles/{name}", request = request);
}

public function patchRbacAuthorizationV1beta1NamespacedRole(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace, ) returns http:Response | error {
endpoint http:Client _patchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchRbacAuthorizationV1beta1NamespacedRoleBody);

// TODO: Update the request as needed
return check _patchRbacAuthorizationV1beta1NamespacedRoleEp->patch("/apis/rbac.authorization.k8s.io/v1beta1/namespaces/{namespace}/roles/{name}", request = request);
}

public function listRbacAuthorizationV1beta1RoleBindingForAllNamespaces() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/rolebindings", request = request);
}

public function listRbacAuthorizationV1beta1RoleForAllNamespaces() returns http:Response | error {
endpoint http:Client _listRbacAuthorizationV1beta1RoleForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listRbacAuthorizationV1beta1RoleForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/roles", request = request);
}

public function watchRbacAuthorizationV1beta1ClusterRoleBindingList() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleBindingListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1ClusterRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterrolebindings", request = request);
}

public function watchRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterrolebindings/{name}", request = request);
}

public function watchRbacAuthorizationV1beta1ClusterRoleList() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1ClusterRoleListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterroles", request = request);
}

public function watchRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterroles/{name}", request = request);
}

public function watchRbacAuthorizationV1beta1NamespacedRoleBindingList(string namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/{namespace}/rolebindings", request = request);
}

public function watchRbacAuthorizationV1beta1NamespacedRoleBinding(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1NamespacedRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/{namespace}/rolebindings/{name}", request = request);
}

public function watchRbacAuthorizationV1beta1NamespacedRoleList(string namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1NamespacedRoleListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/{namespace}/roles", request = request);
}

public function watchRbacAuthorizationV1beta1NamespacedRole(string namestring namespace) returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1NamespacedRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/{namespace}/roles/{name}", request = request);
}

public function watchRbacAuthorizationV1beta1RoleBindingListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/rolebindings", request = request);
}

public function watchRbacAuthorizationV1beta1RoleListForAllNamespaces() returns http:Response | error {
endpoint http:Client _watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/roles", request = request);
}

public function getStorageAPIGroup() returns http:Response | error {
endpoint http:Client _getStorageAPIGroupEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getStorageAPIGroupEp->get("/apis/storage.k8s.io/", request = request);
}

public function getStorageV1APIResources() returns http:Response | error {
endpoint http:Client _getStorageV1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getStorageV1APIResourcesEp->get("/apis/storage.k8s.io/v1/", request = request);
}

public function listStorageV1StorageClass() returns http:Response | error {
endpoint http:Client _listStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listStorageV1StorageClassEp->get("/apis/storage.k8s.io/v1/storageclasses", request = request);
}

public function createStorageV1StorageClass(io.k8s.api.storage.v1.StorageClass _createStorageV1StorageClassBody, ) returns http:Response | error {
endpoint http:Client _createStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createStorageV1StorageClassBody);

// TODO: Update the request as needed
return check _createStorageV1StorageClassEp->post("/apis/storage.k8s.io/v1/storageclasses", request = request);
}

public function deleteStorageV1CollectionStorageClass() returns http:Response | error {
endpoint http:Client _deleteStorageV1CollectionStorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteStorageV1CollectionStorageClassEp->delete("/apis/storage.k8s.io/v1/storageclasses", request = request);
}

public function readStorageV1StorageClass(string name) returns http:Response | error {
endpoint http:Client _readStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readStorageV1StorageClassEp->get("/apis/storage.k8s.io/v1/storageclasses/{name}", request = request);
}

public function replaceStorageV1StorageClass(io.k8s.api.storage.v1.StorageClass _replaceStorageV1StorageClassBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceStorageV1StorageClassBody);

// TODO: Update the request as needed
return check _replaceStorageV1StorageClassEp->put("/apis/storage.k8s.io/v1/storageclasses/{name}", request = request);
}

public function deleteStorageV1StorageClass(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteStorageV1StorageClassBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteStorageV1StorageClassBody);

// TODO: Update the request as needed
return check _deleteStorageV1StorageClassEp->delete("/apis/storage.k8s.io/v1/storageclasses/{name}", request = request);
}

public function patchStorageV1StorageClass(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchStorageV1StorageClassBody, string name, ) returns http:Response | error {
endpoint http:Client _patchStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchStorageV1StorageClassBody);

// TODO: Update the request as needed
return check _patchStorageV1StorageClassEp->patch("/apis/storage.k8s.io/v1/storageclasses/{name}", request = request);
}

public function watchStorageV1StorageClassList() returns http:Response | error {
endpoint http:Client _watchStorageV1StorageClassListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1StorageClassListEp->get("/apis/storage.k8s.io/v1/watch/storageclasses", request = request);
}

public function watchStorageV1StorageClass(string name) returns http:Response | error {
endpoint http:Client _watchStorageV1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1StorageClassEp->get("/apis/storage.k8s.io/v1/watch/storageclasses/{name}", request = request);
}

public function getStorageV1beta1APIResources() returns http:Response | error {
endpoint http:Client _getStorageV1beta1APIResourcesEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getStorageV1beta1APIResourcesEp->get("/apis/storage.k8s.io/v1beta1/", request = request);
}

public function listStorageV1beta1StorageClass() returns http:Response | error {
endpoint http:Client _listStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listStorageV1beta1StorageClassEp->get("/apis/storage.k8s.io/v1beta1/storageclasses", request = request);
}

public function createStorageV1beta1StorageClass(io.k8s.api.storage.v1beta1.StorageClass _createStorageV1beta1StorageClassBody, ) returns http:Response | error {
endpoint http:Client _createStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createStorageV1beta1StorageClassBody);

// TODO: Update the request as needed
return check _createStorageV1beta1StorageClassEp->post("/apis/storage.k8s.io/v1beta1/storageclasses", request = request);
}

public function deleteStorageV1beta1CollectionStorageClass() returns http:Response | error {
endpoint http:Client _deleteStorageV1beta1CollectionStorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteStorageV1beta1CollectionStorageClassEp->delete("/apis/storage.k8s.io/v1beta1/storageclasses", request = request);
}

public function readStorageV1beta1StorageClass(string name) returns http:Response | error {
endpoint http:Client _readStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readStorageV1beta1StorageClassEp->get("/apis/storage.k8s.io/v1beta1/storageclasses/{name}", request = request);
}

public function replaceStorageV1beta1StorageClass(io.k8s.api.storage.v1beta1.StorageClass _replaceStorageV1beta1StorageClassBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceStorageV1beta1StorageClassBody);

// TODO: Update the request as needed
return check _replaceStorageV1beta1StorageClassEp->put("/apis/storage.k8s.io/v1beta1/storageclasses/{name}", request = request);
}

public function deleteStorageV1beta1StorageClass(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteStorageV1beta1StorageClassBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteStorageV1beta1StorageClassBody);

// TODO: Update the request as needed
return check _deleteStorageV1beta1StorageClassEp->delete("/apis/storage.k8s.io/v1beta1/storageclasses/{name}", request = request);
}

public function patchStorageV1beta1StorageClass(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchStorageV1beta1StorageClassBody, string name, ) returns http:Response | error {
endpoint http:Client _patchStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchStorageV1beta1StorageClassBody);

// TODO: Update the request as needed
return check _patchStorageV1beta1StorageClassEp->patch("/apis/storage.k8s.io/v1beta1/storageclasses/{name}", request = request);
}

public function listStorageV1beta1VolumeAttachment() returns http:Response | error {
endpoint http:Client _listStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _listStorageV1beta1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1beta1/volumeattachments", request = request);
}

public function createStorageV1beta1VolumeAttachment(io.k8s.api.storage.v1beta1.VolumeAttachment _createStorageV1beta1VolumeAttachmentBody, ) returns http:Response | error {
endpoint http:Client _createStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_createStorageV1beta1VolumeAttachmentBody);

// TODO: Update the request as needed
return check _createStorageV1beta1VolumeAttachmentEp->post("/apis/storage.k8s.io/v1beta1/volumeattachments", request = request);
}

public function deleteStorageV1beta1CollectionVolumeAttachment() returns http:Response | error {
endpoint http:Client _deleteStorageV1beta1CollectionVolumeAttachmentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _deleteStorageV1beta1CollectionVolumeAttachmentEp->delete("/apis/storage.k8s.io/v1beta1/volumeattachments", request = request);
}

public function readStorageV1beta1VolumeAttachment(string name) returns http:Response | error {
endpoint http:Client _readStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _readStorageV1beta1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1beta1/volumeattachments/{name}", request = request);
}

public function replaceStorageV1beta1VolumeAttachment(io.k8s.api.storage.v1beta1.VolumeAttachment _replaceStorageV1beta1VolumeAttachmentBody, string name, ) returns http:Response | error {
endpoint http:Client _replaceStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_replaceStorageV1beta1VolumeAttachmentBody);

// TODO: Update the request as needed
return check _replaceStorageV1beta1VolumeAttachmentEp->put("/apis/storage.k8s.io/v1beta1/volumeattachments/{name}", request = request);
}

public function deleteStorageV1beta1VolumeAttachment(io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions _deleteStorageV1beta1VolumeAttachmentBody, string name, , , , ) returns http:Response | error {
endpoint http:Client _deleteStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_deleteStorageV1beta1VolumeAttachmentBody);

// TODO: Update the request as needed
return check _deleteStorageV1beta1VolumeAttachmentEp->delete("/apis/storage.k8s.io/v1beta1/volumeattachments/{name}", request = request);
}

public function patchStorageV1beta1VolumeAttachment(io.k8s.apimachinery.pkg.apis.meta.v1.Patch _patchStorageV1beta1VolumeAttachmentBody, string name, ) returns http:Response | error {
endpoint http:Client _patchStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;
request.setPayload(_patchStorageV1beta1VolumeAttachmentBody);

// TODO: Update the request as needed
return check _patchStorageV1beta1VolumeAttachmentEp->patch("/apis/storage.k8s.io/v1beta1/volumeattachments/{name}", request = request);
}

public function watchStorageV1beta1StorageClassList() returns http:Response | error {
endpoint http:Client _watchStorageV1beta1StorageClassListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1beta1StorageClassListEp->get("/apis/storage.k8s.io/v1beta1/watch/storageclasses", request = request);
}

public function watchStorageV1beta1StorageClass(string name) returns http:Response | error {
endpoint http:Client _watchStorageV1beta1StorageClassEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1beta1StorageClassEp->get("/apis/storage.k8s.io/v1beta1/watch/storageclasses/{name}", request = request);
}

public function watchStorageV1beta1VolumeAttachmentList() returns http:Response | error {
endpoint http:Client _watchStorageV1beta1VolumeAttachmentListEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1beta1VolumeAttachmentListEp->get("/apis/storage.k8s.io/v1beta1/watch/volumeattachments", request = request);
}

public function watchStorageV1beta1VolumeAttachment(string name) returns http:Response | error {
endpoint http:Client _watchStorageV1beta1VolumeAttachmentEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _watchStorageV1beta1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1beta1/watch/volumeattachments/{name}", request = request);
}

public function logFileListHandler() returns http:Response | error {
endpoint http:Client _logFileListHandlerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _logFileListHandlerEp->get("/logs/", request = request);
}

public function logFileHandler(string logpath) returns http:Response | error {
endpoint http:Client _logFileHandlerEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _logFileHandlerEp->get("/logs/{logpath}", request = request);
}

public function getCodeVersion() returns http:Response | error {
endpoint http:Client _getCodeVersionEp = self.clientEp.client;
http:Request request = new;

// TODO: Update the request as needed
return check _getCodeVersionEp->get("/version/", request = request);
}

};
