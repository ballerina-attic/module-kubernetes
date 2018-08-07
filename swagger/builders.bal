public type QuantityBuilderApiResource object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_api_resource_Quantity io_k8s_apimachinery_pkg_api_resource_quantity;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_api_resource_quantity = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_api_resource_Quantity) {
        return self.io_k8s_apimachinery_pkg_api_resource_quantity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setValue(any _value) returns (QuantityBuilderApiResource) {
        self.io_k8s_apimachinery_pkg_api_resource_quantity.value = _value;
        return self;
    }
};

public type ResourceMetricSourceBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ResourceMetricSource io_k8s_api_autoscaling_v2beta1_resourcemetricsource;
    public QuantityBuilderApiResource? targetAverageValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_resourcemetricsource = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ResourceMetricSource) {
        return self.io_k8s_api_autoscaling_v2beta1_resourcemetricsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withTargetAverageValue() returns QuantityBuilderApiResource {
        self.targetAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.targetAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setName(string _name) returns (ResourceMetricSourceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_resourcemetricsource.name = _name;
        return self;
    }

    public function setTargetAverageUtilization(int _targetAverageUtilization) returns (
                ResourceMetricSourceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_resourcemetricsource.targetAverageUtilization = _targetAverageUtilization;
        return self;
    }
};

public type CSIPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_CSIPersistentVolumeSource io_k8s_api_core_v1_csipersistentvolumesource;
    public SecretReferenceBuilderCoreV1? controllerPublishSecretRefBuilder;

    public SecretReferenceBuilderCoreV1? nodePublishSecretRefBuilder;

    public SecretReferenceBuilderCoreV1? nodeStageSecretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_csipersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_CSIPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_csipersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withControllerPublishSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.controllerPublishSecretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.controllerPublishSecretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNodePublishSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.nodePublishSecretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.nodePublishSecretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNodeStageSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.nodeStageSecretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.nodeStageSecretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setDriver(string _driver) returns (CSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_csipersistentvolumesource.driver = _driver;
        return self;
    }

    public function setFsType(string _fsType) returns (CSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_csipersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (CSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_csipersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeAttributes(any _volumeAttributes) returns (CSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_csipersistentvolumesource.volumeAttributes = _volumeAttributes;
        return self;
    }

    public function setVolumeHandle(string _volumeHandle) returns (CSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_csipersistentvolumesource.volumeHandle = _volumeHandle;
        return self;
    }
};

public type APIServiceBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservice;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public APIServiceSpecBuilderApiregistrationV1beta1? specBuilder;

    public APIServiceStatusBuilderApiregistrationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservice = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservice;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns APIServiceSpecBuilderApiregistrationV1beta1 {
        self.specBuilder = new APIServiceSpecBuilderApiregistrationV1beta1(self);
        match (self.specBuilder) {
            APIServiceSpecBuilderApiregistrationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns APIServiceStatusBuilderApiregistrationV1beta1 {
        self.statusBuilder = new APIServiceStatusBuilderApiregistrationV1beta1(self);
        match (self.statusBuilder) {
            APIServiceStatusBuilderApiregistrationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (APIServiceBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservice.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIServiceBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservice.kind = _kind;
        return self;
    }
};

public type PersistentVolumeClaimConditionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaimCondition io_k8s_api_core_v1_persistentvolumeclaimcondition;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaimcondition = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaimCondition) {
        return self.io_k8s_api_core_v1_persistentvolumeclaimcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastProbeTime(time:Time? _lastProbeTime) returns (PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition.lastProbeTime = _lastProbeTime;
        return self;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (PersistentVolumeClaimConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimcondition._type = __type;
        return self;
    }
};

public type CustomResourceSubresourcesBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresources
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresources;
    public CustomResourceSubresourceScaleBuilderApiextensionsV1beta1? scaleBuilder;

    public CustomResourceSubresourceStatusBuilderApiextensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresources = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresources) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresources;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withScale() returns CustomResourceSubresourceScaleBuilderApiextensionsV1beta1 {
        self.scaleBuilder = new CustomResourceSubresourceScaleBuilderApiextensionsV1beta1(self);
        match (self.scaleBuilder) {
            CustomResourceSubresourceScaleBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns CustomResourceSubresourceStatusBuilderApiextensionsV1beta1 {
        self.statusBuilder = new CustomResourceSubresourceStatusBuilderApiextensionsV1beta1(self);
        match (self.statusBuilder) {
            CustomResourceSubresourceStatusBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type PodSecurityPolicyListBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodSecurityPolicyList io_k8s_api_policy_v1beta1_podsecuritypolicylist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_podsecuritypolicylist = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodSecurityPolicyList) {
        return self.io_k8s_api_policy_v1beta1_podsecuritypolicylist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodSecurityPolicyListBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicylist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodSecurityPolicyListBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicylist.kind = _kind;
        return self;
    }
};

public type LocalSubjectAccessReviewBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_LocalSubjectAccessReview
    io_k8s_api_authorization_v1beta1_localsubjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SubjectAccessReviewSpecBuilderAuthorizationV1beta1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_localsubjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_LocalSubjectAccessReview) {
        return self.io_k8s_api_authorization_v1beta1_localsubjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SubjectAccessReviewSpecBuilderAuthorizationV1beta1 {
        self.specBuilder = new SubjectAccessReviewSpecBuilderAuthorizationV1beta1(self);
        match (self.specBuilder) {
            SubjectAccessReviewSpecBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1beta1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1beta1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (LocalSubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_localsubjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (LocalSubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_localsubjectaccessreview.kind = _kind;
        return self;
    }
};

public type VolumeAttachmentBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeAttachment io_k8s_api_storage_v1beta1_volumeattachment;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public VolumeAttachmentSpecBuilderStorageV1beta1? specBuilder;

    public VolumeAttachmentStatusBuilderStorageV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeattachment = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeAttachment) {
        return self.io_k8s_api_storage_v1beta1_volumeattachment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns VolumeAttachmentSpecBuilderStorageV1beta1 {
        self.specBuilder = new VolumeAttachmentSpecBuilderStorageV1beta1(self);
        match (self.specBuilder) {
            VolumeAttachmentSpecBuilderStorageV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns VolumeAttachmentStatusBuilderStorageV1beta1 {
        self.statusBuilder = new VolumeAttachmentStatusBuilderStorageV1beta1(self);
        match (self.statusBuilder) {
            VolumeAttachmentStatusBuilderStorageV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (VolumeAttachmentBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachment.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (VolumeAttachmentBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachment.kind = _kind;
        return self;
    }
};

public type RBDPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_RBDPersistentVolumeSource io_k8s_api_core_v1_rbdpersistentvolumesource;
    public SecretReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_rbdpersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_RBDPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_rbdpersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.secretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setImage(string _image) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.image = _image;
        return self;
    }

    public function setKeyring(string _keyring) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.keyring = _keyring;
        return self;
    }

    public function setMonitors(string[] _monitors) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.monitors = _monitors;
        return self;
    }
    public function addMonitor(string _value) returns RBDPersistentVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.monitors[lengthof self.
        io_k8s_api_core_v1_rbdpersistentvolumesource.monitors] = _value;
        return self;
    }

    public function setPool(string _pool) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.pool = _pool;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setUser(string _user) returns (RBDPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdpersistentvolumesource.user = _user;
        return self;
    }
};

public type ControllerRevisionListBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ControllerRevisionList io_k8s_api_apps_v1_controllerrevisionlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_controllerrevisionlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ControllerRevisionList) {
        return self.io_k8s_api_apps_v1_controllerrevisionlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_controllerrevisionlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_controllerrevisionlist.kind = _kind;
        return self;
    }
};

public type DeploymentBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_Deployment io_k8s_api_apps_v1beta2_deployment;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DeploymentSpecBuilderAppsV1beta2? specBuilder;

    public DeploymentStatusBuilderAppsV1beta2? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_Deployment) {
        return self.io_k8s_api_apps_v1beta2_deployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DeploymentSpecBuilderAppsV1beta2 {
        self.specBuilder = new DeploymentSpecBuilderAppsV1beta2(self);
        match (self.specBuilder) {
            DeploymentSpecBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DeploymentStatusBuilderAppsV1beta2 {
        self.statusBuilder = new DeploymentStatusBuilderAppsV1beta2(self);
        match (self.statusBuilder) {
            DeploymentStatusBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deployment.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deployment.kind = _kind;
        return self;
    }
};

public type APIServiceStatusBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceStatus
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicestatus;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicestatus = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceStatus) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type ExternalMetricStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ExternalMetricStatus io_k8s_api_autoscaling_v2beta1_externalmetricstatus;
    public QuantityBuilderApiResource? currentAverageValueBuilder;

    public QuantityBuilderApiResource? currentValueBuilder;

    public LabelSelectorBuilderMetaV1? metricSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_externalmetricstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ExternalMetricStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_externalmetricstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withCurrentAverageValue() returns QuantityBuilderApiResource {
        self.currentAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.currentAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCurrentValue() returns QuantityBuilderApiResource {
        self.currentValueBuilder = new QuantityBuilderApiResource(self);
        match (self.currentValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetricSelector() returns LabelSelectorBuilderMetaV1 {
        self.metricSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.metricSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (ExternalMetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_externalmetricstatus.metricName = _metricName;
        return self;
    }
};

public type ScaleSpecBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ScaleSpec io_k8s_api_apps_v1beta2_scalespec;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_scalespec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ScaleSpec) {
        return self.io_k8s_api_apps_v1beta2_scalespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scalespec.replicas = _replicas;
        return self;
    }
};

public type ExternalMetricSourceBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ExternalMetricSource io_k8s_api_autoscaling_v2beta1_externalmetricsource;
    public LabelSelectorBuilderMetaV1? metricSelectorBuilder;

    public QuantityBuilderApiResource? targetAverageValueBuilder;

    public QuantityBuilderApiResource? targetValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_externalmetricsource = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ExternalMetricSource) {
        return self.io_k8s_api_autoscaling_v2beta1_externalmetricsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetricSelector() returns LabelSelectorBuilderMetaV1 {
        self.metricSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.metricSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTargetAverageValue() returns QuantityBuilderApiResource {
        self.targetAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.targetAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTargetValue() returns QuantityBuilderApiResource {
        self.targetValueBuilder = new QuantityBuilderApiResource(self);
        match (self.targetValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (ExternalMetricSourceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_externalmetricsource.metricName = _metricName;
        return self;
    }
};

public type DeploymentListBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DeploymentList io_k8s_api_apps_v1_deploymentlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deploymentlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DeploymentList) {
        return self.io_k8s_api_apps_v1_deploymentlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentlist.kind = _kind;
        return self;
    }
};

public type ReplicaSetStatusBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ReplicaSetStatus io_k8s_api_apps_v1beta2_replicasetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_replicasetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ReplicaSetStatus) {
        return self.io_k8s_api_apps_v1beta2_replicasetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (ReplicaSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setFullyLabeledReplicas(int _fullyLabeledReplicas) returns (ReplicaSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetstatus.fullyLabeledReplicas = _fullyLabeledReplicas;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (ReplicaSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (ReplicaSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetstatus.replicas = _replicas;
        return self;
    }
};

public type ObjectMetricSourceBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ObjectMetricSource io_k8s_api_autoscaling_v2beta1_objectmetricsource;
    public CrossVersionObjectReferenceBuilderAutoscalingV2beta1? targetBuilder;

    public QuantityBuilderApiResource? targetValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_objectmetricsource = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ObjectMetricSource) {
        return self.io_k8s_api_autoscaling_v2beta1_objectmetricsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withTarget() returns CrossVersionObjectReferenceBuilderAutoscalingV2beta1 {
        self.targetBuilder = new CrossVersionObjectReferenceBuilderAutoscalingV2beta1(self);
        match (self.targetBuilder) {
            CrossVersionObjectReferenceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTargetValue() returns QuantityBuilderApiResource {
        self.targetValueBuilder = new QuantityBuilderApiResource(self);
        match (self.targetValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (ObjectMetricSourceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_objectmetricsource.metricName = _metricName;
        return self;
    }
};

public type ResourceMetricStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ResourceMetricStatus io_k8s_api_autoscaling_v2beta1_resourcemetricstatus;
    public QuantityBuilderApiResource? currentAverageValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_resourcemetricstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ResourceMetricStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_resourcemetricstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withCurrentAverageValue() returns QuantityBuilderApiResource {
        self.currentAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.currentAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setCurrentAverageUtilization(int _currentAverageUtilization) returns (
                ResourceMetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_resourcemetricstatus.currentAverageUtilization = _currentAverageUtilization;
        return self;
    }

    public function setName(string _name) returns (ResourceMetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_resourcemetricstatus.name = _name;
        return self;
    }
};

public type ReplicaSetConditionBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ReplicaSetCondition io_k8s_api_apps_v1_replicasetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_replicasetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ReplicaSetCondition) {
        return self.io_k8s_api_apps_v1_replicasetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (ReplicaSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (ReplicaSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ReplicaSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (ReplicaSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (ReplicaSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetcondition._type = __type;
        return self;
    }
};

public type DaemonSetBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSet io_k8s_api_apps_v1_daemonset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DaemonSetSpecBuilderAppsV1? specBuilder;

    public DaemonSetStatusBuilderAppsV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonset = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSet) {
        return self.io_k8s_api_apps_v1_daemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DaemonSetSpecBuilderAppsV1 {
        self.specBuilder = new DaemonSetSpecBuilderAppsV1(self);
        match (self.specBuilder) {
            DaemonSetSpecBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DaemonSetStatusBuilderAppsV1 {
        self.statusBuilder = new DaemonSetStatusBuilderAppsV1(self);
        match (self.statusBuilder) {
            DaemonSetStatusBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonset.kind = _kind;
        return self;
    }
};

public type VolumeDeviceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_VolumeDevice io_k8s_api_core_v1_volumedevice;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_volumedevice = new;
    }
    public function build() returns (io_k8s_api_core_v1_VolumeDevice) {
        return self.io_k8s_api_core_v1_volumedevice;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDevicePath(string _devicePath) returns (VolumeDeviceBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumedevice.devicePath = _devicePath;
        return self;
    }

    public function setName(string _name) returns (VolumeDeviceBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumedevice.name = _name;
        return self;
    }
};

public type SubjectBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_Subject io_k8s_api_rbac_v1_subject;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_subject = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_Subject) {
        return self.io_k8s_api_rbac_v1_subject;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroup(string _apiGroup) returns (SubjectBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_subject.apiGroup = _apiGroup;
        return self;
    }

    public function setKind(string _kind) returns (SubjectBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_subject.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (SubjectBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_subject.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (SubjectBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_subject.namespace = _namespace;
        return self;
    }
};

public type APIServiceListBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceList
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicelist = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceList) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (APIServiceListBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIServiceListBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicelist.kind = _kind;
        return self;
    }
};

public type PatchBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Patch io_k8s_apimachinery_pkg_apis_meta_v1_patch;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_patch = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_Patch) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_patch;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type SubjectRulesReviewStatusBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SubjectRulesReviewStatus
    io_k8s_api_authorization_v1beta1_subjectrulesreviewstatus;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_subjectrulesreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SubjectRulesReviewStatus) {
        return self.io_k8s_api_authorization_v1beta1_subjectrulesreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setEvaluationError(string _evaluationError) returns (
                SubjectRulesReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectrulesreviewstatus.evaluationError = _evaluationError;
        return self;
    }

    public function setIncomplete(boolean _incomplete) returns (SubjectRulesReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectrulesreviewstatus.incomplete = _incomplete;
        return self;
    }
};

public type DeploymentConditionBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DeploymentCondition io_k8s_api_apps_v1_deploymentcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deploymentcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DeploymentCondition) {
        return self.io_k8s_api_apps_v1_deploymentcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setLastUpdateTime(time:Time? _lastUpdateTime) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition.lastUpdateTime = _lastUpdateTime;
        return self;
    }

    public function setMessage(string _message) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DeploymentConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentcondition._type = __type;
        return self;
    }
};

public type VolumeAttachmentSpecBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentSpec io_k8s_api_storage_v1beta1_volumeattachmentspec;
    public VolumeAttachmentSourceBuilderStorageV1beta1? sourceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeattachmentspec = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeAttachmentSpec) {
        return self.io_k8s_api_storage_v1beta1_volumeattachmentspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSource() returns VolumeAttachmentSourceBuilderStorageV1beta1 {
        self.sourceBuilder = new VolumeAttachmentSourceBuilderStorageV1beta1(self);
        match (self.sourceBuilder) {
            VolumeAttachmentSourceBuilderStorageV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAttacher(string _attacher) returns (VolumeAttachmentSpecBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentspec.attacher = _attacher;
        return self;
    }

    public function setNodeName(string _nodeName) returns (VolumeAttachmentSpecBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentspec.nodeName = _nodeName;
        return self;
    }
};

public type SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SelfSubjectRulesReviewSpec
    io_k8s_api_authorization_v1beta1_selfsubjectrulesreviewspec;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_selfsubjectrulesreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SelfSubjectRulesReviewSpec) {
        return self.io_k8s_api_authorization_v1beta1_selfsubjectrulesreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNamespace(string _namespace) returns (SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_selfsubjectrulesreviewspec.namespace = _namespace;
        return self;
    }
};

public type ObjectMetricStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_ObjectMetricStatus io_k8s_api_autoscaling_v2beta1_objectmetricstatus;
    public QuantityBuilderApiResource? currentValueBuilder;

    public CrossVersionObjectReferenceBuilderAutoscalingV2beta1? targetBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_objectmetricstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_ObjectMetricStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_objectmetricstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withCurrentValue() returns QuantityBuilderApiResource {
        self.currentValueBuilder = new QuantityBuilderApiResource(self);
        match (self.currentValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTarget() returns CrossVersionObjectReferenceBuilderAutoscalingV2beta1 {
        self.targetBuilder = new CrossVersionObjectReferenceBuilderAutoscalingV2beta1(self);
        match (self.targetBuilder) {
            CrossVersionObjectReferenceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (ObjectMetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_objectmetricstatus.metricName = _metricName;
        return self;
    }
};

public type ControllerRevisionListBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ControllerRevisionList io_k8s_api_apps_v1beta2_controllerrevisionlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_controllerrevisionlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ControllerRevisionList) {
        return self.io_k8s_api_apps_v1beta2_controllerrevisionlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_controllerrevisionlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_controllerrevisionlist.kind = _kind;
        return self;
    }
};

public type ScaleBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_Scale io_k8s_api_autoscaling_v1_scale;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ScaleSpecBuilderAutoscalingV1? specBuilder;

    public ScaleStatusBuilderAutoscalingV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_scale = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_Scale) {
        return self.io_k8s_api_autoscaling_v1_scale;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ScaleSpecBuilderAutoscalingV1 {
        self.specBuilder = new ScaleSpecBuilderAutoscalingV1(self);
        match (self.specBuilder) {
            ScaleSpecBuilderAutoscalingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ScaleStatusBuilderAutoscalingV1 {
        self.statusBuilder = new ScaleStatusBuilderAutoscalingV1(self);
        match (self.statusBuilder) {
            ScaleStatusBuilderAutoscalingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ScaleBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_scale.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ScaleBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_scale.kind = _kind;
        return self;
    }
};

public type JSONSchemaPropsOrStringArrayBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrStringArray
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray;
    public JSONSchemaPropsBuilderApiextensionsV1beta1? SchemaBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrStringArray) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSchema() returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.SchemaBuilder = new JSONSchemaPropsBuilderApiextensionsV1beta1(self);
        match (self.SchemaBuilder) {
            JSONSchemaPropsBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setProperty(string[] _Property) returns (JSONSchemaPropsOrStringArrayBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray.Property =
            _Property;
        return self;
    }
    public function addPropert(string _value) returns JSONSchemaPropsOrStringArrayBuilderApiextensionsV1beta1 {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray.Property[
        lengthof self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorstringarray.
        Property] = _value;
        return self;
    }
};

public type ScaleBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_Scale io_k8s_api_extensions_v1beta1_scale;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ScaleSpecBuilderExtensionsV1beta1? specBuilder;

    public ScaleStatusBuilderExtensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_scale = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_Scale) {
        return self.io_k8s_api_extensions_v1beta1_scale;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ScaleSpecBuilderExtensionsV1beta1 {
        self.specBuilder = new ScaleSpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            ScaleSpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ScaleStatusBuilderExtensionsV1beta1 {
        self.statusBuilder = new ScaleStatusBuilderExtensionsV1beta1(self);
        match (self.statusBuilder) {
            ScaleStatusBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ScaleBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scale.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ScaleBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scale.kind = _kind;
        return self;
    }
};

public type StatefulSetConditionBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSetCondition io_k8s_api_apps_v1beta1_statefulsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulsetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSetCondition) {
        return self.io_k8s_api_apps_v1beta1_statefulsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                StatefulSetConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (StatefulSetConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (StatefulSetConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (StatefulSetConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (StatefulSetConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetcondition._type = __type;
        return self;
    }
};

public type ControllerRevisionBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ControllerRevision io_k8s_api_apps_v1beta2_controllerrevision;
    public RawExtensionBuilderPkgRuntime? dataBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_controllerrevision = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ControllerRevision) {
        return self.io_k8s_api_apps_v1beta2_controllerrevision;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withData() returns RawExtensionBuilderPkgRuntime {
        self.dataBuilder = new RawExtensionBuilderPkgRuntime(self);
        match (self.dataBuilder) {
            RawExtensionBuilderPkgRuntime builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_controllerrevision.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_controllerrevision.kind = _kind;
        return self;
    }

    public function setRevision(int _revision) returns (ControllerRevisionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_controllerrevision.revision = _revision;
        return self;
    }
};

public type MutatingWebhookConfigurationBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration
    io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfiguration;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfiguration = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration) {
        return self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfiguration;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (
                MutatingWebhookConfigurationBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfiguration.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (MutatingWebhookConfigurationBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfiguration.kind = _kind;
        return self;
    }
};

public type RoleListBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_RoleList io_k8s_api_rbac_v1_rolelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_rolelist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_RoleList) {
        return self.io_k8s_api_rbac_v1_rolelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolelist.kind = _kind;
        return self;
    }
};

public type ReplicationControllerBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ReplicationController io_k8s_api_core_v1_replicationcontroller;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ReplicationControllerSpecBuilderCoreV1? specBuilder;

    public ReplicationControllerStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_replicationcontroller = new;
    }
    public function build() returns (io_k8s_api_core_v1_ReplicationController) {
        return self.io_k8s_api_core_v1_replicationcontroller;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ReplicationControllerSpecBuilderCoreV1 {
        self.specBuilder = new ReplicationControllerSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            ReplicationControllerSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ReplicationControllerStatusBuilderCoreV1 {
        self.statusBuilder = new ReplicationControllerStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            ReplicationControllerStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicationControllerBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontroller.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicationControllerBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontroller.kind = _kind;
        return self;
    }
};

public type SubjectRulesReviewStatusBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SubjectRulesReviewStatus io_k8s_api_authorization_v1_subjectrulesreviewstatus;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_subjectrulesreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SubjectRulesReviewStatus) {
        return self.io_k8s_api_authorization_v1_subjectrulesreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setEvaluationError(string _evaluationError) returns (SubjectRulesReviewStatusBuilderAuthorizationV1)
    {
        self.io_k8s_api_authorization_v1_subjectrulesreviewstatus.evaluationError = _evaluationError;
        return self;
    }

    public function setIncomplete(boolean _incomplete) returns (SubjectRulesReviewStatusBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectrulesreviewstatus.incomplete = _incomplete;
        return self;
    }
};

public type HostAliasBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_HostAlias io_k8s_api_core_v1_hostalias;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_hostalias = new;
    }
    public function build() returns (io_k8s_api_core_v1_HostAlias) {
        return self.io_k8s_api_core_v1_hostalias;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHostnames(string[] _hostnames) returns (HostAliasBuilderCoreV1) {
        self.io_k8s_api_core_v1_hostalias.hostnames = _hostnames;
        return self;
    }
    public function addHostname(string _value) returns HostAliasBuilderCoreV1 {
        self.io_k8s_api_core_v1_hostalias.hostnames[lengthof self.io_k8s_api_core_v1_hostalias.hostnames] = _value;
        return self;
    }

    public function setIp(string _ip) returns (HostAliasBuilderCoreV1) {
        self.io_k8s_api_core_v1_hostalias.ip = _ip;
        return self;
    }
};

public type PodSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodSpec io_k8s_api_core_v1_podspec;
    public AffinityBuilderCoreV1? affinityBuilder;

    public PodDNSConfigBuilderCoreV1? dnsConfigBuilder;

    public PodSecurityContextBuilderCoreV1? securityContextBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podspec = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodSpec) {
        return self.io_k8s_api_core_v1_podspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAffinity() returns AffinityBuilderCoreV1 {
        self.affinityBuilder = new AffinityBuilderCoreV1(self);
        match (self.affinityBuilder) {
            AffinityBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withDnsConfig() returns PodDNSConfigBuilderCoreV1 {
        self.dnsConfigBuilder = new PodDNSConfigBuilderCoreV1(self);
        match (self.dnsConfigBuilder) {
            PodDNSConfigBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecurityContext() returns PodSecurityContextBuilderCoreV1 {
        self.securityContextBuilder = new PodSecurityContextBuilderCoreV1(self);
        match (self.securityContextBuilder) {
            PodSecurityContextBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setActiveDeadlineSeconds(int _activeDeadlineSeconds) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.activeDeadlineSeconds = _activeDeadlineSeconds;
        return self;
    }

    public function setAutomountServiceAccountToken(boolean _automountServiceAccountToken) returns (PodSpecBuilderCoreV1
                ) {
        self.io_k8s_api_core_v1_podspec.automountServiceAccountToken = _automountServiceAccountToken;
        return self;
    }

    public function setDnsPolicy(string _dnsPolicy) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.dnsPolicy = _dnsPolicy;
        return self;
    }

    public function setHostIPC(boolean _hostIPC) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.hostIPC = _hostIPC;
        return self;
    }

    public function setHostNetwork(boolean _hostNetwork) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.hostNetwork = _hostNetwork;
        return self;
    }

    public function setHostPID(boolean _hostPID) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.hostPID = _hostPID;
        return self;
    }

    public function setHostname(string _hostname) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.hostname = _hostname;
        return self;
    }

    public function setNodeName(string _nodeName) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.nodeName = _nodeName;
        return self;
    }

    public function setNodeSelector(any _nodeSelector) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.nodeSelector = _nodeSelector;
        return self;
    }

    public function setPriority(int _priority) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.priority = _priority;
        return self;
    }

    public function setPriorityClassName(string _priorityClassName) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.priorityClassName = _priorityClassName;
        return self;
    }

    public function setRestartPolicy(string _restartPolicy) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.restartPolicy = _restartPolicy;
        return self;
    }

    public function setSchedulerName(string _schedulerName) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.schedulerName = _schedulerName;
        return self;
    }

    public function setServiceAccount(string _serviceAccount) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.serviceAccount = _serviceAccount;
        return self;
    }

    public function setServiceAccountName(string _serviceAccountName) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.serviceAccountName = _serviceAccountName;
        return self;
    }

    public function setShareProcessNamespace(boolean _shareProcessNamespace) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.shareProcessNamespace = _shareProcessNamespace;
        return self;
    }

    public function setSubdomain(string _subdomain) returns (PodSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_podspec.subdomain = _subdomain;
        return self;
    }

    public function setTerminationGracePeriodSeconds(int _terminationGracePeriodSeconds) returns (PodSpecBuilderCoreV1)
    {
        self.io_k8s_api_core_v1_podspec.terminationGracePeriodSeconds = _terminationGracePeriodSeconds;
        return self;
    }
};

public type StatefulSetStatusBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSetStatus io_k8s_api_apps_v1beta2_statefulsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulsetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSetStatus) {
        return self.io_k8s_api_apps_v1beta2_statefulsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentReplicas(int _currentReplicas) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.currentReplicas = _currentReplicas;
        return self;
    }

    public function setCurrentRevision(string _currentRevision) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.currentRevision = _currentRevision;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.replicas = _replicas;
        return self;
    }

    public function setUpdateRevision(string _updateRevision) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.updateRevision = _updateRevision;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (StatefulSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type AzureFilePersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_AzureFilePersistentVolumeSource io_k8s_api_core_v1_azurefilepersistentvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_azurefilepersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_AzureFilePersistentVolumeSource) {
        return self.io_k8s_api_core_v1_azurefilepersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReadOnly(boolean _readOnly) returns (AzureFilePersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilepersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSecretName(string _secretName) returns (AzureFilePersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilepersistentvolumesource.secretName = _secretName;
        return self;
    }

    public function setSecretNamespace(string _secretNamespace) returns (AzureFilePersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilepersistentvolumesource.secretNamespace = _secretNamespace;
        return self;
    }

    public function setShareName(string _shareName) returns (AzureFilePersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilepersistentvolumesource.shareName = _shareName;
        return self;
    }
};

public type DaemonSetStatusBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSetStatus io_k8s_api_apps_v1_daemonsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonsetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSetStatus) {
        return self.io_k8s_api_apps_v1_daemonsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentNumberScheduled(int _currentNumberScheduled) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.currentNumberScheduled = _currentNumberScheduled;
        return self;
    }

    public function setDesiredNumberScheduled(int _desiredNumberScheduled) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.desiredNumberScheduled = _desiredNumberScheduled;
        return self;
    }

    public function setNumberAvailable(int _numberAvailable) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.numberAvailable = _numberAvailable;
        return self;
    }

    public function setNumberMisscheduled(int _numberMisscheduled) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.numberMisscheduled = _numberMisscheduled;
        return self;
    }

    public function setNumberReady(int _numberReady) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.numberReady = _numberReady;
        return self;
    }

    public function setNumberUnavailable(int _numberUnavailable) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.numberUnavailable = _numberUnavailable;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setUpdatedNumberScheduled(int _updatedNumberScheduled) returns (DaemonSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetstatus.updatedNumberScheduled = _updatedNumberScheduled;
        return self;
    }
};

public type MetricStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_MetricStatus io_k8s_api_autoscaling_v2beta1_metricstatus;
    public ExternalMetricStatusBuilderAutoscalingV2beta1? externalBuilder;

    public ObjectMetricStatusBuilderAutoscalingV2beta1? _objectBuilder;

    public PodsMetricStatusBuilderAutoscalingV2beta1? podsBuilder;

    public ResourceMetricStatusBuilderAutoscalingV2beta1? _resourceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_metricstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_MetricStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_metricstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withExternal() returns ExternalMetricStatusBuilderAutoscalingV2beta1 {
        self.externalBuilder = new ExternalMetricStatusBuilderAutoscalingV2beta1(self);
        match (self.externalBuilder) {
            ExternalMetricStatusBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function with_object() returns ObjectMetricStatusBuilderAutoscalingV2beta1 {
        self._objectBuilder = new ObjectMetricStatusBuilderAutoscalingV2beta1(self);
        match (self._objectBuilder) {
            ObjectMetricStatusBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPods() returns PodsMetricStatusBuilderAutoscalingV2beta1 {
        self.podsBuilder = new PodsMetricStatusBuilderAutoscalingV2beta1(self);
        match (self.podsBuilder) {
            PodsMetricStatusBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function with_resource() returns ResourceMetricStatusBuilderAutoscalingV2beta1 {
        self._resourceBuilder = new ResourceMetricStatusBuilderAutoscalingV2beta1(self);
        match (self._resourceBuilder) {
            ResourceMetricStatusBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (MetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_metricstatus._type = __type;
        return self;
    }
};

public type VolumeMountBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_VolumeMount io_k8s_api_core_v1_volumemount;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_volumemount = new;
    }
    public function build() returns (io_k8s_api_core_v1_VolumeMount) {
        return self.io_k8s_api_core_v1_volumemount;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMountPath(string _mountPath) returns (VolumeMountBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumemount.mountPath = _mountPath;
        return self;
    }

    public function setMountPropagation(string _mountPropagation) returns (VolumeMountBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumemount.mountPropagation = _mountPropagation;
        return self;
    }

    public function setName(string _name) returns (VolumeMountBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumemount.name = _name;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (VolumeMountBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumemount.readOnly = _readOnly;
        return self;
    }

    public function setSubPath(string _subPath) returns (VolumeMountBuilderCoreV1) {
        self.io_k8s_api_core_v1_volumemount.subPath = _subPath;
        return self;
    }
};

public type DeploymentStatusBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DeploymentStatus io_k8s_api_apps_v1beta2_deploymentstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deploymentstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DeploymentStatus) {
        return self.io_k8s_api_apps_v1beta2_deploymentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setCollisionCount(int _collisionCount) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.replicas = _replicas;
        return self;
    }

    public function setUnavailableReplicas(int _unavailableReplicas) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.unavailableReplicas = _unavailableReplicas;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (DeploymentStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type APIServiceSpecBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceSpec
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec;
    public ServiceReferenceBuilderApiregistrationV1? serviceReferenceBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceSpec) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withServiceReference() returns ServiceReferenceBuilderApiregistrationV1 {
        self.serviceReferenceBuilder = new ServiceReferenceBuilderApiregistrationV1(self);
        match (self.serviceReferenceBuilder) {
            ServiceReferenceBuilderApiregistrationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setCaBundle(string _caBundle) returns (APIServiceSpecBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec.caBundle = _caBundle;
        return self;
    }

    public function set_group(string __group) returns (APIServiceSpecBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec._group = __group;
        return self;
    }

    public function setGroupPriorityMinimum(int _groupPriorityMinimum) returns (APIServiceSpecBuilderApiregistrationV1)
    {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec.groupPriorityMinimum =
            _groupPriorityMinimum;
        return self;
    }

    public function setInsecureSkipTLSVerify(boolean _insecureSkipTLSVerify) returns (
                APIServiceSpecBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec.insecureSkipTLSVerify =
            _insecureSkipTLSVerify;
        return self;
    }

    public function set_version(string __version) returns (APIServiceSpecBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec._version = __version;
        return self;
    }

    public function setVersionPriority(int _versionPriority) returns (APIServiceSpecBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicespec.versionPriority = _versionPriority;
        return self;
    }
};

public type APIGroupListBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIGroupList io_k8s_apimachinery_pkg_apis_meta_v1_apigrouplist;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_apigrouplist = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_APIGroupList) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_apigrouplist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (APIGroupListBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apigrouplist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIGroupListBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apigrouplist.kind = _kind;
        return self;
    }
};

public type DaemonSetUpdateStrategyBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSetUpdateStrategy io_k8s_api_apps_v1beta2_daemonsetupdatestrategy;
    public RollingUpdateDaemonSetBuilderAppsV1beta2? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSetUpdateStrategy) {
        return self.io_k8s_api_apps_v1beta2_daemonsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDaemonSetBuilderAppsV1beta2 {
        self.rollingUpdateBuilder = new RollingUpdateDaemonSetBuilderAppsV1beta2(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDaemonSetBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DaemonSetUpdateStrategyBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetupdatestrategy._type = __type;
        return self;
    }
};

public type EmptyDirVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EmptyDirVolumeSource io_k8s_api_core_v1_emptydirvolumesource;
    public QuantityBuilderApiResource? sizeLimitBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_emptydirvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_EmptyDirVolumeSource) {
        return self.io_k8s_api_core_v1_emptydirvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSizeLimit() returns QuantityBuilderApiResource {
        self.sizeLimitBuilder = new QuantityBuilderApiResource(self);
        match (self.sizeLimitBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMedium(string _medium) returns (EmptyDirVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_emptydirvolumesource.medium = _medium;
        return self;
    }
};

public type EndpointSubsetBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EndpointSubset io_k8s_api_core_v1_endpointsubset;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_endpointsubset = new;
    }
    public function build() returns (io_k8s_api_core_v1_EndpointSubset) {
        return self.io_k8s_api_core_v1_endpointsubset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type AWSElasticBlockStoreVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_AWSElasticBlockStoreVolumeSource io_k8s_api_core_v1_awselasticblockstorevolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_awselasticblockstorevolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_AWSElasticBlockStoreVolumeSource) {
        return self.io_k8s_api_core_v1_awselasticblockstorevolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (AWSElasticBlockStoreVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_awselasticblockstorevolumesource.fsType = _fsType;
        return self;
    }

    public function setPartition(int _partition) returns (AWSElasticBlockStoreVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_awselasticblockstorevolumesource.partition = _partition;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (AWSElasticBlockStoreVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_awselasticblockstorevolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeID(string _volumeID) returns (AWSElasticBlockStoreVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_awselasticblockstorevolumesource.volumeID = _volumeID;
        return self;
    }
};

public type ResourceRequirementsBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceRequirements io_k8s_api_core_v1_resourcerequirements;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcerequirements = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceRequirements) {
        return self.io_k8s_api_core_v1_resourcerequirements;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLimits(any _limits) returns (ResourceRequirementsBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcerequirements.limits = _limits;
        return self;
    }

    public function setRequests(any _requests) returns (ResourceRequirementsBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcerequirements.requests = _requests;
        return self;
    }
};

public type SubjectAccessReviewBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReview io_k8s_api_authorization_v1beta1_subjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SubjectAccessReviewSpecBuilderAuthorizationV1beta1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_subjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SubjectAccessReview) {
        return self.io_k8s_api_authorization_v1beta1_subjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SubjectAccessReviewSpecBuilderAuthorizationV1beta1 {
        self.specBuilder = new SubjectAccessReviewSpecBuilderAuthorizationV1beta1(self);
        match (self.specBuilder) {
            SubjectAccessReviewSpecBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1beta1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1beta1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreview.kind = _kind;
        return self;
    }
};

public type DaemonSetListBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSetList io_k8s_api_apps_v1_daemonsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonsetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSetList) {
        return self.io_k8s_api_apps_v1_daemonsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetlist.kind = _kind;
        return self;
    }
};

public type NetworkPolicySpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicySpec io_k8s_api_extensions_v1beta1_networkpolicyspec;
    public LabelSelectorBuilderMetaV1? podSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicyspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicySpec) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicyspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPodSelector() returns LabelSelectorBuilderMetaV1 {
        self.podSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.podSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPolicyTypes(string[] _policyTypes) returns (NetworkPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicyspec.policyTypes = _policyTypes;
        return self;
    }
    public function addPolicyType(string _value) returns NetworkPolicySpecBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_networkpolicyspec.policyTypes[lengthof self.
        io_k8s_api_extensions_v1beta1_networkpolicyspec.policyTypes] = _value;
        return self;
    }
};

public type StatusDetailsBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_StatusDetails io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_StatusDetails) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_group(string __group) returns (StatusDetailsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails._group = __group;
        return self;
    }

    public function setKind(string _kind) returns (StatusDetailsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (StatusDetailsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails.name = _name;
        return self;
    }

    public function setRetryAfterSeconds(int _retryAfterSeconds) returns (StatusDetailsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails.retryAfterSeconds = _retryAfterSeconds;
        return self;
    }

    public function setUid(string _uid) returns (StatusDetailsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statusdetails.uid = _uid;
        return self;
    }
};

public type ClientIPConfigBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ClientIPConfig io_k8s_api_core_v1_clientipconfig;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_clientipconfig = new;
    }
    public function build() returns (io_k8s_api_core_v1_ClientIPConfig) {
        return self.io_k8s_api_core_v1_clientipconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setTimeoutSeconds(int _timeoutSeconds) returns (ClientIPConfigBuilderCoreV1) {
        self.io_k8s_api_core_v1_clientipconfig.timeoutSeconds = _timeoutSeconds;
        return self;
    }
};

public type PodSecurityPolicySpecBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodSecurityPolicySpec io_k8s_api_policy_v1beta1_podsecuritypolicyspec;
    public FSGroupStrategyOptionsBuilderPolicyV1beta1? fsGroupBuilder;

    public RunAsUserStrategyOptionsBuilderPolicyV1beta1? runAsUserBuilder;

    public SELinuxStrategyOptionsBuilderPolicyV1beta1? seLinuxBuilder;

    public SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1? supplementalGroupsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_podsecuritypolicyspec = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodSecurityPolicySpec) {
        return self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withFsGroup() returns FSGroupStrategyOptionsBuilderPolicyV1beta1 {
        self.fsGroupBuilder = new FSGroupStrategyOptionsBuilderPolicyV1beta1(self);
        match (self.fsGroupBuilder) {
            FSGroupStrategyOptionsBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRunAsUser() returns RunAsUserStrategyOptionsBuilderPolicyV1beta1 {
        self.runAsUserBuilder = new RunAsUserStrategyOptionsBuilderPolicyV1beta1(self);
        match (self.runAsUserBuilder) {
            RunAsUserStrategyOptionsBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSeLinux() returns SELinuxStrategyOptionsBuilderPolicyV1beta1 {
        self.seLinuxBuilder = new SELinuxStrategyOptionsBuilderPolicyV1beta1(self);
        match (self.seLinuxBuilder) {
            SELinuxStrategyOptionsBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSupplementalGroups() returns SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1 {
        self.supplementalGroupsBuilder = new SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1(self);
        match (self.supplementalGroupsBuilder) {
            SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllowPrivilegeEscalation(boolean _allowPrivilegeEscalation) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.allowPrivilegeEscalation = _allowPrivilegeEscalation;
        return self;
    }

    public function setAllowedCapabilities(string[] _allowedCapabilities) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.allowedCapabilities = _allowedCapabilities;
        return self;
    }
    public function addAllowedCapabilitie(string _value) returns PodSecurityPolicySpecBuilderPolicyV1beta1 {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.allowedCapabilities[lengthof self.
        io_k8s_api_policy_v1beta1_podsecuritypolicyspec.allowedCapabilities] = _value;
        return self;
    }

    public function setDefaultAddCapabilities(string[] _defaultAddCapabilities) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.defaultAddCapabilities = _defaultAddCapabilities;
        return self;
    }
    public function addDefaultAddCapabilitie(string _value) returns PodSecurityPolicySpecBuilderPolicyV1beta1 {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.defaultAddCapabilities[lengthof self.
        io_k8s_api_policy_v1beta1_podsecuritypolicyspec.defaultAddCapabilities] = _value;
        return self;
    }

    public function setDefaultAllowPrivilegeEscalation(boolean _defaultAllowPrivilegeEscalation) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.defaultAllowPrivilegeEscalation =
            _defaultAllowPrivilegeEscalation;
        return self;
    }

    public function setHostIPC(boolean _hostIPC) returns (PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.hostIPC = _hostIPC;
        return self;
    }

    public function setHostNetwork(boolean _hostNetwork) returns (PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.hostNetwork = _hostNetwork;
        return self;
    }

    public function setHostPID(boolean _hostPID) returns (PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.hostPID = _hostPID;
        return self;
    }

    public function setPrivileged(boolean _privileged) returns (PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.privileged = _privileged;
        return self;
    }

    public function setReadOnlyRootFilesystem(boolean _readOnlyRootFilesystem) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.readOnlyRootFilesystem = _readOnlyRootFilesystem;
        return self;
    }

    public function setRequiredDropCapabilities(string[] _requiredDropCapabilities) returns (
                PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.requiredDropCapabilities = _requiredDropCapabilities;
        return self;
    }
    public function addRequiredDropCapabilitie(string _value) returns PodSecurityPolicySpecBuilderPolicyV1beta1 {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.requiredDropCapabilities[lengthof self.
        io_k8s_api_policy_v1beta1_podsecuritypolicyspec.requiredDropCapabilities] = _value;
        return self;
    }

    public function setVolumes(string[] _volumes) returns (PodSecurityPolicySpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.volumes = _volumes;
        return self;
    }
    public function addVolume(string _value) returns PodSecurityPolicySpecBuilderPolicyV1beta1 {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicyspec.volumes[lengthof self.
        io_k8s_api_policy_v1beta1_podsecuritypolicyspec.volumes] = _value;
        return self;
    }
};

public type ClusterRoleBindingListBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_ClusterRoleBindingList io_k8s_api_rbac_v1beta1_clusterrolebindinglist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_clusterrolebindinglist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_ClusterRoleBindingList) {
        return self.io_k8s_api_rbac_v1beta1_clusterrolebindinglist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBindingListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolebindinglist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBindingListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolebindinglist.kind = _kind;
        return self;
    }
};

public type InitializerBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Initializer io_k8s_apimachinery_pkg_apis_meta_v1_initializer;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_initializer = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_Initializer) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_initializer;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (InitializerBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_initializer.name = _name;
        return self;
    }
};

public type DeploymentConditionBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentCondition io_k8s_api_extensions_v1beta1_deploymentcondition;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentcondition = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentCondition) {
        return self.io_k8s_api_extensions_v1beta1_deploymentcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                DeploymentConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setLastUpdateTime(time:Time? _lastUpdateTime) returns (DeploymentConditionBuilderExtensionsV1beta1)
    {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition.lastUpdateTime = _lastUpdateTime;
        return self;
    }

    public function setMessage(string _message) returns (DeploymentConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DeploymentConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DeploymentConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DeploymentConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentcondition._type = __type;
        return self;
    }
};

public type ServiceStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServiceStatus io_k8s_api_core_v1_servicestatus;
    public LoadBalancerStatusBuilderCoreV1? loadBalancerBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_servicestatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServiceStatus) {
        return self.io_k8s_api_core_v1_servicestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withLoadBalancer() returns LoadBalancerStatusBuilderCoreV1 {
        self.loadBalancerBuilder = new LoadBalancerStatusBuilderCoreV1(self);
        match (self.loadBalancerBuilder) {
            LoadBalancerStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type ScaleBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_Scale io_k8s_api_apps_v1beta2_scale;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ScaleSpecBuilderAppsV1beta2? specBuilder;

    public ScaleStatusBuilderAppsV1beta2? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_scale = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_Scale) {
        return self.io_k8s_api_apps_v1beta2_scale;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ScaleSpecBuilderAppsV1beta2 {
        self.specBuilder = new ScaleSpecBuilderAppsV1beta2(self);
        match (self.specBuilder) {
            ScaleSpecBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ScaleStatusBuilderAppsV1beta2 {
        self.statusBuilder = new ScaleStatusBuilderAppsV1beta2(self);
        match (self.statusBuilder) {
            ScaleStatusBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ScaleBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scale.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ScaleBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scale.kind = _kind;
        return self;
    }
};

public type JobListBuilderBatchV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1_JobList io_k8s_api_batch_v1_joblist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1_joblist = new;
    }
    public function build() returns (io_k8s_api_batch_v1_JobList) {
        return self.io_k8s_api_batch_v1_joblist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (JobListBuilderBatchV1) {
        self.io_k8s_api_batch_v1_joblist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (JobListBuilderBatchV1) {
        self.io_k8s_api_batch_v1_joblist.kind = _kind;
        return self;
    }
};

public type SubjectAccessReviewSpecBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewSpec
    io_k8s_api_authorization_v1beta1_subjectaccessreviewspec;
    public NonResourceAttributesBuilderAuthorizationV1beta1? nonResourceAttributesBuilder;

    public ResourceAttributesBuilderAuthorizationV1beta1? resourceAttributesBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_subjectaccessreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SubjectAccessReviewSpec) {
        return self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNonResourceAttributes() returns NonResourceAttributesBuilderAuthorizationV1beta1 {
        self.nonResourceAttributesBuilder = new NonResourceAttributesBuilderAuthorizationV1beta1(self);
        match (self.nonResourceAttributesBuilder) {
            NonResourceAttributesBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceAttributes() returns ResourceAttributesBuilderAuthorizationV1beta1 {
        self.resourceAttributesBuilder = new ResourceAttributesBuilderAuthorizationV1beta1(self);
        match (self.resourceAttributesBuilder) {
            ResourceAttributesBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setExtra(any _extra) returns (SubjectAccessReviewSpecBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec.extra = _extra;
        return self;
    }

    public function set_group(string[] __group) returns (SubjectAccessReviewSpecBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec._group = __group;
        return self;
    }
    public function add_grou(string _value) returns SubjectAccessReviewSpecBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec._group[lengthof self.
        io_k8s_api_authorization_v1beta1_subjectaccessreviewspec._group] = _value;
        return self;
    }

    public function setUid(string _uid) returns (SubjectAccessReviewSpecBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec.uid = _uid;
        return self;
    }

    public function setUser(string _user) returns (SubjectAccessReviewSpecBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewspec.user = _user;
        return self;
    }
};

public type ResourceRuleBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_ResourceRule io_k8s_api_authorization_v1beta1_resourcerule;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_resourcerule = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_ResourceRule) {
        return self.io_k8s_api_authorization_v1beta1_resourcerule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroups(string[] _apiGroups) returns (ResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourcerule.apiGroups = _apiGroups;
        return self;
    }
    public function addApiGroup(string _value) returns ResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_resourcerule.apiGroups[lengthof self.
        io_k8s_api_authorization_v1beta1_resourcerule.apiGroups] = _value;
        return self;
    }

    public function setResourceNames(string[] _resourceNames) returns (ResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourcerule.resourceNames = _resourceNames;
        return self;
    }
    public function addResourceName(string _value) returns ResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_resourcerule.resourceNames[lengthof self.
        io_k8s_api_authorization_v1beta1_resourcerule.resourceNames] = _value;
        return self;
    }

    public function setResources(string[] _resources) returns (ResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourcerule.resources = _resources;
        return self;
    }
    public function addResource(string _value) returns ResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_resourcerule.resources[lengthof self.
        io_k8s_api_authorization_v1beta1_resourcerule.resources] = _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (ResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourcerule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns ResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_resourcerule.verbs[lengthof self.
        io_k8s_api_authorization_v1beta1_resourcerule.verbs] = _value;
        return self;
    }
};

public type APIResourceListBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIResourceList io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_APIResourceList) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (APIResourceListBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist.apiVersion = _apiVersion;
        return self;
    }

    public function setGroupVersion(string _groupVersion) returns (APIResourceListBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist.groupVersion = _groupVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIResourceListBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresourcelist.kind = _kind;
        return self;
    }
};

public type ScaleBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_Scale io_k8s_api_apps_v1beta1_scale;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ScaleSpecBuilderAppsV1beta1? specBuilder;

    public ScaleStatusBuilderAppsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_scale = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_Scale) {
        return self.io_k8s_api_apps_v1beta1_scale;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ScaleSpecBuilderAppsV1beta1 {
        self.specBuilder = new ScaleSpecBuilderAppsV1beta1(self);
        match (self.specBuilder) {
            ScaleSpecBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ScaleStatusBuilderAppsV1beta1 {
        self.statusBuilder = new ScaleStatusBuilderAppsV1beta1(self);
        match (self.statusBuilder) {
            ScaleStatusBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ScaleBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scale.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ScaleBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scale.kind = _kind;
        return self;
    }
};

public type ResourceAttributesBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_ResourceAttributes io_k8s_api_authorization_v1beta1_resourceattributes;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_resourceattributes = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_ResourceAttributes) {
        return self.io_k8s_api_authorization_v1beta1_resourceattributes;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_group(string __group) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes._group = __group;
        return self;
    }

    public function setName(string _name) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes.namespace = _namespace;
        return self;
    }

    public function set_resource(string __resource) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes._resource = __resource;
        return self;
    }

    public function setSubresource(string _subresource) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes.subresource = _subresource;
        return self;
    }

    public function setVerb(string _verb) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes.verb = _verb;
        return self;
    }

    public function set_version(string __version) returns (ResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_resourceattributes._version = __version;
        return self;
    }
};

public type StatefulSetBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSet io_k8s_api_apps_v1beta2_statefulset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public StatefulSetSpecBuilderAppsV1beta2? specBuilder;

    public StatefulSetStatusBuilderAppsV1beta2? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulset = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSet) {
        return self.io_k8s_api_apps_v1beta2_statefulset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns StatefulSetSpecBuilderAppsV1beta2 {
        self.specBuilder = new StatefulSetSpecBuilderAppsV1beta2(self);
        match (self.specBuilder) {
            StatefulSetSpecBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns StatefulSetStatusBuilderAppsV1beta2 {
        self.statusBuilder = new StatefulSetStatusBuilderAppsV1beta2(self);
        match (self.statusBuilder) {
            StatefulSetStatusBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulset.kind = _kind;
        return self;
    }
};

public type CustomResourceDefinitionSpecBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionSpec
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec;
    public CustomResourceDefinitionNamesBuilderApiextensionsV1beta1? namesBuilder;

    public CustomResourceSubresourcesBuilderApiextensionsV1beta1? subresourcesBuilder;

    public CustomResourceValidationBuilderApiextensionsV1beta1? validationBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionSpec) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNames() returns CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 {
        self.namesBuilder = new CustomResourceDefinitionNamesBuilderApiextensionsV1beta1(self);
        match (self.namesBuilder) {
            CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSubresources() returns CustomResourceSubresourcesBuilderApiextensionsV1beta1 {
        self.subresourcesBuilder = new CustomResourceSubresourcesBuilderApiextensionsV1beta1(self);
        match (self.subresourcesBuilder) {
            CustomResourceSubresourcesBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withValidation() returns CustomResourceValidationBuilderApiextensionsV1beta1 {
        self.validationBuilder = new CustomResourceValidationBuilderApiextensionsV1beta1(self);
        match (self.validationBuilder) {
            CustomResourceValidationBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_group(string __group) returns (CustomResourceDefinitionSpecBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec._group = __group
        ;
        return self;
    }

    public function set_scope(string __scope) returns (CustomResourceDefinitionSpecBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec._scope = __scope
        ;
        return self;
    }

    public function set_version(string __version) returns (CustomResourceDefinitionSpecBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionspec._version =
            __version;
        return self;
    }
};

public type ConfigMapKeySelectorBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMapKeySelector io_k8s_api_core_v1_configmapkeyselector;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmapkeyselector = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMapKeySelector) {
        return self.io_k8s_api_core_v1_configmapkeyselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setKey(string _key) returns (ConfigMapKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapkeyselector.key = _key;
        return self;
    }

    public function setName(string _name) returns (ConfigMapKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapkeyselector.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (ConfigMapKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapkeyselector.optional = _optional;
        return self;
    }
};

public type VolumeAttachmentSourceBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentSource io_k8s_api_storage_v1beta1_volumeattachmentsource;
    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeattachmentsource = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeAttachmentSource) {
        return self.io_k8s_api_storage_v1beta1_volumeattachmentsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPersistentVolumeName(string _persistentVolumeName) returns (
                VolumeAttachmentSourceBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentsource.persistentVolumeName = _persistentVolumeName;
        return self;
    }
};

public type ScaleIOPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ScaleIOPersistentVolumeSource io_k8s_api_core_v1_scaleiopersistentvolumesource;
    public SecretReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_scaleiopersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ScaleIOPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_scaleiopersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.secretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setGateway(string _gateway) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.gateway = _gateway;
        return self;
    }

    public function setProtectionDomain(string _protectionDomain) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.protectionDomain = _protectionDomain;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSslEnabled(boolean _sslEnabled) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.sslEnabled = _sslEnabled;
        return self;
    }

    public function setStorageMode(string _storageMode) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.storageMode = _storageMode;
        return self;
    }

    public function setStoragePool(string _storagePool) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.storagePool = _storagePool;
        return self;
    }

    public function setSystem(string _system) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.system = _system;
        return self;
    }

    public function setVolumeName(string _volumeName) returns (ScaleIOPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiopersistentvolumesource.volumeName = _volumeName;
        return self;
    }
};

public type StatefulSetListBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSetList io_k8s_api_apps_v1beta2_statefulsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulsetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSetList) {
        return self.io_k8s_api_apps_v1beta2_statefulsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetlist.kind = _kind;
        return self;
    }
};

public type APIResourceBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIResource io_k8s_apimachinery_pkg_apis_meta_v1_apiresource;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_apiresource = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_APIResource) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCategories(string[] _categories) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.categories = _categories;
        return self;
    }
    public function addCategorie(string _value) returns APIResourceBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.categories[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.categories] = _value;
        return self;
    }

    public function set_group(string __group) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource._group = __group;
        return self;
    }

    public function setKind(string _kind) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.name = _name;
        return self;
    }

    public function setNamespaced(boolean _namespaced) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.namespaced = _namespaced;
        return self;
    }

    public function setShortNames(string[] _shortNames) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.shortNames = _shortNames;
        return self;
    }
    public function addShortName(string _value) returns APIResourceBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.shortNames[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.shortNames] = _value;
        return self;
    }

    public function setSingularName(string _singularName) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.singularName = _singularName;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns APIResourceBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.verbs[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_apiresource.verbs] = _value;
        return self;
    }

    public function set_version(string __version) returns (APIResourceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiresource._version = __version;
        return self;
    }
};

public type RollingUpdateDeploymentBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_RollingUpdateDeployment io_k8s_api_extensions_v1beta1_rollingupdatedeployment;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_rollingupdatedeployment = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_RollingUpdateDeployment) {
        return self.io_k8s_api_extensions_v1beta1_rollingupdatedeployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxSurge(int|string _maxSurge) returns (RollingUpdateDeploymentBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_rollingupdatedeployment.maxSurge = _maxSurge;
        return self;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (
                RollingUpdateDeploymentBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_rollingupdatedeployment.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type StatefulSetStatusBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSetStatus io_k8s_api_apps_v1_statefulsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulsetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSetStatus) {
        return self.io_k8s_api_apps_v1_statefulsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentReplicas(int _currentReplicas) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.currentReplicas = _currentReplicas;
        return self;
    }

    public function setCurrentRevision(string _currentRevision) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.currentRevision = _currentRevision;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.replicas = _replicas;
        return self;
    }

    public function setUpdateRevision(string _updateRevision) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.updateRevision = _updateRevision;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (StatefulSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type PodDisruptionBudgetListBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudgetList io_k8s_api_policy_v1beta1_poddisruptionbudgetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_poddisruptionbudgetlist = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodDisruptionBudgetList) {
        return self.io_k8s_api_policy_v1beta1_poddisruptionbudgetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodDisruptionBudgetListBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodDisruptionBudgetListBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetlist.kind = _kind;
        return self;
    }
};

public type NodeSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeSpec io_k8s_api_core_v1_nodespec;
    public NodeConfigSourceBuilderCoreV1? configSourceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeSpec) {
        return self.io_k8s_api_core_v1_nodespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withConfigSource() returns NodeConfigSourceBuilderCoreV1 {
        self.configSourceBuilder = new NodeConfigSourceBuilderCoreV1(self);
        match (self.configSourceBuilder) {
            NodeConfigSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setExternalID(string _externalID) returns (NodeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodespec.externalID = _externalID;
        return self;
    }

    public function setPodCIDR(string _podCIDR) returns (NodeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodespec.podCIDR = _podCIDR;
        return self;
    }

    public function setProviderID(string _providerID) returns (NodeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodespec.providerID = _providerID;
        return self;
    }

    public function setUnschedulable(boolean _unschedulable) returns (NodeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodespec.unschedulable = _unschedulable;
        return self;
    }
};

public type SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_SupplementalGroupsStrategyOptions
    io_k8s_api_policy_v1beta1_supplementalgroupsstrategyoptions;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_supplementalgroupsstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_SupplementalGroupsStrategyOptions) {
        return self.io_k8s_api_policy_v1beta1_supplementalgroupsstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (SupplementalGroupsStrategyOptionsBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_supplementalgroupsstrategyoptions.rule = _rule;
        return self;
    }
};

public type EnvVarBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EnvVar io_k8s_api_core_v1_envvar;
    public EnvVarSourceBuilderCoreV1? valueFromBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_envvar = new;
    }
    public function build() returns (io_k8s_api_core_v1_EnvVar) {
        return self.io_k8s_api_core_v1_envvar;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withValueFrom() returns EnvVarSourceBuilderCoreV1 {
        self.valueFromBuilder = new EnvVarSourceBuilderCoreV1(self);
        match (self.valueFromBuilder) {
            EnvVarSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setName(string _name) returns (EnvVarBuilderCoreV1) {
        self.io_k8s_api_core_v1_envvar.name = _name;
        return self;
    }

    public function setValue(string _value) returns (EnvVarBuilderCoreV1) {
        self.io_k8s_api_core_v1_envvar.value = _value;
        return self;
    }
};

public type CustomResourceDefinitionConditionBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionCondition
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionCondition) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                CustomResourceDefinitionConditionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition.
        lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (CustomResourceDefinitionConditionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition.message =
            _message;
        return self;
    }

    public function setReason(string _reason) returns (CustomResourceDefinitionConditionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition.reason =
            _reason;
        return self;
    }

    public function setStatus(string _status) returns (CustomResourceDefinitionConditionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition.status =
            _status;
        return self;
    }

    public function set_type(string __type) returns (CustomResourceDefinitionConditionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitioncondition._type =
            __type;
        return self;
    }
};

public type ScaleStatusBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ScaleStatus io_k8s_api_apps_v1beta2_scalestatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_scalestatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ScaleStatus) {
        return self.io_k8s_api_apps_v1beta2_scalestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scalestatus.replicas = _replicas;
        return self;
    }

    public function setSelector(any _selector) returns (ScaleStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scalestatus.selector = _selector;
        return self;
    }

    public function setTargetSelector(string _targetSelector) returns (ScaleStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_scalestatus.targetSelector = _targetSelector;
        return self;
    }
};

public type APIVersionsBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIVersions io_k8s_apimachinery_pkg_apis_meta_v1_apiversions;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_apiversions = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_APIVersions) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_apiversions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (APIVersionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiversions.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIVersionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiversions.kind = _kind;
        return self;
    }

    public function setVersions(string[] _versions) returns (APIVersionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiversions.versions = _versions;
        return self;
    }
    public function addVersion(string _value) returns APIVersionsBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apiversions.versions[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_apiversions.versions] = _value;
        return self;
    }
};

public type RollingUpdateDeploymentBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_RollingUpdateDeployment io_k8s_api_apps_v1_rollingupdatedeployment;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_rollingupdatedeployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1_RollingUpdateDeployment) {
        return self.io_k8s_api_apps_v1_rollingupdatedeployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxSurge(int|string _maxSurge) returns (RollingUpdateDeploymentBuilderAppsV1) {
        self.io_k8s_api_apps_v1_rollingupdatedeployment.maxSurge = _maxSurge;
        return self;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (RollingUpdateDeploymentBuilderAppsV1) {
        self.io_k8s_api_apps_v1_rollingupdatedeployment.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type StatefulSetUpdateStrategyBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSetUpdateStrategy io_k8s_api_apps_v1_statefulsetupdatestrategy;
    public RollingUpdateStatefulSetStrategyBuilderAppsV1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSetUpdateStrategy) {
        return self.io_k8s_api_apps_v1_statefulsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateStatefulSetStrategyBuilderAppsV1 {
        self.rollingUpdateBuilder = new RollingUpdateStatefulSetStrategyBuilderAppsV1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateStatefulSetStrategyBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (StatefulSetUpdateStrategyBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetupdatestrategy._type = __type;
        return self;
    }
};

public type DaemonSetStatusBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSetStatus io_k8s_api_extensions_v1beta1_daemonsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonsetstatus = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSetStatus) {
        return self.io_k8s_api_extensions_v1beta1_daemonsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentNumberScheduled(int _currentNumberScheduled) returns (
                DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.currentNumberScheduled = _currentNumberScheduled;
        return self;
    }

    public function setDesiredNumberScheduled(int _desiredNumberScheduled) returns (
                DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.desiredNumberScheduled = _desiredNumberScheduled;
        return self;
    }

    public function setNumberAvailable(int _numberAvailable) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.numberAvailable = _numberAvailable;
        return self;
    }

    public function setNumberMisscheduled(int _numberMisscheduled) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.numberMisscheduled = _numberMisscheduled;
        return self;
    }

    public function setNumberReady(int _numberReady) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.numberReady = _numberReady;
        return self;
    }

    public function setNumberUnavailable(int _numberUnavailable) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.numberUnavailable = _numberUnavailable;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setUpdatedNumberScheduled(int _updatedNumberScheduled) returns (
                DaemonSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetstatus.updatedNumberScheduled = _updatedNumberScheduled;
        return self;
    }
};

public type DaemonSetUpdateStrategyBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSetUpdateStrategy io_k8s_api_extensions_v1beta1_daemonsetupdatestrategy;
    public RollingUpdateDaemonSetBuilderExtensionsV1beta1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSetUpdateStrategy) {
        return self.io_k8s_api_extensions_v1beta1_daemonsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDaemonSetBuilderExtensionsV1beta1 {
        self.rollingUpdateBuilder = new RollingUpdateDaemonSetBuilderExtensionsV1beta1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDaemonSetBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DaemonSetUpdateStrategyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetupdatestrategy._type = __type;
        return self;
    }
};

public type ContainerStateWaitingBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerStateWaiting io_k8s_api_core_v1_containerstatewaiting;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerstatewaiting = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerStateWaiting) {
        return self.io_k8s_api_core_v1_containerstatewaiting;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMessage(string _message) returns (ContainerStateWaitingBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatewaiting.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ContainerStateWaitingBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatewaiting.reason = _reason;
        return self;
    }
};

public type AttachedVolumeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_AttachedVolume io_k8s_api_core_v1_attachedvolume;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_attachedvolume = new;
    }
    public function build() returns (io_k8s_api_core_v1_AttachedVolume) {
        return self.io_k8s_api_core_v1_attachedvolume;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDevicePath(string _devicePath) returns (AttachedVolumeBuilderCoreV1) {
        self.io_k8s_api_core_v1_attachedvolume.devicePath = _devicePath;
        return self;
    }

    public function setName(string _name) returns (AttachedVolumeBuilderCoreV1) {
        self.io_k8s_api_core_v1_attachedvolume.name = _name;
        return self;
    }
};

public type IngressBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_Ingress io_k8s_api_extensions_v1beta1_ingress;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public IngressSpecBuilderExtensionsV1beta1? specBuilder;

    public IngressStatusBuilderExtensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingress = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_Ingress) {
        return self.io_k8s_api_extensions_v1beta1_ingress;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns IngressSpecBuilderExtensionsV1beta1 {
        self.specBuilder = new IngressSpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            IngressSpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns IngressStatusBuilderExtensionsV1beta1 {
        self.statusBuilder = new IngressStatusBuilderExtensionsV1beta1(self);
        match (self.statusBuilder) {
            IngressStatusBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (IngressBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingress.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (IngressBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingress.kind = _kind;
        return self;
    }
};

public type SelfSubjectRulesReviewBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SelfSubjectRulesReview
    io_k8s_api_authorization_v1beta1_selfsubjectrulesreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1? specBuilder;

    public SubjectRulesReviewStatusBuilderAuthorizationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_selfsubjectrulesreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SelfSubjectRulesReview) {
        return self.io_k8s_api_authorization_v1beta1_selfsubjectrulesreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1 {
        self.specBuilder = new SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1(self);
        match (self.specBuilder) {
            SelfSubjectRulesReviewSpecBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectRulesReviewStatusBuilderAuthorizationV1beta1 {
        self.statusBuilder = new SubjectRulesReviewStatusBuilderAuthorizationV1beta1(self);
        match (self.statusBuilder) {
            SubjectRulesReviewStatusBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SelfSubjectRulesReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_selfsubjectrulesreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SelfSubjectRulesReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_selfsubjectrulesreview.kind = _kind;
        return self;
    }
};

public type CertificateSigningRequestConditionBuilderCertificatesV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestCondition
    io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition;
    public new(fluentBuilder) {
        io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition = new;
    }
    public function build() returns (io_k8s_api_certificates_v1beta1_CertificateSigningRequestCondition) {
        return self.io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastUpdateTime(time:Time? _lastUpdateTime) returns (
                CertificateSigningRequestConditionBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition.lastUpdateTime = _lastUpdateTime;
        return self;
    }

    public function setMessage(string _message) returns (CertificateSigningRequestConditionBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (CertificateSigningRequestConditionBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition.reason = _reason;
        return self;
    }

    public function set_type(string __type) returns (CertificateSigningRequestConditionBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestcondition._type = __type;
        return self;
    }
};

public type WatchEventBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_WatchEvent io_k8s_apimachinery_pkg_apis_meta_v1_watchevent;
    public RawExtensionBuilderPkgRuntime? _objectBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_watchevent = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_WatchEvent) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_watchevent;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function with_object() returns RawExtensionBuilderPkgRuntime {
        self._objectBuilder = new RawExtensionBuilderPkgRuntime(self);
        match (self._objectBuilder) {
            RawExtensionBuilderPkgRuntime builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (WatchEventBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_watchevent._type = __type;
        return self;
    }
};

public type HostPathVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_HostPathVolumeSource io_k8s_api_core_v1_hostpathvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_hostpathvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_HostPathVolumeSource) {
        return self.io_k8s_api_core_v1_hostpathvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPath(string _path) returns (HostPathVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_hostpathvolumesource.path = _path;
        return self;
    }

    public function set_type(string __type) returns (HostPathVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_hostpathvolumesource._type = __type;
        return self;
    }
};

public type SelfSubjectRulesReviewBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SelfSubjectRulesReview io_k8s_api_authorization_v1_selfsubjectrulesreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SelfSubjectRulesReviewSpecBuilderAuthorizationV1? specBuilder;

    public SubjectRulesReviewStatusBuilderAuthorizationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_selfsubjectrulesreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SelfSubjectRulesReview) {
        return self.io_k8s_api_authorization_v1_selfsubjectrulesreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SelfSubjectRulesReviewSpecBuilderAuthorizationV1 {
        self.specBuilder = new SelfSubjectRulesReviewSpecBuilderAuthorizationV1(self);
        match (self.specBuilder) {
            SelfSubjectRulesReviewSpecBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectRulesReviewStatusBuilderAuthorizationV1 {
        self.statusBuilder = new SubjectRulesReviewStatusBuilderAuthorizationV1(self);
        match (self.statusBuilder) {
            SubjectRulesReviewStatusBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SelfSubjectRulesReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_selfsubjectrulesreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SelfSubjectRulesReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_selfsubjectrulesreview.kind = _kind;
        return self;
    }
};

public type MutatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfigurationList
    io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfigurationlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfigurationlist = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfigurationList) {
        return self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfigurationlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (
                MutatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfigurationlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (MutatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1)
    {
        self.io_k8s_api_admissionregistration_v1beta1_mutatingwebhookconfigurationlist.kind = _kind;
        return self;
    }
};

public type CronJobBuilderBatchV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1beta1_CronJob io_k8s_api_batch_v1beta1_cronjob;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public CronJobSpecBuilderBatchV1beta1? specBuilder;

    public CronJobStatusBuilderBatchV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1beta1_cronjob = new;
    }
    public function build() returns (io_k8s_api_batch_v1beta1_CronJob) {
        return self.io_k8s_api_batch_v1beta1_cronjob;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns CronJobSpecBuilderBatchV1beta1 {
        self.specBuilder = new CronJobSpecBuilderBatchV1beta1(self);
        match (self.specBuilder) {
            CronJobSpecBuilderBatchV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns CronJobStatusBuilderBatchV1beta1 {
        self.statusBuilder = new CronJobStatusBuilderBatchV1beta1(self);
        match (self.statusBuilder) {
            CronJobStatusBuilderBatchV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CronJobBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjob.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CronJobBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjob.kind = _kind;
        return self;
    }
};

public type ContainerPortBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerPort io_k8s_api_core_v1_containerport;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerport = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerPort) {
        return self.io_k8s_api_core_v1_containerport;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setContainerPort(int _containerPort) returns (ContainerPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerport.containerPort = _containerPort;
        return self;
    }

    public function setHostIP(string _hostIP) returns (ContainerPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerport.hostIP = _hostIP;
        return self;
    }

    public function setHostPort(int _hostPort) returns (ContainerPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerport.hostPort = _hostPort;
        return self;
    }

    public function setName(string _name) returns (ContainerPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerport.name = _name;
        return self;
    }

    public function setProtocol(string _protocol) returns (ContainerPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerport.protocol = _protocol;
        return self;
    }
};

public type NetworkPolicyListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyList io_k8s_api_extensions_v1beta1_networkpolicylist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicylist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicyList) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicylist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NetworkPolicyListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicylist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NetworkPolicyListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicylist.kind = _kind;
        return self;
    }
};

public type ContainerStateTerminatedBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerStateTerminated io_k8s_api_core_v1_containerstateterminated;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerstateterminated = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerStateTerminated) {
        return self.io_k8s_api_core_v1_containerstateterminated;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setContainerID(string _containerID) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.containerID = _containerID;
        return self;
    }

    public function setExitCode(int _exitCode) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.exitCode = _exitCode;
        return self;
    }

    public function setFinishedAt(time:Time? _finishedAt) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.finishedAt = _finishedAt;
        return self;
    }

    public function setMessage(string _message) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.reason = _reason;
        return self;
    }

    public function setSignal(int _signal) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.signal = _signal;
        return self;
    }

    public function setStartedAt(time:Time? _startedAt) returns (ContainerStateTerminatedBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstateterminated.startedAt = _startedAt;
        return self;
    }
};

public type ObjectMetaBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta;
    public InitializersBuilderMetaV1? initializersBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withInitializers() returns InitializersBuilderMetaV1 {
        self.initializersBuilder = new InitializersBuilderMetaV1(self);
        match (self.initializersBuilder) {
            InitializersBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAnnotations(map _annotations) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.annotations = _annotations;
        return self;
    }
    public function addAnnotation(string _key, any _value) returns ObjectMetaBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.annotations[_key] = _value;
        return self;
    }

    public function setClusterName(string _clusterName) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.clusterName = _clusterName;
        return self;
    }

    public function setCreationTimestamp(time:Time?? _creationTimestamp) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.creationTimestamp = _creationTimestamp;
        return self;
    }

    public function setDeletionGracePeriodSeconds(int _deletionGracePeriodSeconds) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.deletionGracePeriodSeconds = _deletionGracePeriodSeconds;
        return self;
    }

    public function setDeletionTimestamp(time:Time?? _deletionTimestamp) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.deletionTimestamp = _deletionTimestamp;
        return self;
    }

    public function setFinalizers(string[] _finalizers) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.finalizers = _finalizers;
        return self;
    }
    public function addFinalizer(string _value) returns ObjectMetaBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.finalizers[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.finalizers] = _value;
        return self;
    }

    public function setGenerateName(string _generateName) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.generateName = _generateName;
        return self;
    }

    public function setGeneration(int _generation) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.generation = _generation;
        return self;
    }

    public function setLabels(map _labels) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.labels = _labels;
        return self;
    }
    public function addLabel(string _key, any _value) returns ObjectMetaBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.labels[_key] = _value;
        return self;
    }

    public function setName(string _name) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.namespace = _namespace;
        return self;
    }

    public function setResourceVersion(string _resourceVersion) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.resourceVersion = _resourceVersion;
        return self;
    }

    public function setSelfLink(string _selfLink) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.selfLink = _selfLink;
        return self;
    }

    public function setUid(string _uid) returns (ObjectMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_objectmeta.uid = _uid;
        return self;
    }
};

public type DaemonSetConditionBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSetCondition io_k8s_api_extensions_v1beta1_daemonsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonsetcondition = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSetCondition) {
        return self.io_k8s_api_extensions_v1beta1_daemonsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                DaemonSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (DaemonSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DaemonSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DaemonSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DaemonSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetcondition._type = __type;
        return self;
    }
};

public type ControllerRevisionListBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_ControllerRevisionList io_k8s_api_apps_v1beta1_controllerrevisionlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_controllerrevisionlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_ControllerRevisionList) {
        return self.io_k8s_api_apps_v1beta1_controllerrevisionlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_controllerrevisionlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_controllerrevisionlist.kind = _kind;
        return self;
    }
};

public type DaemonSetStatusBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSetStatus io_k8s_api_apps_v1beta2_daemonsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonsetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSetStatus) {
        return self.io_k8s_api_apps_v1beta2_daemonsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentNumberScheduled(int _currentNumberScheduled) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.currentNumberScheduled = _currentNumberScheduled;
        return self;
    }

    public function setDesiredNumberScheduled(int _desiredNumberScheduled) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.desiredNumberScheduled = _desiredNumberScheduled;
        return self;
    }

    public function setNumberAvailable(int _numberAvailable) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.numberAvailable = _numberAvailable;
        return self;
    }

    public function setNumberMisscheduled(int _numberMisscheduled) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.numberMisscheduled = _numberMisscheduled;
        return self;
    }

    public function setNumberReady(int _numberReady) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.numberReady = _numberReady;
        return self;
    }

    public function setNumberUnavailable(int _numberUnavailable) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.numberUnavailable = _numberUnavailable;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setUpdatedNumberScheduled(int _updatedNumberScheduled) returns (DaemonSetStatusBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetstatus.updatedNumberScheduled = _updatedNumberScheduled;
        return self;
    }
};

public type NetworkPolicyPortBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPort io_k8s_api_extensions_v1beta1_networkpolicyport;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicyport = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicyPort) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicyport;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPort(int|string _port) returns (NetworkPolicyPortBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicyport.port = _port;
        return self;
    }

    public function setProtocol(string _protocol) returns (NetworkPolicyPortBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicyport.protocol = _protocol;
        return self;
    }
};

public type ExternalDocumentationBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_ExternalDocumentation
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_externaldocumentation;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_externaldocumentation = new;
    }
    public function build() returns (io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_ExternalDocumentation
                ) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_externaldocumentation;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDescription(string _description) returns (ExternalDocumentationBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_externaldocumentation.description =
            _description;
        return self;
    }

    public function setUrl(string _url) returns (ExternalDocumentationBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_externaldocumentation.url = _url;
        return self;
    }
};

public type FlexPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_FlexPersistentVolumeSource io_k8s_api_core_v1_flexpersistentvolumesource;
    public SecretReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_flexpersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_FlexPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_flexpersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.secretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setDriver(string _driver) returns (FlexPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexpersistentvolumesource.driver = _driver;
        return self;
    }

    public function setFsType(string _fsType) returns (FlexPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexpersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setOptions(any _options) returns (FlexPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexpersistentvolumesource.options = _options;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (FlexPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexpersistentvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type RoleBindingListBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_RoleBindingList io_k8s_api_rbac_v1_rolebindinglist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_rolebindinglist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_RoleBindingList) {
        return self.io_k8s_api_rbac_v1_rolebindinglist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBindingListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolebindinglist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBindingListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolebindinglist.kind = _kind;
        return self;
    }
};

public type StorageClassBuilderStorageV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1_StorageClass io_k8s_api_storage_v1_storageclass;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1_storageclass = new;
    }
    public function build() returns (io_k8s_api_storage_v1_StorageClass) {
        return self.io_k8s_api_storage_v1_storageclass;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllowVolumeExpansion(boolean _allowVolumeExpansion) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.allowVolumeExpansion = _allowVolumeExpansion;
        return self;
    }

    public function setApiVersion(string _apiVersion) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.kind = _kind;
        return self;
    }

    public function setMountOptions(string[] _mountOptions) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.mountOptions = _mountOptions;
        return self;
    }
    public function addMountOption(string _value) returns StorageClassBuilderStorageV1 {
        self.io_k8s_api_storage_v1_storageclass.mountOptions[lengthof self.io_k8s_api_storage_v1_storageclass.
        mountOptions] = _value;
        return self;
    }

    public function setParameters(any _parameters) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.parameters = _parameters;
        return self;
    }

    public function setProvisioner(string _provisioner) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.provisioner = _provisioner;
        return self;
    }

    public function setReclaimPolicy(string _reclaimPolicy) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.reclaimPolicy = _reclaimPolicy;
        return self;
    }

    public function setVolumeBindingMode(string _volumeBindingMode) returns (StorageClassBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclass.volumeBindingMode = _volumeBindingMode;
        return self;
    }
};

public type LimitRangeSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LimitRangeSpec io_k8s_api_core_v1_limitrangespec;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_limitrangespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_LimitRangeSpec) {
        return self.io_k8s_api_core_v1_limitrangespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type ReplicaSetConditionBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ReplicaSetCondition io_k8s_api_extensions_v1beta1_replicasetcondition;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_replicasetcondition = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ReplicaSetCondition) {
        return self.io_k8s_api_extensions_v1beta1_replicasetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                ReplicaSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (ReplicaSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ReplicaSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (ReplicaSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (ReplicaSetConditionBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetcondition._type = __type;
        return self;
    }
};

public type PodListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodList io_k8s_api_core_v1_podlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodList) {
        return self.io_k8s_api_core_v1_podlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodListBuilderCoreV1) {
        self.io_k8s_api_core_v1_podlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodListBuilderCoreV1) {
        self.io_k8s_api_core_v1_podlist.kind = _kind;
        return self;
    }
};

public type AzureDiskVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_AzureDiskVolumeSource io_k8s_api_core_v1_azurediskvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_azurediskvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_AzureDiskVolumeSource) {
        return self.io_k8s_api_core_v1_azurediskvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCachingMode(string _cachingMode) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.cachingMode = _cachingMode;
        return self;
    }

    public function setDiskName(string _diskName) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.diskName = _diskName;
        return self;
    }

    public function setDiskURI(string _diskURI) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.diskURI = _diskURI;
        return self;
    }

    public function setFsType(string _fsType) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.fsType = _fsType;
        return self;
    }

    public function setKind(string _kind) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.kind = _kind;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (AzureDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurediskvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type PodSecurityPolicyBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodSecurityPolicy io_k8s_api_policy_v1beta1_podsecuritypolicy;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodSecurityPolicySpecBuilderPolicyV1beta1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_podsecuritypolicy = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodSecurityPolicy) {
        return self.io_k8s_api_policy_v1beta1_podsecuritypolicy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PodSecurityPolicySpecBuilderPolicyV1beta1 {
        self.specBuilder = new PodSecurityPolicySpecBuilderPolicyV1beta1(self);
        match (self.specBuilder) {
            PodSecurityPolicySpecBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodSecurityPolicyBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicy.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodSecurityPolicyBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_podsecuritypolicy.kind = _kind;
        return self;
    }
};

public type DeploymentRollbackBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentRollback io_k8s_api_extensions_v1beta1_deploymentrollback;
    public RollbackConfigBuilderExtensionsV1beta1? rollbackToBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentrollback = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentRollback) {
        return self.io_k8s_api_extensions_v1beta1_deploymentrollback;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollbackTo() returns RollbackConfigBuilderExtensionsV1beta1 {
        self.rollbackToBuilder = new RollbackConfigBuilderExtensionsV1beta1(self);
        match (self.rollbackToBuilder) {
            RollbackConfigBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentRollbackBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentrollback.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentRollbackBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentrollback.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (DeploymentRollbackBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentrollback.name = _name;
        return self;
    }

    public function setUpdatedAnnotations(any _updatedAnnotations) returns (DeploymentRollbackBuilderExtensionsV1beta1)
    {
        self.io_k8s_api_extensions_v1beta1_deploymentrollback.updatedAnnotations = _updatedAnnotations;
        return self;
    }
};

public type InfoBuilderPkgVersion object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_version_Info io_k8s_apimachinery_pkg_version_info;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_version_info = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_version_Info) {
        return self.io_k8s_apimachinery_pkg_version_info;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setBuildDate(string _buildDate) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.buildDate = _buildDate;
        return self;
    }

    public function setCompiler(string _compiler) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.compiler = _compiler;
        return self;
    }

    public function setGitCommit(string _gitCommit) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.gitCommit = _gitCommit;
        return self;
    }

    public function setGitTreeState(string _gitTreeState) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.gitTreeState = _gitTreeState;
        return self;
    }

    public function setGitVersion(string _gitVersion) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.gitVersion = _gitVersion;
        return self;
    }

    public function setGoVersion(string _goVersion) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.goVersion = _goVersion;
        return self;
    }

    public function setMajor(string _major) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.major = _major;
        return self;
    }

    public function setMinor(string _minor) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.minor = _minor;
        return self;
    }

    public function setPlatform(string _platform) returns (InfoBuilderPkgVersion) {
        self.io_k8s_apimachinery_pkg_version_info.platform = _platform;
        return self;
    }
};

public type ResourceAttributesBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_ResourceAttributes io_k8s_api_authorization_v1_resourceattributes;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_resourceattributes = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_ResourceAttributes) {
        return self.io_k8s_api_authorization_v1_resourceattributes;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_group(string __group) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes._group = __group;
        return self;
    }

    public function setName(string _name) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes.namespace = _namespace;
        return self;
    }

    public function set_resource(string __resource) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes._resource = __resource;
        return self;
    }

    public function setSubresource(string _subresource) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes.subresource = _subresource;
        return self;
    }

    public function setVerb(string _verb) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes.verb = _verb;
        return self;
    }

    public function set_version(string __version) returns (ResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourceattributes._version = __version;
        return self;
    }
};

public type ReplicationControllerStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ReplicationControllerStatus io_k8s_api_core_v1_replicationcontrollerstatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_replicationcontrollerstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_ReplicationControllerStatus) {
        return self.io_k8s_api_core_v1_replicationcontrollerstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (ReplicationControllerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setFullyLabeledReplicas(int _fullyLabeledReplicas) returns (ReplicationControllerStatusBuilderCoreV1
                ) {
        self.io_k8s_api_core_v1_replicationcontrollerstatus.fullyLabeledReplicas = _fullyLabeledReplicas;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (ReplicationControllerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (ReplicationControllerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicationControllerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerstatus.replicas = _replicas;
        return self;
    }
};

public type RollingUpdateStatefulSetStrategyBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_RollingUpdateStatefulSetStrategy
    io_k8s_api_apps_v1beta2_rollingupdatestatefulsetstrategy;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_rollingupdatestatefulsetstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_RollingUpdateStatefulSetStrategy) {
        return self.io_k8s_api_apps_v1beta2_rollingupdatestatefulsetstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPartition(int _partition) returns (RollingUpdateStatefulSetStrategyBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_rollingupdatestatefulsetstrategy.partition = _partition;
        return self;
    }
};

public type StorageOSPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_StorageOSPersistentVolumeSource io_k8s_api_core_v1_storageospersistentvolumesource;
    public ObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_storageospersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_StorageOSPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_storageospersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns ObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (StorageOSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageospersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (StorageOSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageospersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeName(string _volumeName) returns (StorageOSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageospersistentvolumesource.volumeName = _volumeName;
        return self;
    }

    public function setVolumeNamespace(string _volumeNamespace) returns (StorageOSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageospersistentvolumesource.volumeNamespace = _volumeNamespace;
        return self;
    }
};

public type DaemonSetBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSet io_k8s_api_apps_v1beta2_daemonset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DaemonSetSpecBuilderAppsV1beta2? specBuilder;

    public DaemonSetStatusBuilderAppsV1beta2? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonset = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSet) {
        return self.io_k8s_api_apps_v1beta2_daemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DaemonSetSpecBuilderAppsV1beta2 {
        self.specBuilder = new DaemonSetSpecBuilderAppsV1beta2(self);
        match (self.specBuilder) {
            DaemonSetSpecBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DaemonSetStatusBuilderAppsV1beta2 {
        self.statusBuilder = new DaemonSetStatusBuilderAppsV1beta2(self);
        match (self.statusBuilder) {
            DaemonSetStatusBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonset.kind = _kind;
        return self;
    }
};

public type HorizontalPodAutoscalerBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler io_k8s_api_autoscaling_v1_horizontalpodautoscaler;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public HorizontalPodAutoscalerSpecBuilderAutoscalingV1? specBuilder;

    public HorizontalPodAutoscalerStatusBuilderAutoscalingV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_horizontalpodautoscaler = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler) {
        return self.io_k8s_api_autoscaling_v1_horizontalpodautoscaler;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns HorizontalPodAutoscalerSpecBuilderAutoscalingV1 {
        self.specBuilder = new HorizontalPodAutoscalerSpecBuilderAutoscalingV1(self);
        match (self.specBuilder) {
            HorizontalPodAutoscalerSpecBuilderAutoscalingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns HorizontalPodAutoscalerStatusBuilderAutoscalingV1 {
        self.statusBuilder = new HorizontalPodAutoscalerStatusBuilderAutoscalingV1(self);
        match (self.statusBuilder) {
            HorizontalPodAutoscalerStatusBuilderAutoscalingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (HorizontalPodAutoscalerBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscaler.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (HorizontalPodAutoscalerBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscaler.kind = _kind;
        return self;
    }
};

public type TokenReviewStatusBuilderAuthenticationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1beta1_TokenReviewStatus io_k8s_api_authentication_v1beta1_tokenreviewstatus;
    public UserInfoBuilderAuthenticationV1beta1? userBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authentication_v1beta1_tokenreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authentication_v1beta1_TokenReviewStatus) {
        return self.io_k8s_api_authentication_v1beta1_tokenreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withUser() returns UserInfoBuilderAuthenticationV1beta1 {
        self.userBuilder = new UserInfoBuilderAuthenticationV1beta1(self);
        match (self.userBuilder) {
            UserInfoBuilderAuthenticationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAuthenticated(boolean _authenticated) returns (TokenReviewStatusBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_tokenreviewstatus.authenticated = _authenticated;
        return self;
    }

    public function set_error(string __error) returns (TokenReviewStatusBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_tokenreviewstatus._error = __error;
        return self;
    }
};

public type CinderVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_CinderVolumeSource io_k8s_api_core_v1_cindervolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_cindervolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_CinderVolumeSource) {
        return self.io_k8s_api_core_v1_cindervolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (CinderVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cindervolumesource.fsType = _fsType;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (CinderVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cindervolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeID(string _volumeID) returns (CinderVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cindervolumesource.volumeID = _volumeID;
        return self;
    }
};

public type ConfigMapListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMapList io_k8s_api_core_v1_configmaplist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmaplist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMapList) {
        return self.io_k8s_api_core_v1_configmaplist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ConfigMapListBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmaplist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ConfigMapListBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmaplist.kind = _kind;
        return self;
    }
};

public type EventBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Event io_k8s_api_core_v1_event;
    public ObjectReferenceBuilderCoreV1? involvedObjectBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ObjectReferenceBuilderCoreV1? relatedBuilder;

    public EventSeriesBuilderCoreV1? seriesBuilder;

    public EventSourceBuilderCoreV1? sourceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_event = new;
    }
    public function build() returns (io_k8s_api_core_v1_Event) {
        return self.io_k8s_api_core_v1_event;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withInvolvedObject() returns ObjectReferenceBuilderCoreV1 {
        self.involvedObjectBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.involvedObjectBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRelated() returns ObjectReferenceBuilderCoreV1 {
        self.relatedBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.relatedBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSeries() returns EventSeriesBuilderCoreV1 {
        self.seriesBuilder = new EventSeriesBuilderCoreV1(self);
        match (self.seriesBuilder) {
            EventSeriesBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSource() returns EventSourceBuilderCoreV1 {
        self.sourceBuilder = new EventSourceBuilderCoreV1(self);
        match (self.sourceBuilder) {
            EventSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAction(string _action) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.action = _action;
        return self;
    }

    public function setApiVersion(string _apiVersion) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.apiVersion = _apiVersion;
        return self;
    }

    public function setCount(int _count) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.count = _count;
        return self;
    }

    public function setEventTime(time:Time? _eventTime) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.eventTime = _eventTime;
        return self;
    }

    public function setFirstTimestamp(time:Time? _firstTimestamp) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.firstTimestamp = _firstTimestamp;
        return self;
    }

    public function setKind(string _kind) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.kind = _kind;
        return self;
    }

    public function setLastTimestamp(time:Time? _lastTimestamp) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.lastTimestamp = _lastTimestamp;
        return self;
    }

    public function setMessage(string _message) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.reason = _reason;
        return self;
    }

    public function setReportingComponent(string _reportingComponent) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.reportingComponent = _reportingComponent;
        return self;
    }

    public function setReportingInstance(string _reportingInstance) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event.reportingInstance = _reportingInstance;
        return self;
    }

    public function set_type(string __type) returns (EventBuilderCoreV1) {
        self.io_k8s_api_core_v1_event._type = __type;
        return self;
    }
};

public type HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerCondition
    io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerCondition) {
        return self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (HorizontalPodAutoscalerConditionBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalercondition._type = __type;
        return self;
    }
};

public type AllowedHostPathBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_AllowedHostPath io_k8s_api_policy_v1beta1_allowedhostpath;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_allowedhostpath = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_AllowedHostPath) {
        return self.io_k8s_api_policy_v1beta1_allowedhostpath;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPathPrefix(string _pathPrefix) returns (AllowedHostPathBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_allowedhostpath.pathPrefix = _pathPrefix;
        return self;
    }
};

public type ISCSIPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ISCSIPersistentVolumeSource io_k8s_api_core_v1_iscsipersistentvolumesource;
    public SecretReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_iscsipersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ISCSIPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_iscsipersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.secretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setChapAuthDiscovery(boolean _chapAuthDiscovery) returns (ISCSIPersistentVolumeSourceBuilderCoreV1)
    {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.chapAuthDiscovery = _chapAuthDiscovery;
        return self;
    }

    public function setChapAuthSession(boolean _chapAuthSession) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.chapAuthSession = _chapAuthSession;
        return self;
    }

    public function setFsType(string _fsType) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.fsType = _fsType;
        return self;
    }

    public function setInitiatorName(string _initiatorName) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.initiatorName = _initiatorName;
        return self;
    }

    public function setIqn(string _iqn) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.iqn = _iqn;
        return self;
    }

    public function setIscsiInterface(string _iscsiInterface) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.iscsiInterface = _iscsiInterface;
        return self;
    }

    public function setLun(int _lun) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.lun = _lun;
        return self;
    }

    public function setPortals(string[] _portals) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.portals = _portals;
        return self;
    }
    public function addPortal(string _value) returns ISCSIPersistentVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.portals[lengthof self.
        io_k8s_api_core_v1_iscsipersistentvolumesource.portals] = _value;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setTargetPortal(string _targetPortal) returns (ISCSIPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsipersistentvolumesource.targetPortal = _targetPortal;
        return self;
    }
};

public type ReplicaSetListBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ReplicaSetList io_k8s_api_apps_v1_replicasetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_replicasetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ReplicaSetList) {
        return self.io_k8s_api_apps_v1_replicasetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetlist.kind = _kind;
        return self;
    }
};

public type OwnerReferenceBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_OwnerReference io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_OwnerReference) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.apiVersion = _apiVersion;
        return self;
    }

    public function setBlockOwnerDeletion(boolean _blockOwnerDeletion) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.blockOwnerDeletion = _blockOwnerDeletion;
        return self;
    }

    public function setController(boolean _controller) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.controller = _controller;
        return self;
    }

    public function setKind(string _kind) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.name = _name;
        return self;
    }

    public function setUid(string _uid) returns (OwnerReferenceBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_ownerreference.uid = _uid;
        return self;
    }
};

public type ComponentStatusListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ComponentStatusList io_k8s_api_core_v1_componentstatuslist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_componentstatuslist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ComponentStatusList) {
        return self.io_k8s_api_core_v1_componentstatuslist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ComponentStatusListBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentstatuslist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ComponentStatusListBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentstatuslist.kind = _kind;
        return self;
    }
};

public type ContainerImageBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerImage io_k8s_api_core_v1_containerimage;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerimage = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerImage) {
        return self.io_k8s_api_core_v1_containerimage;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNames(string[] _names) returns (ContainerImageBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerimage.names = _names;
        return self;
    }
    public function addName(string _value) returns ContainerImageBuilderCoreV1 {
        self.io_k8s_api_core_v1_containerimage.names[lengthof self.io_k8s_api_core_v1_containerimage.names] = _value;
        return self;
    }

    public function setSizeBytes(int _sizeBytes) returns (ContainerImageBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerimage.sizeBytes = _sizeBytes;
        return self;
    }
};

public type StatefulSetSpecBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSetSpec io_k8s_api_apps_v1beta2_statefulsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public StatefulSetUpdateStrategyBuilderAppsV1beta2? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulsetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSetSpec) {
        return self.io_k8s_api_apps_v1beta2_statefulsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns StatefulSetUpdateStrategyBuilderAppsV1beta2 {
        self.updateStrategyBuilder = new StatefulSetUpdateStrategyBuilderAppsV1beta2(self);
        match (self.updateStrategyBuilder) {
            StatefulSetUpdateStrategyBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPodManagementPolicy(string _podManagementPolicy) returns (StatefulSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetspec.podManagementPolicy = _podManagementPolicy;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (StatefulSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }

    public function setServiceName(string _serviceName) returns (StatefulSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetspec.serviceName = _serviceName;
        return self;
    }
};

public type PreconditionsBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Preconditions io_k8s_apimachinery_pkg_apis_meta_v1_preconditions;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_preconditions = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_Preconditions) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_preconditions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setUid(string _uid) returns (PreconditionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_preconditions.uid = _uid;
        return self;
    }
};

public type ReplicaSetSpecBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ReplicaSetSpec io_k8s_api_apps_v1_replicasetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_replicasetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ReplicaSetSpec) {
        return self.io_k8s_api_apps_v1_replicasetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (ReplicaSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetspec.replicas = _replicas;
        return self;
    }
};

public type AzureFileVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_AzureFileVolumeSource io_k8s_api_core_v1_azurefilevolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_azurefilevolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_AzureFileVolumeSource) {
        return self.io_k8s_api_core_v1_azurefilevolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReadOnly(boolean _readOnly) returns (AzureFileVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilevolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSecretName(string _secretName) returns (AzureFileVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilevolumesource.secretName = _secretName;
        return self;
    }

    public function setShareName(string _shareName) returns (AzureFileVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_azurefilevolumesource.shareName = _shareName;
        return self;
    }
};

public type ValidatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfigurationList
    io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfigurationlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfigurationlist = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfigurationList) {
        return self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfigurationlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (
                ValidatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfigurationlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ValidatingWebhookConfigurationListBuilderAdmissionregistrationV1beta1
                ) {
        self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfigurationlist.kind = _kind;
        return self;
    }
};

public type RollbackConfigBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_RollbackConfig io_k8s_api_extensions_v1beta1_rollbackconfig;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_rollbackconfig = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_RollbackConfig) {
        return self.io_k8s_api_extensions_v1beta1_rollbackconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRevision(int _revision) returns (RollbackConfigBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_rollbackconfig.revision = _revision;
        return self;
    }
};

public type AllowedHostPathBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_AllowedHostPath io_k8s_api_extensions_v1beta1_allowedhostpath;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_allowedhostpath = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_AllowedHostPath) {
        return self.io_k8s_api_extensions_v1beta1_allowedhostpath;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPathPrefix(string _pathPrefix) returns (AllowedHostPathBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_allowedhostpath.pathPrefix = _pathPrefix;
        return self;
    }
};

public type LimitRangeListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LimitRangeList io_k8s_api_core_v1_limitrangelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_limitrangelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_LimitRangeList) {
        return self.io_k8s_api_core_v1_limitrangelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (LimitRangeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (LimitRangeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangelist.kind = _kind;
        return self;
    }
};

public type VolumeAttachmentListBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentList io_k8s_api_storage_v1beta1_volumeattachmentlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeattachmentlist = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeAttachmentList) {
        return self.io_k8s_api_storage_v1beta1_volumeattachmentlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (VolumeAttachmentListBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (VolumeAttachmentListBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentlist.kind = _kind;
        return self;
    }
};

public type DeploymentStatusBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentStatus io_k8s_api_apps_v1beta1_deploymentstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentStatus) {
        return self.io_k8s_api_apps_v1beta1_deploymentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setCollisionCount(int _collisionCount) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.replicas = _replicas;
        return self;
    }

    public function setUnavailableReplicas(int _unavailableReplicas) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.unavailableReplicas = _unavailableReplicas;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (DeploymentStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type NodeListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeList io_k8s_api_core_v1_nodelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeList) {
        return self.io_k8s_api_core_v1_nodelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NodeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NodeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodelist.kind = _kind;
        return self;
    }
};

public type StatefulSetSpecBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSetSpec io_k8s_api_apps_v1beta1_statefulsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public StatefulSetUpdateStrategyBuilderAppsV1beta1? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulsetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSetSpec) {
        return self.io_k8s_api_apps_v1beta1_statefulsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns StatefulSetUpdateStrategyBuilderAppsV1beta1 {
        self.updateStrategyBuilder = new StatefulSetUpdateStrategyBuilderAppsV1beta1(self);
        match (self.updateStrategyBuilder) {
            StatefulSetUpdateStrategyBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPodManagementPolicy(string _podManagementPolicy) returns (StatefulSetSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetspec.podManagementPolicy = _podManagementPolicy;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (StatefulSetSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }

    public function setServiceName(string _serviceName) returns (StatefulSetSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetspec.serviceName = _serviceName;
        return self;
    }
};

public type DeploymentSpecBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DeploymentSpec io_k8s_api_apps_v1_deploymentspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public DeploymentStrategyBuilderAppsV1? strategyBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deploymentspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DeploymentSpec) {
        return self.io_k8s_api_apps_v1_deploymentspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStrategy() returns DeploymentStrategyBuilderAppsV1 {
        self.strategyBuilder = new DeploymentStrategyBuilderAppsV1(self);
        match (self.strategyBuilder) {
            DeploymentStrategyBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DeploymentSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setPaused(boolean _paused) returns (DeploymentSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentspec.paused = _paused;
        return self;
    }

    public function setProgressDeadlineSeconds(int _progressDeadlineSeconds) returns (DeploymentSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentspec.progressDeadlineSeconds = _progressDeadlineSeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DeploymentSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type VolumeAttachmentStatusBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentStatus io_k8s_api_storage_v1beta1_volumeattachmentstatus;
    public VolumeErrorBuilderStorageV1beta1? attachErrorBuilder;

    public VolumeErrorBuilderStorageV1beta1? detachErrorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeattachmentstatus = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeAttachmentStatus) {
        return self.io_k8s_api_storage_v1beta1_volumeattachmentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAttachError() returns VolumeErrorBuilderStorageV1beta1 {
        self.attachErrorBuilder = new VolumeErrorBuilderStorageV1beta1(self);
        match (self.attachErrorBuilder) {
            VolumeErrorBuilderStorageV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withDetachError() returns VolumeErrorBuilderStorageV1beta1 {
        self.detachErrorBuilder = new VolumeErrorBuilderStorageV1beta1(self);
        match (self.detachErrorBuilder) {
            VolumeErrorBuilderStorageV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAttached(boolean _attached) returns (VolumeAttachmentStatusBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeattachmentstatus.attached = _attached;
        return self;
    }

    public function setAttachmentMetadata(any _attachmentMetadata) returns (VolumeAttachmentStatusBuilderStorageV1beta1)
    {
        self.io_k8s_api_storage_v1beta1_volumeattachmentstatus.attachmentMetadata = _attachmentMetadata;
        return self;
    }
};

public type GlusterfsVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_GlusterfsVolumeSource io_k8s_api_core_v1_glusterfsvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_glusterfsvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_GlusterfsVolumeSource) {
        return self.io_k8s_api_core_v1_glusterfsvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setEndpoints(string _endpoints) returns (GlusterfsVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_glusterfsvolumesource.endpoints = _endpoints;
        return self;
    }

    public function setPath(string _path) returns (GlusterfsVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_glusterfsvolumesource.path = _path;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (GlusterfsVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_glusterfsvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type DeploymentBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_Deployment io_k8s_api_apps_v1_deployment;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DeploymentSpecBuilderAppsV1? specBuilder;

    public DeploymentStatusBuilderAppsV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1_Deployment) {
        return self.io_k8s_api_apps_v1_deployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DeploymentSpecBuilderAppsV1 {
        self.specBuilder = new DeploymentSpecBuilderAppsV1(self);
        match (self.specBuilder) {
            DeploymentSpecBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DeploymentStatusBuilderAppsV1 {
        self.statusBuilder = new DeploymentStatusBuilderAppsV1(self);
        match (self.statusBuilder) {
            DeploymentStatusBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deployment.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deployment.kind = _kind;
        return self;
    }
};

public type RoleBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_Role io_k8s_api_rbac_v1beta1_role;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_role = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_Role) {
        return self.io_k8s_api_rbac_v1beta1_role;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_role.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_role.kind = _kind;
        return self;
    }
};

public type VolumeNodeAffinityBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_VolumeNodeAffinity io_k8s_api_core_v1_volumenodeaffinity;
    public NodeSelectorBuilderCoreV1? requiredBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_volumenodeaffinity = new;
    }
    public function build() returns (io_k8s_api_core_v1_VolumeNodeAffinity) {
        return self.io_k8s_api_core_v1_volumenodeaffinity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRequired() returns NodeSelectorBuilderCoreV1 {
        self.requiredBuilder = new NodeSelectorBuilderCoreV1(self);
        match (self.requiredBuilder) {
            NodeSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type DaemonSetConditionBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSetCondition io_k8s_api_apps_v1_daemonsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonsetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSetCondition) {
        return self.io_k8s_api_apps_v1_daemonsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (DaemonSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (DaemonSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DaemonSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DaemonSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DaemonSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetcondition._type = __type;
        return self;
    }
};

public type NonResourceAttributesBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_NonResourceAttributes io_k8s_api_authorization_v1_nonresourceattributes;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_nonresourceattributes = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_NonResourceAttributes) {
        return self.io_k8s_api_authorization_v1_nonresourceattributes;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPath(string _path) returns (NonResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_nonresourceattributes.path = _path;
        return self;
    }

    public function setVerb(string _verb) returns (NonResourceAttributesBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_nonresourceattributes.verb = _verb;
        return self;
    }
};

public type VolumeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Volume io_k8s_api_core_v1_volume;
    public AWSElasticBlockStoreVolumeSourceBuilderCoreV1? awsElasticBlockStoreBuilder;

    public AzureDiskVolumeSourceBuilderCoreV1? azureDiskBuilder;

    public AzureFileVolumeSourceBuilderCoreV1? azureFileBuilder;

    public CephFSVolumeSourceBuilderCoreV1? cephfsBuilder;

    public CinderVolumeSourceBuilderCoreV1? cinderBuilder;

    public ConfigMapVolumeSourceBuilderCoreV1? configMapBuilder;

    public DownwardAPIVolumeSourceBuilderCoreV1? downwardAPIBuilder;

    public EmptyDirVolumeSourceBuilderCoreV1? emptyDirBuilder;

    public FCVolumeSourceBuilderCoreV1? fcBuilder;

    public FlexVolumeSourceBuilderCoreV1? flexVolumeBuilder;

    public FlockerVolumeSourceBuilderCoreV1? flockerBuilder;

    public GCEPersistentDiskVolumeSourceBuilderCoreV1? gcePersistentDiskBuilder;

    public GitRepoVolumeSourceBuilderCoreV1? gitRepoBuilder;

    public GlusterfsVolumeSourceBuilderCoreV1? glusterfsBuilder;

    public HostPathVolumeSourceBuilderCoreV1? hostPathBuilder;

    public ISCSIVolumeSourceBuilderCoreV1? iscsiBuilder;

    public NFSVolumeSourceBuilderCoreV1? nfsBuilder;

    public PersistentVolumeClaimVolumeSourceBuilderCoreV1? persistentVolumeClaimBuilder;

    public PhotonPersistentDiskVolumeSourceBuilderCoreV1? photonPersistentDiskBuilder;

    public PortworxVolumeSourceBuilderCoreV1? portworxVolumeBuilder;

    public ProjectedVolumeSourceBuilderCoreV1? projectedBuilder;

    public QuobyteVolumeSourceBuilderCoreV1? quobyteBuilder;

    public RBDVolumeSourceBuilderCoreV1? rbdBuilder;

    public ScaleIOVolumeSourceBuilderCoreV1? scaleIOBuilder;

    public SecretVolumeSourceBuilderCoreV1? secretBuilder;

    public StorageOSVolumeSourceBuilderCoreV1? storageosBuilder;

    public VsphereVirtualDiskVolumeSourceBuilderCoreV1? vsphereVolumeBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_volume = new;
    }
    public function build() returns (io_k8s_api_core_v1_Volume) {
        return self.io_k8s_api_core_v1_volume;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAwsElasticBlockStore() returns AWSElasticBlockStoreVolumeSourceBuilderCoreV1 {
        self.awsElasticBlockStoreBuilder = new AWSElasticBlockStoreVolumeSourceBuilderCoreV1(self);
        match (self.awsElasticBlockStoreBuilder) {
            AWSElasticBlockStoreVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withAzureDisk() returns AzureDiskVolumeSourceBuilderCoreV1 {
        self.azureDiskBuilder = new AzureDiskVolumeSourceBuilderCoreV1(self);
        match (self.azureDiskBuilder) {
            AzureDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withAzureFile() returns AzureFileVolumeSourceBuilderCoreV1 {
        self.azureFileBuilder = new AzureFileVolumeSourceBuilderCoreV1(self);
        match (self.azureFileBuilder) {
            AzureFileVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCephfs() returns CephFSVolumeSourceBuilderCoreV1 {
        self.cephfsBuilder = new CephFSVolumeSourceBuilderCoreV1(self);
        match (self.cephfsBuilder) {
            CephFSVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCinder() returns CinderVolumeSourceBuilderCoreV1 {
        self.cinderBuilder = new CinderVolumeSourceBuilderCoreV1(self);
        match (self.cinderBuilder) {
            CinderVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withConfigMap() returns ConfigMapVolumeSourceBuilderCoreV1 {
        self.configMapBuilder = new ConfigMapVolumeSourceBuilderCoreV1(self);
        match (self.configMapBuilder) {
            ConfigMapVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withDownwardAPI() returns DownwardAPIVolumeSourceBuilderCoreV1 {
        self.downwardAPIBuilder = new DownwardAPIVolumeSourceBuilderCoreV1(self);
        match (self.downwardAPIBuilder) {
            DownwardAPIVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withEmptyDir() returns EmptyDirVolumeSourceBuilderCoreV1 {
        self.emptyDirBuilder = new EmptyDirVolumeSourceBuilderCoreV1(self);
        match (self.emptyDirBuilder) {
            EmptyDirVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFc() returns FCVolumeSourceBuilderCoreV1 {
        self.fcBuilder = new FCVolumeSourceBuilderCoreV1(self);
        match (self.fcBuilder) {
            FCVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFlexVolume() returns FlexVolumeSourceBuilderCoreV1 {
        self.flexVolumeBuilder = new FlexVolumeSourceBuilderCoreV1(self);
        match (self.flexVolumeBuilder) {
            FlexVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFlocker() returns FlockerVolumeSourceBuilderCoreV1 {
        self.flockerBuilder = new FlockerVolumeSourceBuilderCoreV1(self);
        match (self.flockerBuilder) {
            FlockerVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withGcePersistentDisk() returns GCEPersistentDiskVolumeSourceBuilderCoreV1 {
        self.gcePersistentDiskBuilder = new GCEPersistentDiskVolumeSourceBuilderCoreV1(self);
        match (self.gcePersistentDiskBuilder) {
            GCEPersistentDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withGitRepo() returns GitRepoVolumeSourceBuilderCoreV1 {
        self.gitRepoBuilder = new GitRepoVolumeSourceBuilderCoreV1(self);
        match (self.gitRepoBuilder) {
            GitRepoVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withGlusterfs() returns GlusterfsVolumeSourceBuilderCoreV1 {
        self.glusterfsBuilder = new GlusterfsVolumeSourceBuilderCoreV1(self);
        match (self.glusterfsBuilder) {
            GlusterfsVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withHostPath() returns HostPathVolumeSourceBuilderCoreV1 {
        self.hostPathBuilder = new HostPathVolumeSourceBuilderCoreV1(self);
        match (self.hostPathBuilder) {
            HostPathVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withIscsi() returns ISCSIVolumeSourceBuilderCoreV1 {
        self.iscsiBuilder = new ISCSIVolumeSourceBuilderCoreV1(self);
        match (self.iscsiBuilder) {
            ISCSIVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNfs() returns NFSVolumeSourceBuilderCoreV1 {
        self.nfsBuilder = new NFSVolumeSourceBuilderCoreV1(self);
        match (self.nfsBuilder) {
            NFSVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPersistentVolumeClaim() returns PersistentVolumeClaimVolumeSourceBuilderCoreV1 {
        self.persistentVolumeClaimBuilder = new PersistentVolumeClaimVolumeSourceBuilderCoreV1(self);
        match (self.persistentVolumeClaimBuilder) {
            PersistentVolumeClaimVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPhotonPersistentDisk() returns PhotonPersistentDiskVolumeSourceBuilderCoreV1 {
        self.photonPersistentDiskBuilder = new PhotonPersistentDiskVolumeSourceBuilderCoreV1(self);
        match (self.photonPersistentDiskBuilder) {
            PhotonPersistentDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPortworxVolume() returns PortworxVolumeSourceBuilderCoreV1 {
        self.portworxVolumeBuilder = new PortworxVolumeSourceBuilderCoreV1(self);
        match (self.portworxVolumeBuilder) {
            PortworxVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withProjected() returns ProjectedVolumeSourceBuilderCoreV1 {
        self.projectedBuilder = new ProjectedVolumeSourceBuilderCoreV1(self);
        match (self.projectedBuilder) {
            ProjectedVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withQuobyte() returns QuobyteVolumeSourceBuilderCoreV1 {
        self.quobyteBuilder = new QuobyteVolumeSourceBuilderCoreV1(self);
        match (self.quobyteBuilder) {
            QuobyteVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRbd() returns RBDVolumeSourceBuilderCoreV1 {
        self.rbdBuilder = new RBDVolumeSourceBuilderCoreV1(self);
        match (self.rbdBuilder) {
            RBDVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withScaleIO() returns ScaleIOVolumeSourceBuilderCoreV1 {
        self.scaleIOBuilder = new ScaleIOVolumeSourceBuilderCoreV1(self);
        match (self.scaleIOBuilder) {
            ScaleIOVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecret() returns SecretVolumeSourceBuilderCoreV1 {
        self.secretBuilder = new SecretVolumeSourceBuilderCoreV1(self);
        match (self.secretBuilder) {
            SecretVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStorageos() returns StorageOSVolumeSourceBuilderCoreV1 {
        self.storageosBuilder = new StorageOSVolumeSourceBuilderCoreV1(self);
        match (self.storageosBuilder) {
            StorageOSVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withVsphereVolume() returns VsphereVirtualDiskVolumeSourceBuilderCoreV1 {
        self.vsphereVolumeBuilder = new VsphereVirtualDiskVolumeSourceBuilderCoreV1(self);
        match (self.vsphereVolumeBuilder) {
            VsphereVirtualDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setName(string _name) returns (VolumeBuilderCoreV1) {
        self.io_k8s_api_core_v1_volume.name = _name;
        return self;
    }
};

public type EventSeriesBuilderEventsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_events_v1beta1_EventSeries io_k8s_api_events_v1beta1_eventseries;
    public new(fluentBuilder) {
        io_k8s_api_events_v1beta1_eventseries = new;
    }
    public function build() returns (io_k8s_api_events_v1beta1_EventSeries) {
        return self.io_k8s_api_events_v1beta1_eventseries;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCount(int _count) returns (EventSeriesBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_eventseries.count = _count;
        return self;
    }

    public function setLastObservedTime(time:Time? _lastObservedTime) returns (EventSeriesBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_eventseries.lastObservedTime = _lastObservedTime;
        return self;
    }

    public function setState(string _state) returns (EventSeriesBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_eventseries.state = _state;
        return self;
    }
};

public type SecretProjectionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretProjection io_k8s_api_core_v1_secretprojection;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretprojection = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretProjection) {
        return self.io_k8s_api_core_v1_secretprojection;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (SecretProjectionBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretprojection.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (SecretProjectionBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretprojection.optional = _optional;
        return self;
    }
};

public type SubjectBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_Subject io_k8s_api_rbac_v1beta1_subject;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_subject = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_Subject) {
        return self.io_k8s_api_rbac_v1beta1_subject;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroup(string _apiGroup) returns (SubjectBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_subject.apiGroup = _apiGroup;
        return self;
    }

    public function setKind(string _kind) returns (SubjectBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_subject.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (SubjectBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_subject.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (SubjectBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_subject.namespace = _namespace;
        return self;
    }
};

public type EvictionBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_Eviction io_k8s_api_policy_v1beta1_eviction;
    public DeleteOptionsBuilderMetaV1? deleteOptionsBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_eviction = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_Eviction) {
        return self.io_k8s_api_policy_v1beta1_eviction;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withDeleteOptions() returns DeleteOptionsBuilderMetaV1 {
        self.deleteOptionsBuilder = new DeleteOptionsBuilderMetaV1(self);
        match (self.deleteOptionsBuilder) {
            DeleteOptionsBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (EvictionBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_eviction.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (EvictionBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_eviction.kind = _kind;
        return self;
    }
};

public type AllowedFlexVolumeBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_AllowedFlexVolume io_k8s_api_extensions_v1beta1_allowedflexvolume;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_allowedflexvolume = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_AllowedFlexVolume) {
        return self.io_k8s_api_extensions_v1beta1_allowedflexvolume;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDriver(string _driver) returns (AllowedFlexVolumeBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_allowedflexvolume.driver = _driver;
        return self;
    }
};

public type ResourceQuotaBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceQuota io_k8s_api_core_v1_resourcequota;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ResourceQuotaSpecBuilderCoreV1? specBuilder;

    public ResourceQuotaStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcequota = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceQuota) {
        return self.io_k8s_api_core_v1_resourcequota;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ResourceQuotaSpecBuilderCoreV1 {
        self.specBuilder = new ResourceQuotaSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            ResourceQuotaSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ResourceQuotaStatusBuilderCoreV1 {
        self.statusBuilder = new ResourceQuotaStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            ResourceQuotaStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ResourceQuotaBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequota.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ResourceQuotaBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequota.kind = _kind;
        return self;
    }
};

public type InitializersBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Initializers io_k8s_apimachinery_pkg_apis_meta_v1_initializers;
    public StatusBuilderMetaV1? resultBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_initializers = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_Initializers) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_initializers;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withResult() returns StatusBuilderMetaV1 {
        self.resultBuilder = new StatusBuilderMetaV1(self);
        match (self.resultBuilder) {
            StatusBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type ClusterRoleBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_ClusterRole io_k8s_api_rbac_v1beta1_clusterrole;
    public AggregationRuleBuilderRbacV1beta1? aggregationRuleBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_clusterrole = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_ClusterRole) {
        return self.io_k8s_api_rbac_v1beta1_clusterrole;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAggregationRule() returns AggregationRuleBuilderRbacV1beta1 {
        self.aggregationRuleBuilder = new AggregationRuleBuilderRbacV1beta1(self);
        match (self.aggregationRuleBuilder) {
            AggregationRuleBuilderRbacV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrole.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrole.kind = _kind;
        return self;
    }
};

public type HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerStatus
    io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCurrentReplicas(int _currentReplicas) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus.currentReplicas = _currentReplicas;
        return self;
    }

    public function setDesiredReplicas(int _desiredReplicas) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus.desiredReplicas = _desiredReplicas;
        return self;
    }

    public function setLastScaleTime(time:Time? _lastScaleTime) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus.lastScaleTime = _lastScaleTime;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerstatus.observedGeneration = _observedGeneration;
        return self;
    }
};

public type HTTPGetActionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_HTTPGetAction io_k8s_api_core_v1_httpgetaction;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_httpgetaction = new;
    }
    public function build() returns (io_k8s_api_core_v1_HTTPGetAction) {
        return self.io_k8s_api_core_v1_httpgetaction;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHost(string _host) returns (HTTPGetActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpgetaction.host = _host;
        return self;
    }

    public function setPath(string _path) returns (HTTPGetActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpgetaction.path = _path;
        return self;
    }

    public function setPort(int|string _port) returns (HTTPGetActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpgetaction.port = _port;
        return self;
    }

    public function setScheme(string _scheme) returns (HTTPGetActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpgetaction.scheme = _scheme;
        return self;
    }
};

public type NodeSelectorBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeSelector io_k8s_api_core_v1_nodeselector;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeselector = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeSelector) {
        return self.io_k8s_api_core_v1_nodeselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type EventListBuilderEventsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_events_v1beta1_EventList io_k8s_api_events_v1beta1_eventlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_events_v1beta1_eventlist = new;
    }
    public function build() returns (io_k8s_api_events_v1beta1_EventList) {
        return self.io_k8s_api_events_v1beta1_eventlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (EventListBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_eventlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (EventListBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_eventlist.kind = _kind;
        return self;
    }
};

public type StorageOSVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_StorageOSVolumeSource io_k8s_api_core_v1_storageosvolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_storageosvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_StorageOSVolumeSource) {
        return self.io_k8s_api_core_v1_storageosvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (StorageOSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageosvolumesource.fsType = _fsType;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (StorageOSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageosvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeName(string _volumeName) returns (StorageOSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageosvolumesource.volumeName = _volumeName;
        return self;
    }

    public function setVolumeNamespace(string _volumeNamespace) returns (StorageOSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_storageosvolumesource.volumeNamespace = _volumeNamespace;
        return self;
    }
};

public type LabelSelectorRequirementBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelectorRequirement
    io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelectorRequirement) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setKey(string _key) returns (LabelSelectorRequirementBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement.key = _key;
        return self;
    }

    public function setOperator(string _operator) returns (LabelSelectorRequirementBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement.operator = _operator;
        return self;
    }

    public function setValues(string[] _values) returns (LabelSelectorRequirementBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement.values = _values;
        return self;
    }
    public function addValue(string _value) returns LabelSelectorRequirementBuilderMetaV1 {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement.values[lengthof self.
        io_k8s_apimachinery_pkg_apis_meta_v1_labelselectorrequirement.values] = _value;
        return self;
    }
};

public type ResourceRuleBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_ResourceRule io_k8s_api_authorization_v1_resourcerule;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_resourcerule = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_ResourceRule) {
        return self.io_k8s_api_authorization_v1_resourcerule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroups(string[] _apiGroups) returns (ResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourcerule.apiGroups = _apiGroups;
        return self;
    }
    public function addApiGroup(string _value) returns ResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_resourcerule.apiGroups[lengthof self.io_k8s_api_authorization_v1_resourcerule.
        apiGroups] = _value;
        return self;
    }

    public function setResourceNames(string[] _resourceNames) returns (ResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourcerule.resourceNames = _resourceNames;
        return self;
    }
    public function addResourceName(string _value) returns ResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_resourcerule.resourceNames[lengthof self.
        io_k8s_api_authorization_v1_resourcerule.resourceNames] = _value;
        return self;
    }

    public function setResources(string[] _resources) returns (ResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourcerule.resources = _resources;
        return self;
    }
    public function addResource(string _value) returns ResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_resourcerule.resources[lengthof self.io_k8s_api_authorization_v1_resourcerule.
        resources] = _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (ResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_resourcerule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns ResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_resourcerule.verbs[lengthof self.io_k8s_api_authorization_v1_resourcerule.verbs
        ] = _value;
        return self;
    }
};

public type DownwardAPIProjectionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_DownwardAPIProjection io_k8s_api_core_v1_downwardapiprojection;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_downwardapiprojection = new;
    }
    public function build() returns (io_k8s_api_core_v1_DownwardAPIProjection) {
        return self.io_k8s_api_core_v1_downwardapiprojection;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type StorageClassListBuilderStorageV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1_StorageClassList io_k8s_api_storage_v1_storageclasslist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1_storageclasslist = new;
    }
    public function build() returns (io_k8s_api_storage_v1_StorageClassList) {
        return self.io_k8s_api_storage_v1_storageclasslist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StorageClassListBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclasslist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StorageClassListBuilderStorageV1) {
        self.io_k8s_api_storage_v1_storageclasslist.kind = _kind;
        return self;
    }
};

public type RoleBindingBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_RoleBinding io_k8s_api_rbac_v1beta1_rolebinding;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public RoleRefBuilderRbacV1beta1? roleRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_rolebinding = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_RoleBinding) {
        return self.io_k8s_api_rbac_v1beta1_rolebinding;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRoleRef() returns RoleRefBuilderRbacV1beta1 {
        self.roleRefBuilder = new RoleRefBuilderRbacV1beta1(self);
        match (self.roleRefBuilder) {
            RoleRefBuilderRbacV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBindingBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolebinding.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBindingBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolebinding.kind = _kind;
        return self;
    }
};

public type DaemonSetUpdateStrategyBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSetUpdateStrategy io_k8s_api_apps_v1_daemonsetupdatestrategy;
    public RollingUpdateDaemonSetBuilderAppsV1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSetUpdateStrategy) {
        return self.io_k8s_api_apps_v1_daemonsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDaemonSetBuilderAppsV1 {
        self.rollingUpdateBuilder = new RollingUpdateDaemonSetBuilderAppsV1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDaemonSetBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DaemonSetUpdateStrategyBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetupdatestrategy._type = __type;
        return self;
    }
};

public type NetworkPolicyIngressRuleBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyIngressRule io_k8s_api_extensions_v1beta1_networkpolicyingressrule
    ;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicyingressrule = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicyIngressRule) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicyingressrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type SelfSubjectAccessReviewBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SelfSubjectAccessReview
    io_k8s_api_authorization_v1beta1_selfsubjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SelfSubjectAccessReviewSpecBuilderAuthorizationV1beta1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_selfsubjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SelfSubjectAccessReview) {
        return self.io_k8s_api_authorization_v1beta1_selfsubjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SelfSubjectAccessReviewSpecBuilderAuthorizationV1beta1 {
        self.specBuilder = new SelfSubjectAccessReviewSpecBuilderAuthorizationV1beta1(self);
        match (self.specBuilder) {
            SelfSubjectAccessReviewSpecBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1beta1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1beta1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SelfSubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_selfsubjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SelfSubjectAccessReviewBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_selfsubjectaccessreview.kind = _kind;
        return self;
    }
};

public type NetworkPolicyBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicy io_k8s_api_extensions_v1beta1_networkpolicy;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public NetworkPolicySpecBuilderExtensionsV1beta1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicy = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicy) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns NetworkPolicySpecBuilderExtensionsV1beta1 {
        self.specBuilder = new NetworkPolicySpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            NetworkPolicySpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NetworkPolicyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicy.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NetworkPolicyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_networkpolicy.kind = _kind;
        return self;
    }
};

public type RoleRefBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_RoleRef io_k8s_api_rbac_v1beta1_roleref;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_roleref = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_RoleRef) {
        return self.io_k8s_api_rbac_v1beta1_roleref;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroup(string _apiGroup) returns (RoleRefBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_roleref.apiGroup = _apiGroup;
        return self;
    }

    public function setKind(string _kind) returns (RoleRefBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_roleref.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (RoleRefBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_roleref.name = _name;
        return self;
    }
};

public type NodeSystemInfoBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeSystemInfo io_k8s_api_core_v1_nodesysteminfo;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodesysteminfo = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeSystemInfo) {
        return self.io_k8s_api_core_v1_nodesysteminfo;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setArchitecture(string _architecture) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.architecture = _architecture;
        return self;
    }

    public function setBootID(string _bootID) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.bootID = _bootID;
        return self;
    }

    public function setContainerRuntimeVersion(string _containerRuntimeVersion) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.containerRuntimeVersion = _containerRuntimeVersion;
        return self;
    }

    public function setKernelVersion(string _kernelVersion) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.kernelVersion = _kernelVersion;
        return self;
    }

    public function setKubeProxyVersion(string _kubeProxyVersion) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.kubeProxyVersion = _kubeProxyVersion;
        return self;
    }

    public function setKubeletVersion(string _kubeletVersion) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.kubeletVersion = _kubeletVersion;
        return self;
    }

    public function setMachineID(string _machineID) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.machineID = _machineID;
        return self;
    }

    public function setOperatingSystem(string _operatingSystem) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.operatingSystem = _operatingSystem;
        return self;
    }

    public function setOsImage(string _osImage) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.osImage = _osImage;
        return self;
    }

    public function setSystemUUID(string _systemUUID) returns (NodeSystemInfoBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodesysteminfo.systemUUID = _systemUUID;
        return self;
    }
};

public type ServerAddressByClientCIDRBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ServerAddressByClientCIDR
    io_k8s_apimachinery_pkg_apis_meta_v1_serveraddressbyclientcidr;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_serveraddressbyclientcidr = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_ServerAddressByClientCIDR) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_serveraddressbyclientcidr;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setClientCIDR(string _clientCIDR) returns (ServerAddressByClientCIDRBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_serveraddressbyclientcidr.clientCIDR = _clientCIDR;
        return self;
    }

    public function setServerAddress(string _serverAddress) returns (ServerAddressByClientCIDRBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_serveraddressbyclientcidr.serverAddress = _serverAddress;
        return self;
    }
};

public type StatusBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Status io_k8s_apimachinery_pkg_apis_meta_v1_status;
    public StatusDetailsBuilderMetaV1? detailsBuilder;

    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_status = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_Status) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_status;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withDetails() returns StatusDetailsBuilderMetaV1 {
        self.detailsBuilder = new StatusDetailsBuilderMetaV1(self);
        match (self.detailsBuilder) {
            StatusDetailsBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.apiVersion = _apiVersion;
        return self;
    }

    public function setCode(int _code) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.code = _code;
        return self;
    }

    public function setKind(string _kind) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.kind = _kind;
        return self;
    }

    public function setMessage(string _message) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (StatusBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_status.status = _status;
        return self;
    }
};

public type MetricSpecBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_MetricSpec io_k8s_api_autoscaling_v2beta1_metricspec;
    public ExternalMetricSourceBuilderAutoscalingV2beta1? externalBuilder;

    public ObjectMetricSourceBuilderAutoscalingV2beta1? _objectBuilder;

    public PodsMetricSourceBuilderAutoscalingV2beta1? podsBuilder;

    public ResourceMetricSourceBuilderAutoscalingV2beta1? _resourceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_metricspec = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_MetricSpec) {
        return self.io_k8s_api_autoscaling_v2beta1_metricspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withExternal() returns ExternalMetricSourceBuilderAutoscalingV2beta1 {
        self.externalBuilder = new ExternalMetricSourceBuilderAutoscalingV2beta1(self);
        match (self.externalBuilder) {
            ExternalMetricSourceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function with_object() returns ObjectMetricSourceBuilderAutoscalingV2beta1 {
        self._objectBuilder = new ObjectMetricSourceBuilderAutoscalingV2beta1(self);
        match (self._objectBuilder) {
            ObjectMetricSourceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPods() returns PodsMetricSourceBuilderAutoscalingV2beta1 {
        self.podsBuilder = new PodsMetricSourceBuilderAutoscalingV2beta1(self);
        match (self.podsBuilder) {
            PodsMetricSourceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function with_resource() returns ResourceMetricSourceBuilderAutoscalingV2beta1 {
        self._resourceBuilder = new ResourceMetricSourceBuilderAutoscalingV2beta1(self);
        match (self._resourceBuilder) {
            ResourceMetricSourceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (MetricSpecBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_metricspec._type = __type;
        return self;
    }
};

public type CustomResourceDefinitionBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinition;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public CustomResourceDefinitionSpecBuilderApiextensionsV1beta1? specBuilder;

    public CustomResourceDefinitionStatusBuilderApiextensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinition = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns CustomResourceDefinitionSpecBuilderApiextensionsV1beta1 {
        self.specBuilder = new CustomResourceDefinitionSpecBuilderApiextensionsV1beta1(self);
        match (self.specBuilder) {
            CustomResourceDefinitionSpecBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns CustomResourceDefinitionStatusBuilderApiextensionsV1beta1 {
        self.statusBuilder = new CustomResourceDefinitionStatusBuilderApiextensionsV1beta1(self);
        match (self.statusBuilder) {
            CustomResourceDefinitionStatusBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CustomResourceDefinitionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinition.apiVersion =
            _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CustomResourceDefinitionBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinition.kind = _kind;
        return self;
    }
};

public type StatefulSetSpecBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSetSpec io_k8s_api_apps_v1_statefulsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public StatefulSetUpdateStrategyBuilderAppsV1? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulsetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSetSpec) {
        return self.io_k8s_api_apps_v1_statefulsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns StatefulSetUpdateStrategyBuilderAppsV1 {
        self.updateStrategyBuilder = new StatefulSetUpdateStrategyBuilderAppsV1(self);
        match (self.updateStrategyBuilder) {
            StatefulSetUpdateStrategyBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPodManagementPolicy(string _podManagementPolicy) returns (StatefulSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetspec.podManagementPolicy = _podManagementPolicy;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (StatefulSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }

    public function setServiceName(string _serviceName) returns (StatefulSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetspec.serviceName = _serviceName;
        return self;
    }
};

public type ProbeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Probe io_k8s_api_core_v1_probe;
    public ExecActionBuilderCoreV1? execBuilder;

    public HTTPGetActionBuilderCoreV1? httpGetBuilder;

    public TCPSocketActionBuilderCoreV1? tcpSocketBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_probe = new;
    }
    public function build() returns (io_k8s_api_core_v1_Probe) {
        return self.io_k8s_api_core_v1_probe;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withExec() returns ExecActionBuilderCoreV1 {
        self.execBuilder = new ExecActionBuilderCoreV1(self);
        match (self.execBuilder) {
            ExecActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withHttpGet() returns HTTPGetActionBuilderCoreV1 {
        self.httpGetBuilder = new HTTPGetActionBuilderCoreV1(self);
        match (self.httpGetBuilder) {
            HTTPGetActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTcpSocket() returns TCPSocketActionBuilderCoreV1 {
        self.tcpSocketBuilder = new TCPSocketActionBuilderCoreV1(self);
        match (self.tcpSocketBuilder) {
            TCPSocketActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFailureThreshold(int _failureThreshold) returns (ProbeBuilderCoreV1) {
        self.io_k8s_api_core_v1_probe.failureThreshold = _failureThreshold;
        return self;
    }

    public function setInitialDelaySeconds(int _initialDelaySeconds) returns (ProbeBuilderCoreV1) {
        self.io_k8s_api_core_v1_probe.initialDelaySeconds = _initialDelaySeconds;
        return self;
    }

    public function setPeriodSeconds(int _periodSeconds) returns (ProbeBuilderCoreV1) {
        self.io_k8s_api_core_v1_probe.periodSeconds = _periodSeconds;
        return self;
    }

    public function setSuccessThreshold(int _successThreshold) returns (ProbeBuilderCoreV1) {
        self.io_k8s_api_core_v1_probe.successThreshold = _successThreshold;
        return self;
    }

    public function setTimeoutSeconds(int _timeoutSeconds) returns (ProbeBuilderCoreV1) {
        self.io_k8s_api_core_v1_probe.timeoutSeconds = _timeoutSeconds;
        return self;
    }
};

public type ScaleIOVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ScaleIOVolumeSource io_k8s_api_core_v1_scaleiovolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_scaleiovolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ScaleIOVolumeSource) {
        return self.io_k8s_api_core_v1_scaleiovolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.fsType = _fsType;
        return self;
    }

    public function setGateway(string _gateway) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.gateway = _gateway;
        return self;
    }

    public function setProtectionDomain(string _protectionDomain) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.protectionDomain = _protectionDomain;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSslEnabled(boolean _sslEnabled) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.sslEnabled = _sslEnabled;
        return self;
    }

    public function setStorageMode(string _storageMode) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.storageMode = _storageMode;
        return self;
    }

    public function setStoragePool(string _storagePool) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.storagePool = _storagePool;
        return self;
    }

    public function setSystem(string _system) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.system = _system;
        return self;
    }

    public function setVolumeName(string _volumeName) returns (ScaleIOVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_scaleiovolumesource.volumeName = _volumeName;
        return self;
    }
};

public type ReplicaSetStatusBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ReplicaSetStatus io_k8s_api_extensions_v1beta1_replicasetstatus;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_replicasetstatus = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ReplicaSetStatus) {
        return self.io_k8s_api_extensions_v1beta1_replicasetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (ReplicaSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setFullyLabeledReplicas(int _fullyLabeledReplicas) returns (ReplicaSetStatusBuilderExtensionsV1beta1
                ) {
        self.io_k8s_api_extensions_v1beta1_replicasetstatus.fullyLabeledReplicas = _fullyLabeledReplicas;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (ReplicaSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (ReplicaSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetstatus.replicas = _replicas;
        return self;
    }
};

public type PodsMetricStatusBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_PodsMetricStatus io_k8s_api_autoscaling_v2beta1_podsmetricstatus;
    public QuantityBuilderApiResource? currentAverageValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_podsmetricstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_PodsMetricStatus) {
        return self.io_k8s_api_autoscaling_v2beta1_podsmetricstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withCurrentAverageValue() returns QuantityBuilderApiResource {
        self.currentAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.currentAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (PodsMetricStatusBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_podsmetricstatus.metricName = _metricName;
        return self;
    }
};

public type LoadBalancerIngressBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LoadBalancerIngress io_k8s_api_core_v1_loadbalanceringress;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_loadbalanceringress = new;
    }
    public function build() returns (io_k8s_api_core_v1_LoadBalancerIngress) {
        return self.io_k8s_api_core_v1_loadbalanceringress;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHostname(string _hostname) returns (LoadBalancerIngressBuilderCoreV1) {
        self.io_k8s_api_core_v1_loadbalanceringress.hostname = _hostname;
        return self;
    }

    public function setIp(string _ip) returns (LoadBalancerIngressBuilderCoreV1) {
        self.io_k8s_api_core_v1_loadbalanceringress.ip = _ip;
        return self;
    }
};

public type DaemonSetSpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSetSpec io_k8s_api_extensions_v1beta1_daemonsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public DaemonSetUpdateStrategyBuilderExtensionsV1beta1? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonsetspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSetSpec) {
        return self.io_k8s_api_extensions_v1beta1_daemonsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns DaemonSetUpdateStrategyBuilderExtensionsV1beta1 {
        self.updateStrategyBuilder = new DaemonSetUpdateStrategyBuilderExtensionsV1beta1(self);
        match (self.updateStrategyBuilder) {
            DaemonSetUpdateStrategyBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DaemonSetSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DaemonSetSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }

    public function setTemplateGeneration(int _templateGeneration) returns (DaemonSetSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetspec.templateGeneration = _templateGeneration;
        return self;
    }
};

public type HostPortRangeBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_HostPortRange io_k8s_api_policy_v1beta1_hostportrange;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_hostportrange = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_HostPortRange) {
        return self.io_k8s_api_policy_v1beta1_hostportrange;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMax(int _max) returns (HostPortRangeBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_hostportrange.max = _max;
        return self;
    }

    public function setMin(int _min) returns (HostPortRangeBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_hostportrange.min = _min;
        return self;
    }
};

public type GroupVersionForDiscoveryBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_GroupVersionForDiscovery
    io_k8s_apimachinery_pkg_apis_meta_v1_groupversionfordiscovery;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_groupversionfordiscovery = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_GroupVersionForDiscovery) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_groupversionfordiscovery;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setGroupVersion(string _groupVersion) returns (GroupVersionForDiscoveryBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_groupversionfordiscovery.groupVersion = _groupVersion;
        return self;
    }

    public function set_version(string __version) returns (GroupVersionForDiscoveryBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_groupversionfordiscovery._version = __version;
        return self;
    }
};

public type HorizontalPodAutoscalerBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler io_k8s_api_autoscaling_v2beta1_horizontalpodautoscaler
    ;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1? specBuilder;

    public HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_horizontalpodautoscaler = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler) {
        return self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscaler;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1 {
        self.specBuilder = new HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1(self);
        match (self.specBuilder) {
            HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1 {
        self.statusBuilder = new HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1(self);
        match (self.statusBuilder) {
            HorizontalPodAutoscalerStatusBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (HorizontalPodAutoscalerBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscaler.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (HorizontalPodAutoscalerBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscaler.kind = _kind;
        return self;
    }
};

public type PodsMetricSourceBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_PodsMetricSource io_k8s_api_autoscaling_v2beta1_podsmetricsource;
    public QuantityBuilderApiResource? targetAverageValueBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_podsmetricsource = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_PodsMetricSource) {
        return self.io_k8s_api_autoscaling_v2beta1_podsmetricsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withTargetAverageValue() returns QuantityBuilderApiResource {
        self.targetAverageValueBuilder = new QuantityBuilderApiResource(self);
        match (self.targetAverageValueBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMetricName(string _metricName) returns (PodsMetricSourceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_podsmetricsource.metricName = _metricName;
        return self;
    }
};

public type GCEPersistentDiskVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_GCEPersistentDiskVolumeSource io_k8s_api_core_v1_gcepersistentdiskvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_gcepersistentdiskvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_GCEPersistentDiskVolumeSource) {
        return self.io_k8s_api_core_v1_gcepersistentdiskvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (GCEPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gcepersistentdiskvolumesource.fsType = _fsType;
        return self;
    }

    public function setPartition(int _partition) returns (GCEPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gcepersistentdiskvolumesource.partition = _partition;
        return self;
    }

    public function setPdName(string _pdName) returns (GCEPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gcepersistentdiskvolumesource.pdName = _pdName;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (GCEPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gcepersistentdiskvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type NetworkPolicyIngressRuleBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicyIngressRule io_k8s_api_networking_v1_networkpolicyingressrule;
    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicyingressrule = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicyIngressRule) {
        return self.io_k8s_api_networking_v1_networkpolicyingressrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type DaemonSetListBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSetList io_k8s_api_apps_v1beta2_daemonsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonsetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSetList) {
        return self.io_k8s_api_apps_v1beta2_daemonsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetlist.kind = _kind;
        return self;
    }
};

public type EnvVarSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EnvVarSource io_k8s_api_core_v1_envvarsource;
    public ConfigMapKeySelectorBuilderCoreV1? configMapKeyRefBuilder;

    public ObjectFieldSelectorBuilderCoreV1? fieldRefBuilder;

    public ResourceFieldSelectorBuilderCoreV1? resourceFieldRefBuilder;

    public SecretKeySelectorBuilderCoreV1? secretKeyRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_envvarsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_EnvVarSource) {
        return self.io_k8s_api_core_v1_envvarsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withConfigMapKeyRef() returns ConfigMapKeySelectorBuilderCoreV1 {
        self.configMapKeyRefBuilder = new ConfigMapKeySelectorBuilderCoreV1(self);
        match (self.configMapKeyRefBuilder) {
            ConfigMapKeySelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFieldRef() returns ObjectFieldSelectorBuilderCoreV1 {
        self.fieldRefBuilder = new ObjectFieldSelectorBuilderCoreV1(self);
        match (self.fieldRefBuilder) {
            ObjectFieldSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceFieldRef() returns ResourceFieldSelectorBuilderCoreV1 {
        self.resourceFieldRefBuilder = new ResourceFieldSelectorBuilderCoreV1(self);
        match (self.resourceFieldRefBuilder) {
            ResourceFieldSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecretKeyRef() returns SecretKeySelectorBuilderCoreV1 {
        self.secretKeyRefBuilder = new SecretKeySelectorBuilderCoreV1(self);
        match (self.secretKeyRefBuilder) {
            SecretKeySelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type ReplicaSetListBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ReplicaSetList io_k8s_api_apps_v1beta2_replicasetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_replicasetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ReplicaSetList) {
        return self.io_k8s_api_apps_v1beta2_replicasetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetlist.kind = _kind;
        return self;
    }
};

public type RawExtensionBuilderPkgRuntime object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_runtime_RawExtension io_k8s_apimachinery_pkg_runtime_rawextension;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_runtime_rawextension = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_runtime_RawExtension) {
        return self.io_k8s_apimachinery_pkg_runtime_rawextension;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRaw(string _Raw) returns (RawExtensionBuilderPkgRuntime) {
        self.io_k8s_apimachinery_pkg_runtime_rawextension.Raw = _Raw;
        return self;
    }
};

public type ReplicaSetBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ReplicaSet io_k8s_api_extensions_v1beta1_replicaset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ReplicaSetSpecBuilderExtensionsV1beta1? specBuilder;

    public ReplicaSetStatusBuilderExtensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_replicaset = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ReplicaSet) {
        return self.io_k8s_api_extensions_v1beta1_replicaset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ReplicaSetSpecBuilderExtensionsV1beta1 {
        self.specBuilder = new ReplicaSetSpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            ReplicaSetSpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ReplicaSetStatusBuilderExtensionsV1beta1 {
        self.statusBuilder = new ReplicaSetStatusBuilderExtensionsV1beta1(self);
        match (self.statusBuilder) {
            ReplicaSetStatusBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicaset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicaset.kind = _kind;
        return self;
    }
};

public type JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrBool
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorbool;
    public JSONSchemaPropsBuilderApiextensionsV1beta1? SchemaBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorbool = new;
    }
    public function build() returns (io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrBool
                ) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorbool;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSchema() returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.SchemaBuilder = new JSONSchemaPropsBuilderApiextensionsV1beta1(self);
        match (self.SchemaBuilder) {
            JSONSchemaPropsBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllows(boolean _Allows) returns (JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorbool.Allows = _Allows;
        return self;
    }
};

public type NodeStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeStatus io_k8s_api_core_v1_nodestatus;
    public NodeDaemonEndpointsBuilderCoreV1? daemonEndpointsBuilder;

    public NodeSystemInfoBuilderCoreV1? nodeInfoBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodestatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeStatus) {
        return self.io_k8s_api_core_v1_nodestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withDaemonEndpoints() returns NodeDaemonEndpointsBuilderCoreV1 {
        self.daemonEndpointsBuilder = new NodeDaemonEndpointsBuilderCoreV1(self);
        match (self.daemonEndpointsBuilder) {
            NodeDaemonEndpointsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNodeInfo() returns NodeSystemInfoBuilderCoreV1 {
        self.nodeInfoBuilder = new NodeSystemInfoBuilderCoreV1(self);
        match (self.nodeInfoBuilder) {
            NodeSystemInfoBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllocatable(any _allocatable) returns (NodeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodestatus.allocatable = _allocatable;
        return self;
    }

    public function setCapacity(any _capacity) returns (NodeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodestatus.capacity = _capacity;
        return self;
    }

    public function setPhase(string _phase) returns (NodeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodestatus.phase = _phase;
        return self;
    }

    public function setVolumesInUse(string[] _volumesInUse) returns (NodeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodestatus.volumesInUse = _volumesInUse;
        return self;
    }
    public function addVolumesInUs(string _value) returns NodeStatusBuilderCoreV1 {
        self.io_k8s_api_core_v1_nodestatus.volumesInUse[lengthof self.io_k8s_api_core_v1_nodestatus.volumesInUse] =
            _value;
        return self;
    }
};

public type ReplicaSetConditionBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ReplicaSetCondition io_k8s_api_apps_v1beta2_replicasetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_replicasetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ReplicaSetCondition) {
        return self.io_k8s_api_apps_v1beta2_replicasetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (ReplicaSetConditionBuilderAppsV1beta2
                ) {
        self.io_k8s_api_apps_v1beta2_replicasetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (ReplicaSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ReplicaSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (ReplicaSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (ReplicaSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetcondition._type = __type;
        return self;
    }
};

public type EventSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EventSource io_k8s_api_core_v1_eventsource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_eventsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_EventSource) {
        return self.io_k8s_api_core_v1_eventsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setComponent(string _component) returns (EventSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventsource.component = _component;
        return self;
    }

    public function setHost(string _host) returns (EventSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventsource.host = _host;
        return self;
    }
};

public type StatefulSetListBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSetList io_k8s_api_apps_v1beta1_statefulsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulsetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSetList) {
        return self.io_k8s_api_apps_v1beta1_statefulsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetlist.kind = _kind;
        return self;
    }
};

public type DeploymentBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_Deployment io_k8s_api_apps_v1beta1_deployment;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DeploymentSpecBuilderAppsV1beta1? specBuilder;

    public DeploymentStatusBuilderAppsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_Deployment) {
        return self.io_k8s_api_apps_v1beta1_deployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DeploymentSpecBuilderAppsV1beta1 {
        self.specBuilder = new DeploymentSpecBuilderAppsV1beta1(self);
        match (self.specBuilder) {
            DeploymentSpecBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DeploymentStatusBuilderAppsV1beta1 {
        self.statusBuilder = new DeploymentStatusBuilderAppsV1beta1(self);
        match (self.statusBuilder) {
            DeploymentStatusBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deployment.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deployment.kind = _kind;
        return self;
    }
};

public type DeploymentStrategyBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentStrategy io_k8s_api_apps_v1beta1_deploymentstrategy;
    public RollingUpdateDeploymentBuilderAppsV1beta1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentStrategy) {
        return self.io_k8s_api_apps_v1beta1_deploymentstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDeploymentBuilderAppsV1beta1 {
        self.rollingUpdateBuilder = new RollingUpdateDeploymentBuilderAppsV1beta1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDeploymentBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DeploymentStrategyBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentstrategy._type = __type;
        return self;
    }
};

public type NamespaceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Namespace io_k8s_api_core_v1_namespace;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public NamespaceSpecBuilderCoreV1? specBuilder;

    public NamespaceStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_namespace = new;
    }
    public function build() returns (io_k8s_api_core_v1_Namespace) {
        return self.io_k8s_api_core_v1_namespace;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns NamespaceSpecBuilderCoreV1 {
        self.specBuilder = new NamespaceSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            NamespaceSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns NamespaceStatusBuilderCoreV1 {
        self.statusBuilder = new NamespaceStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            NamespaceStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NamespaceBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespace.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NamespaceBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespace.kind = _kind;
        return self;
    }
};

public type DeploymentSpecBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DeploymentSpec io_k8s_api_apps_v1beta2_deploymentspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public DeploymentStrategyBuilderAppsV1beta2? strategyBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deploymentspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DeploymentSpec) {
        return self.io_k8s_api_apps_v1beta2_deploymentspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStrategy() returns DeploymentStrategyBuilderAppsV1beta2 {
        self.strategyBuilder = new DeploymentStrategyBuilderAppsV1beta2(self);
        match (self.strategyBuilder) {
            DeploymentStrategyBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DeploymentSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setPaused(boolean _paused) returns (DeploymentSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentspec.paused = _paused;
        return self;
    }

    public function setProgressDeadlineSeconds(int _progressDeadlineSeconds) returns (DeploymentSpecBuilderAppsV1beta2)
    {
        self.io_k8s_api_apps_v1beta2_deploymentspec.progressDeadlineSeconds = _progressDeadlineSeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DeploymentSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionNames
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionNames) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCategories(string[] _categories) returns (
                CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.categories =
            _categories;
        return self;
    }
    public function addCategorie(string _value) returns CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.categories[
        lengthof self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.
        categories] = _value;
        return self;
    }

    public function setKind(string _kind) returns (CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.kind = _kind;
        return self;
    }

    public function setListKind(string _listKind) returns (CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.listKind =
            _listKind;
        return self;
    }

    public function setPlural(string _plural) returns (CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.plural =
            _plural;
        return self;
    }

    public function setShortNames(string[] _shortNames) returns (
                CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.shortNames =
            _shortNames;
        return self;
    }
    public function addShortName(string _value) returns CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.shortNames[
        lengthof self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.
        shortNames] = _value;
        return self;
    }

    public function setSingular(string _singular) returns (CustomResourceDefinitionNamesBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionnames.singular =
            _singular;
        return self;
    }
};

public type DeploymentSpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentSpec io_k8s_api_extensions_v1beta1_deploymentspec;
    public RollbackConfigBuilderExtensionsV1beta1? rollbackToBuilder;

    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public DeploymentStrategyBuilderExtensionsV1beta1? strategyBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentSpec) {
        return self.io_k8s_api_extensions_v1beta1_deploymentspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollbackTo() returns RollbackConfigBuilderExtensionsV1beta1 {
        self.rollbackToBuilder = new RollbackConfigBuilderExtensionsV1beta1(self);
        match (self.rollbackToBuilder) {
            RollbackConfigBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStrategy() returns DeploymentStrategyBuilderExtensionsV1beta1 {
        self.strategyBuilder = new DeploymentStrategyBuilderExtensionsV1beta1(self);
        match (self.strategyBuilder) {
            DeploymentStrategyBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DeploymentSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setPaused(boolean _paused) returns (DeploymentSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentspec.paused = _paused;
        return self;
    }

    public function setProgressDeadlineSeconds(int _progressDeadlineSeconds) returns (
                DeploymentSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentspec.progressDeadlineSeconds = _progressDeadlineSeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DeploymentSpecBuilderExtensionsV1beta1)
    {
        self.io_k8s_api_extensions_v1beta1_deploymentspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type CapabilitiesBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Capabilities io_k8s_api_core_v1_capabilities;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_capabilities = new;
    }
    public function build() returns (io_k8s_api_core_v1_Capabilities) {
        return self.io_k8s_api_core_v1_capabilities;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAdd(string[] _add) returns (CapabilitiesBuilderCoreV1) {
        self.io_k8s_api_core_v1_capabilities.add = _add;
        return self;
    }
    public function addAd(string _value) returns CapabilitiesBuilderCoreV1 {
        self.io_k8s_api_core_v1_capabilities.add[lengthof self.io_k8s_api_core_v1_capabilities.add] = _value;
        return self;
    }

    public function setDrop(string[] _drop) returns (CapabilitiesBuilderCoreV1) {
        self.io_k8s_api_core_v1_capabilities.drop = _drop;
        return self;
    }
    public function addDro(string _value) returns CapabilitiesBuilderCoreV1 {
        self.io_k8s_api_core_v1_capabilities.drop[lengthof self.io_k8s_api_core_v1_capabilities.drop] = _value;
        return self;
    }
};

public type LimitRangeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LimitRange io_k8s_api_core_v1_limitrange;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public LimitRangeSpecBuilderCoreV1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_limitrange = new;
    }
    public function build() returns (io_k8s_api_core_v1_LimitRange) {
        return self.io_k8s_api_core_v1_limitrange;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns LimitRangeSpecBuilderCoreV1 {
        self.specBuilder = new LimitRangeSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            LimitRangeSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (LimitRangeBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrange.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (LimitRangeBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrange.kind = _kind;
        return self;
    }
};

public type ReplicaSetSpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ReplicaSetSpec io_k8s_api_extensions_v1beta1_replicasetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_replicasetspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ReplicaSetSpec) {
        return self.io_k8s_api_extensions_v1beta1_replicasetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (ReplicaSetSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetspec.replicas = _replicas;
        return self;
    }
};

public type ReplicaSetSpecBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ReplicaSetSpec io_k8s_api_apps_v1beta2_replicasetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_replicasetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ReplicaSetSpec) {
        return self.io_k8s_api_apps_v1beta2_replicasetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (ReplicaSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicasetspec.replicas = _replicas;
        return self;
    }
};

public type NetworkPolicyEgressRuleBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyEgressRule io_k8s_api_extensions_v1beta1_networkpolicyegressrule;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicyegressrule = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicyEgressRule) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicyegressrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type PersistentVolumeClaimVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaimVolumeSource io_k8s_api_core_v1_persistentvolumeclaimvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaimvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaimVolumeSource) {
        return self.io_k8s_api_core_v1_persistentvolumeclaimvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setClaimName(string _claimName) returns (PersistentVolumeClaimVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimvolumesource.claimName = _claimName;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (PersistentVolumeClaimVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type SelfSubjectAccessReviewSpecBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SelfSubjectAccessReviewSpec
    io_k8s_api_authorization_v1_selfsubjectaccessreviewspec;
    public NonResourceAttributesBuilderAuthorizationV1? nonResourceAttributesBuilder;

    public ResourceAttributesBuilderAuthorizationV1? resourceAttributesBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_selfsubjectaccessreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SelfSubjectAccessReviewSpec) {
        return self.io_k8s_api_authorization_v1_selfsubjectaccessreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNonResourceAttributes() returns NonResourceAttributesBuilderAuthorizationV1 {
        self.nonResourceAttributesBuilder = new NonResourceAttributesBuilderAuthorizationV1(self);
        match (self.nonResourceAttributesBuilder) {
            NonResourceAttributesBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceAttributes() returns ResourceAttributesBuilderAuthorizationV1 {
        self.resourceAttributesBuilder = new ResourceAttributesBuilderAuthorizationV1(self);
        match (self.resourceAttributesBuilder) {
            ResourceAttributesBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type AffinityBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Affinity io_k8s_api_core_v1_affinity;
    public NodeAffinityBuilderCoreV1? nodeAffinityBuilder;

    public PodAffinityBuilderCoreV1? podAffinityBuilder;

    public PodAntiAffinityBuilderCoreV1? podAntiAffinityBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_affinity = new;
    }
    public function build() returns (io_k8s_api_core_v1_Affinity) {
        return self.io_k8s_api_core_v1_affinity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNodeAffinity() returns NodeAffinityBuilderCoreV1 {
        self.nodeAffinityBuilder = new NodeAffinityBuilderCoreV1(self);
        match (self.nodeAffinityBuilder) {
            NodeAffinityBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPodAffinity() returns PodAffinityBuilderCoreV1 {
        self.podAffinityBuilder = new PodAffinityBuilderCoreV1(self);
        match (self.podAffinityBuilder) {
            PodAffinityBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPodAntiAffinity() returns PodAntiAffinityBuilderCoreV1 {
        self.podAntiAffinityBuilder = new PodAntiAffinityBuilderCoreV1(self);
        match (self.podAntiAffinityBuilder) {
            PodAntiAffinityBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type FSGroupStrategyOptionsBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_FSGroupStrategyOptions io_k8s_api_extensions_v1beta1_fsgroupstrategyoptions;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_fsgroupstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_FSGroupStrategyOptions) {
        return self.io_k8s_api_extensions_v1beta1_fsgroupstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (FSGroupStrategyOptionsBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_fsgroupstrategyoptions.rule = _rule;
        return self;
    }
};

public type StorageClassBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_StorageClass io_k8s_api_storage_v1beta1_storageclass;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_storageclass = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_StorageClass) {
        return self.io_k8s_api_storage_v1beta1_storageclass;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllowVolumeExpansion(boolean _allowVolumeExpansion) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.allowVolumeExpansion = _allowVolumeExpansion;
        return self;
    }

    public function setApiVersion(string _apiVersion) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.kind = _kind;
        return self;
    }

    public function setMountOptions(string[] _mountOptions) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.mountOptions = _mountOptions;
        return self;
    }
    public function addMountOption(string _value) returns StorageClassBuilderStorageV1beta1 {
        self.io_k8s_api_storage_v1beta1_storageclass.mountOptions[lengthof self.io_k8s_api_storage_v1beta1_storageclass.
        mountOptions] = _value;
        return self;
    }

    public function setParameters(any _parameters) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.parameters = _parameters;
        return self;
    }

    public function setProvisioner(string _provisioner) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.provisioner = _provisioner;
        return self;
    }

    public function setReclaimPolicy(string _reclaimPolicy) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.reclaimPolicy = _reclaimPolicy;
        return self;
    }

    public function setVolumeBindingMode(string _volumeBindingMode) returns (StorageClassBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclass.volumeBindingMode = _volumeBindingMode;
        return self;
    }
};

public type PodTemplateSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodTemplateSpec io_k8s_api_core_v1_podtemplatespec;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodSpecBuilderCoreV1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podtemplatespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodTemplateSpec) {
        return self.io_k8s_api_core_v1_podtemplatespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PodSpecBuilderCoreV1 {
        self.specBuilder = new PodSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            PodSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type ReplicationControllerListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ReplicationControllerList io_k8s_api_core_v1_replicationcontrollerlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_replicationcontrollerlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ReplicationControllerList) {
        return self.io_k8s_api_core_v1_replicationcontrollerlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicationControllerListBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicationControllerListBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerlist.kind = _kind;
        return self;
    }
};

public type NodeAddressBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeAddress io_k8s_api_core_v1_nodeaddress;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeaddress = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeAddress) {
        return self.io_k8s_api_core_v1_nodeaddress;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAddress(string _address) returns (NodeAddressBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeaddress.address = _address;
        return self;
    }

    public function set_type(string __type) returns (NodeAddressBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeaddress._type = __type;
        return self;
    }
};

public type RollingUpdateDaemonSetBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_RollingUpdateDaemonSet io_k8s_api_apps_v1_rollingupdatedaemonset;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_rollingupdatedaemonset = new;
    }
    public function build() returns (io_k8s_api_apps_v1_RollingUpdateDaemonSet) {
        return self.io_k8s_api_apps_v1_rollingupdatedaemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (RollingUpdateDaemonSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_rollingupdatedaemonset.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type PodSecurityPolicyBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_PodSecurityPolicy io_k8s_api_extensions_v1beta1_podsecuritypolicy;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodSecurityPolicySpecBuilderExtensionsV1beta1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_podsecuritypolicy = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_PodSecurityPolicy) {
        return self.io_k8s_api_extensions_v1beta1_podsecuritypolicy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PodSecurityPolicySpecBuilderExtensionsV1beta1 {
        self.specBuilder = new PodSecurityPolicySpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            PodSecurityPolicySpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodSecurityPolicyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicy.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodSecurityPolicyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicy.kind = _kind;
        return self;
    }
};

public type RBDVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_RBDVolumeSource io_k8s_api_core_v1_rbdvolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_rbdvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_RBDVolumeSource) {
        return self.io_k8s_api_core_v1_rbdvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsType(string _fsType) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.fsType = _fsType;
        return self;
    }

    public function setImage(string _image) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.image = _image;
        return self;
    }

    public function setKeyring(string _keyring) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.keyring = _keyring;
        return self;
    }

    public function setMonitors(string[] _monitors) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.monitors = _monitors;
        return self;
    }
    public function addMonitor(string _value) returns RBDVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_rbdvolumesource.monitors[lengthof self.io_k8s_api_core_v1_rbdvolumesource.monitors] =
            _value;
        return self;
    }

    public function setPool(string _pool) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.pool = _pool;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setUser(string _user) returns (RBDVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_rbdvolumesource.user = _user;
        return self;
    }
};

public type StatefulSetListBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSetList io_k8s_api_apps_v1_statefulsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulsetlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSetList) {
        return self.io_k8s_api_apps_v1_statefulsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetListBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetlist.kind = _kind;
        return self;
    }
};

public type PodDNSConfigOptionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodDNSConfigOption io_k8s_api_core_v1_poddnsconfigoption;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_poddnsconfigoption = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodDNSConfigOption) {
        return self.io_k8s_api_core_v1_poddnsconfigoption;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (PodDNSConfigOptionBuilderCoreV1) {
        self.io_k8s_api_core_v1_poddnsconfigoption.name = _name;
        return self;
    }

    public function setValue(string _value) returns (PodDNSConfigOptionBuilderCoreV1) {
        self.io_k8s_api_core_v1_poddnsconfigoption.value = _value;
        return self;
    }
};

public type SelfSubjectAccessReviewSpecBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SelfSubjectAccessReviewSpec
    io_k8s_api_authorization_v1beta1_selfsubjectaccessreviewspec;
    public NonResourceAttributesBuilderAuthorizationV1beta1? nonResourceAttributesBuilder;

    public ResourceAttributesBuilderAuthorizationV1beta1? resourceAttributesBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_selfsubjectaccessreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SelfSubjectAccessReviewSpec) {
        return self.io_k8s_api_authorization_v1beta1_selfsubjectaccessreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNonResourceAttributes() returns NonResourceAttributesBuilderAuthorizationV1beta1 {
        self.nonResourceAttributesBuilder = new NonResourceAttributesBuilderAuthorizationV1beta1(self);
        match (self.nonResourceAttributesBuilder) {
            NonResourceAttributesBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceAttributes() returns ResourceAttributesBuilderAuthorizationV1beta1 {
        self.resourceAttributesBuilder = new ResourceAttributesBuilderAuthorizationV1beta1(self);
        match (self.resourceAttributesBuilder) {
            ResourceAttributesBuilderAuthorizationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type PortworxVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PortworxVolumeSource io_k8s_api_core_v1_portworxvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_portworxvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_PortworxVolumeSource) {
        return self.io_k8s_api_core_v1_portworxvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (PortworxVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_portworxvolumesource.fsType = _fsType;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (PortworxVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_portworxvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setVolumeID(string _volumeID) returns (PortworxVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_portworxvolumesource.volumeID = _volumeID;
        return self;
    }
};

public type CertificateSigningRequestListBuilderCertificatesV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestList
    io_k8s_api_certificates_v1beta1_certificatesigningrequestlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_certificates_v1beta1_certificatesigningrequestlist = new;
    }
    public function build() returns (io_k8s_api_certificates_v1beta1_CertificateSigningRequestList) {
        return self.io_k8s_api_certificates_v1beta1_certificatesigningrequestlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CertificateSigningRequestListBuilderCertificatesV1beta1)
    {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CertificateSigningRequestListBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestlist.kind = _kind;
        return self;
    }
};

public type NamespaceSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NamespaceSpec io_k8s_api_core_v1_namespacespec;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_namespacespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_NamespaceSpec) {
        return self.io_k8s_api_core_v1_namespacespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFinalizers(string[] _finalizers) returns (NamespaceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespacespec.finalizers = _finalizers;
        return self;
    }
    public function addFinalizer(string _value) returns NamespaceSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_namespacespec.finalizers[lengthof self.io_k8s_api_core_v1_namespacespec.finalizers] =
            _value;
        return self;
    }
};

public type DeploymentStrategyBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DeploymentStrategy io_k8s_api_apps_v1_deploymentstrategy;
    public RollingUpdateDeploymentBuilderAppsV1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deploymentstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DeploymentStrategy) {
        return self.io_k8s_api_apps_v1_deploymentstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDeploymentBuilderAppsV1 {
        self.rollingUpdateBuilder = new RollingUpdateDeploymentBuilderAppsV1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDeploymentBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DeploymentStrategyBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstrategy._type = __type;
        return self;
    }
};

public type FSGroupStrategyOptionsBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_FSGroupStrategyOptions io_k8s_api_policy_v1beta1_fsgroupstrategyoptions;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_fsgroupstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_FSGroupStrategyOptions) {
        return self.io_k8s_api_policy_v1beta1_fsgroupstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (FSGroupStrategyOptionsBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_fsgroupstrategyoptions.rule = _rule;
        return self;
    }
};

public type ClusterRoleListBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_ClusterRoleList io_k8s_api_rbac_v1_clusterrolelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_clusterrolelist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_ClusterRoleList) {
        return self.io_k8s_api_rbac_v1_clusterrolelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolelist.kind = _kind;
        return self;
    }
};

public type LocalVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LocalVolumeSource io_k8s_api_core_v1_localvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_localvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_LocalVolumeSource) {
        return self.io_k8s_api_core_v1_localvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPath(string _path) returns (LocalVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_localvolumesource.path = _path;
        return self;
    }
};

public type ClusterRoleBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_ClusterRole io_k8s_api_rbac_v1_clusterrole;
    public AggregationRuleBuilderRbacV1? aggregationRuleBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_clusterrole = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_ClusterRole) {
        return self.io_k8s_api_rbac_v1_clusterrole;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAggregationRule() returns AggregationRuleBuilderRbacV1 {
        self.aggregationRuleBuilder = new AggregationRuleBuilderRbacV1(self);
        match (self.aggregationRuleBuilder) {
            AggregationRuleBuilderRbacV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrole.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrole.kind = _kind;
        return self;
    }
};

public type StorageClassListBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_StorageClassList io_k8s_api_storage_v1beta1_storageclasslist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_storageclasslist = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_StorageClassList) {
        return self.io_k8s_api_storage_v1beta1_storageclasslist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StorageClassListBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclasslist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StorageClassListBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_storageclasslist.kind = _kind;
        return self;
    }
};

public type PersistentVolumeListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeList io_k8s_api_core_v1_persistentvolumelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeList) {
        return self.io_k8s_api_core_v1_persistentvolumelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PersistentVolumeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PersistentVolumeListBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumelist.kind = _kind;
        return self;
    }
};

public type ConfigMapEnvSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMapEnvSource io_k8s_api_core_v1_configmapenvsource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmapenvsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMapEnvSource) {
        return self.io_k8s_api_core_v1_configmapenvsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ConfigMapEnvSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapenvsource.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (ConfigMapEnvSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapenvsource.optional = _optional;
        return self;
    }
};

public type EnvFromSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EnvFromSource io_k8s_api_core_v1_envfromsource;
    public ConfigMapEnvSourceBuilderCoreV1? configMapRefBuilder;

    public SecretEnvSourceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_envfromsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_EnvFromSource) {
        return self.io_k8s_api_core_v1_envfromsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withConfigMapRef() returns ConfigMapEnvSourceBuilderCoreV1 {
        self.configMapRefBuilder = new ConfigMapEnvSourceBuilderCoreV1(self);
        match (self.configMapRefBuilder) {
            ConfigMapEnvSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecretRef() returns SecretEnvSourceBuilderCoreV1 {
        self.secretRefBuilder = new SecretEnvSourceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretEnvSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPrefix(string _prefix) returns (EnvFromSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_envfromsource.prefix = _prefix;
        return self;
    }
};

public type ComponentConditionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ComponentCondition io_k8s_api_core_v1_componentcondition;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_componentcondition = new;
    }
    public function build() returns (io_k8s_api_core_v1_ComponentCondition) {
        return self.io_k8s_api_core_v1_componentcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_error(string __error) returns (ComponentConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentcondition._error = __error;
        return self;
    }

    public function setMessage(string _message) returns (ComponentConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentcondition.message = _message;
        return self;
    }

    public function setStatus(string _status) returns (ComponentConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (ComponentConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentcondition._type = __type;
        return self;
    }
};

public type RoleRefBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_RoleRef io_k8s_api_rbac_v1_roleref;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_roleref = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_RoleRef) {
        return self.io_k8s_api_rbac_v1_roleref;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroup(string _apiGroup) returns (RoleRefBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_roleref.apiGroup = _apiGroup;
        return self;
    }

    public function setKind(string _kind) returns (RoleRefBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_roleref.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (RoleRefBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_roleref.name = _name;
        return self;
    }
};

public type ReplicationControllerConditionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ReplicationControllerCondition io_k8s_api_core_v1_replicationcontrollercondition;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_replicationcontrollercondition = new;
    }
    public function build() returns (io_k8s_api_core_v1_ReplicationControllerCondition) {
        return self.io_k8s_api_core_v1_replicationcontrollercondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                ReplicationControllerConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollercondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (ReplicationControllerConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollercondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (ReplicationControllerConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollercondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (ReplicationControllerConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollercondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (ReplicationControllerConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollercondition._type = __type;
        return self;
    }
};

public type SessionAffinityConfigBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SessionAffinityConfig io_k8s_api_core_v1_sessionaffinityconfig;
    public ClientIPConfigBuilderCoreV1? clientIPBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_sessionaffinityconfig = new;
    }
    public function build() returns (io_k8s_api_core_v1_SessionAffinityConfig) {
        return self.io_k8s_api_core_v1_sessionaffinityconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withClientIP() returns ClientIPConfigBuilderCoreV1 {
        self.clientIPBuilder = new ClientIPConfigBuilderCoreV1(self);
        match (self.clientIPBuilder) {
            ClientIPConfigBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type StatefulSetConditionBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSetCondition io_k8s_api_apps_v1beta2_statefulsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulsetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSetCondition) {
        return self.io_k8s_api_apps_v1beta2_statefulsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                StatefulSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (StatefulSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (StatefulSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (StatefulSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (StatefulSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetcondition._type = __type;
        return self;
    }
};

public type APIGroupBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIGroup io_k8s_apimachinery_pkg_apis_meta_v1_apigroup;
    public GroupVersionForDiscoveryBuilderMetaV1? preferredVersionBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_apigroup = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_APIGroup) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_apigroup;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPreferredVersion() returns GroupVersionForDiscoveryBuilderMetaV1 {
        self.preferredVersionBuilder = new GroupVersionForDiscoveryBuilderMetaV1(self);
        match (self.preferredVersionBuilder) {
            GroupVersionForDiscoveryBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (APIGroupBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apigroup.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIGroupBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apigroup.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (APIGroupBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_apigroup.name = _name;
        return self;
    }
};

public type ScaleStatusBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ScaleStatus io_k8s_api_extensions_v1beta1_scalestatus;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_scalestatus = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ScaleStatus) {
        return self.io_k8s_api_extensions_v1beta1_scalestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scalestatus.replicas = _replicas;
        return self;
    }

    public function setSelector(any _selector) returns (ScaleStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scalestatus.selector = _selector;
        return self;
    }

    public function setTargetSelector(string _targetSelector) returns (ScaleStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scalestatus.targetSelector = _targetSelector;
        return self;
    }
};

public type StatefulSetBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSet io_k8s_api_apps_v1beta1_statefulset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public StatefulSetSpecBuilderAppsV1beta1? specBuilder;

    public StatefulSetStatusBuilderAppsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulset = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSet) {
        return self.io_k8s_api_apps_v1beta1_statefulset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns StatefulSetSpecBuilderAppsV1beta1 {
        self.specBuilder = new StatefulSetSpecBuilderAppsV1beta1(self);
        match (self.specBuilder) {
            StatefulSetSpecBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns StatefulSetStatusBuilderAppsV1beta1 {
        self.statusBuilder = new StatefulSetStatusBuilderAppsV1beta1(self);
        match (self.statusBuilder) {
            StatefulSetStatusBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulset.kind = _kind;
        return self;
    }
};

public type JobSpecBuilderBatchV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1_JobSpec io_k8s_api_batch_v1_jobspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1_jobspec = new;
    }
    public function build() returns (io_k8s_api_batch_v1_JobSpec) {
        return self.io_k8s_api_batch_v1_jobspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setActiveDeadlineSeconds(int _activeDeadlineSeconds) returns (JobSpecBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobspec.activeDeadlineSeconds = _activeDeadlineSeconds;
        return self;
    }

    public function setBackoffLimit(int _backoffLimit) returns (JobSpecBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobspec.backoffLimit = _backoffLimit;
        return self;
    }

    public function setCompletions(int _completions) returns (JobSpecBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobspec.completions = _completions;
        return self;
    }

    public function setManualSelector(boolean _manualSelector) returns (JobSpecBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobspec.manualSelector = _manualSelector;
        return self;
    }

    public function setParallelism(int _parallelism) returns (JobSpecBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobspec.parallelism = _parallelism;
        return self;
    }
};

public type TokenReviewStatusBuilderAuthenticationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1_TokenReviewStatus io_k8s_api_authentication_v1_tokenreviewstatus;
    public UserInfoBuilderAuthenticationV1? userBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authentication_v1_tokenreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authentication_v1_TokenReviewStatus) {
        return self.io_k8s_api_authentication_v1_tokenreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withUser() returns UserInfoBuilderAuthenticationV1 {
        self.userBuilder = new UserInfoBuilderAuthenticationV1(self);
        match (self.userBuilder) {
            UserInfoBuilderAuthenticationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAuthenticated(boolean _authenticated) returns (TokenReviewStatusBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_tokenreviewstatus.authenticated = _authenticated;
        return self;
    }

    public function set_error(string __error) returns (TokenReviewStatusBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_tokenreviewstatus._error = __error;
        return self;
    }
};

public type CertificateSigningRequestSpecBuilderCertificatesV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestSpec
    io_k8s_api_certificates_v1beta1_certificatesigningrequestspec;
    public new(fluentBuilder) {
        io_k8s_api_certificates_v1beta1_certificatesigningrequestspec = new;
    }
    public function build() returns (io_k8s_api_certificates_v1beta1_CertificateSigningRequestSpec) {
        return self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setExtra(any _extra) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.extra = _extra;
        return self;
    }

    public function setGroups(string[] _groups) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.groups = _groups;
        return self;
    }
    public function addGroup(string _value) returns CertificateSigningRequestSpecBuilderCertificatesV1beta1 {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.groups[lengthof self.
        io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.groups] = _value;
        return self;
    }

    public function setRequest(string _request) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.request = _request;
        return self;
    }

    public function setUid(string _uid) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.uid = _uid;
        return self;
    }

    public function setUsages(string[] _usages) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.usages = _usages;
        return self;
    }
    public function addUsage(string _value) returns CertificateSigningRequestSpecBuilderCertificatesV1beta1 {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.usages[lengthof self.
        io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.usages] = _value;
        return self;
    }

    public function setUsername(string _username) returns (CertificateSigningRequestSpecBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequestspec.username = _username;
        return self;
    }
};

public type NonResourceRuleBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_NonResourceRule io_k8s_api_authorization_v1beta1_nonresourcerule;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_nonresourcerule = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_NonResourceRule) {
        return self.io_k8s_api_authorization_v1beta1_nonresourcerule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNonResourceURLs(string[] _nonResourceURLs) returns (NonResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_nonresourcerule.nonResourceURLs = _nonResourceURLs;
        return self;
    }
    public function addNonResourceURL(string _value) returns NonResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_nonresourcerule.nonResourceURLs[lengthof self.
        io_k8s_api_authorization_v1beta1_nonresourcerule.nonResourceURLs] = _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (NonResourceRuleBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_nonresourcerule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns NonResourceRuleBuilderAuthorizationV1beta1 {
        self.io_k8s_api_authorization_v1beta1_nonresourcerule.verbs[lengthof self.
        io_k8s_api_authorization_v1beta1_nonresourcerule.verbs] = _value;
        return self;
    }
};

public type ContainerStateRunningBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerStateRunning io_k8s_api_core_v1_containerstaterunning;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerstaterunning = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerStateRunning) {
        return self.io_k8s_api_core_v1_containerstaterunning;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setStartedAt(time:Time? _startedAt) returns (ContainerStateRunningBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstaterunning.startedAt = _startedAt;
        return self;
    }
};

public type NetworkPolicySpecBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicySpec io_k8s_api_networking_v1_networkpolicyspec;
    public LabelSelectorBuilderMetaV1? podSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicyspec = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicySpec) {
        return self.io_k8s_api_networking_v1_networkpolicyspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPodSelector() returns LabelSelectorBuilderMetaV1 {
        self.podSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.podSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPolicyTypes(string[] _policyTypes) returns (NetworkPolicySpecBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicyspec.policyTypes = _policyTypes;
        return self;
    }
    public function addPolicyType(string _value) returns NetworkPolicySpecBuilderNetworkingV1 {
        self.io_k8s_api_networking_v1_networkpolicyspec.policyTypes[lengthof self.
        io_k8s_api_networking_v1_networkpolicyspec.policyTypes] = _value;
        return self;
    }
};

public type DeploymentStatusBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DeploymentStatus io_k8s_api_apps_v1_deploymentstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_deploymentstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DeploymentStatus) {
        return self.io_k8s_api_apps_v1_deploymentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setCollisionCount(int _collisionCount) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.replicas = _replicas;
        return self;
    }

    public function setUnavailableReplicas(int _unavailableReplicas) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.unavailableReplicas = _unavailableReplicas;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (DeploymentStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_deploymentstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type PhotonPersistentDiskVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PhotonPersistentDiskVolumeSource io_k8s_api_core_v1_photonpersistentdiskvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_photonpersistentdiskvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_PhotonPersistentDiskVolumeSource) {
        return self.io_k8s_api_core_v1_photonpersistentdiskvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (PhotonPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_photonpersistentdiskvolumesource.fsType = _fsType;
        return self;
    }

    public function setPdID(string _pdID) returns (PhotonPersistentDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_photonpersistentdiskvolumesource.pdID = _pdID;
        return self;
    }
};

public type TokenReviewBuilderAuthenticationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1_TokenReview io_k8s_api_authentication_v1_tokenreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public TokenReviewSpecBuilderAuthenticationV1? specBuilder;

    public TokenReviewStatusBuilderAuthenticationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authentication_v1_tokenreview = new;
    }
    public function build() returns (io_k8s_api_authentication_v1_TokenReview) {
        return self.io_k8s_api_authentication_v1_tokenreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns TokenReviewSpecBuilderAuthenticationV1 {
        self.specBuilder = new TokenReviewSpecBuilderAuthenticationV1(self);
        match (self.specBuilder) {
            TokenReviewSpecBuilderAuthenticationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns TokenReviewStatusBuilderAuthenticationV1 {
        self.statusBuilder = new TokenReviewStatusBuilderAuthenticationV1(self);
        match (self.statusBuilder) {
            TokenReviewStatusBuilderAuthenticationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (TokenReviewBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_tokenreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (TokenReviewBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_tokenreview.kind = _kind;
        return self;
    }
};

public type SubjectAccessReviewSpecBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SubjectAccessReviewSpec io_k8s_api_authorization_v1_subjectaccessreviewspec;
    public NonResourceAttributesBuilderAuthorizationV1? nonResourceAttributesBuilder;

    public ResourceAttributesBuilderAuthorizationV1? resourceAttributesBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_subjectaccessreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SubjectAccessReviewSpec) {
        return self.io_k8s_api_authorization_v1_subjectaccessreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withNonResourceAttributes() returns NonResourceAttributesBuilderAuthorizationV1 {
        self.nonResourceAttributesBuilder = new NonResourceAttributesBuilderAuthorizationV1(self);
        match (self.nonResourceAttributesBuilder) {
            NonResourceAttributesBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceAttributes() returns ResourceAttributesBuilderAuthorizationV1 {
        self.resourceAttributesBuilder = new ResourceAttributesBuilderAuthorizationV1(self);
        match (self.resourceAttributesBuilder) {
            ResourceAttributesBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setExtra(any _extra) returns (SubjectAccessReviewSpecBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewspec.extra = _extra;
        return self;
    }

    public function setGroups(string[] _groups) returns (SubjectAccessReviewSpecBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewspec.groups = _groups;
        return self;
    }
    public function addGroup(string _value) returns SubjectAccessReviewSpecBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_subjectaccessreviewspec.groups[lengthof self.
        io_k8s_api_authorization_v1_subjectaccessreviewspec.groups] = _value;
        return self;
    }

    public function setUid(string _uid) returns (SubjectAccessReviewSpecBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewspec.uid = _uid;
        return self;
    }

    public function setUser(string _user) returns (SubjectAccessReviewSpecBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewspec.user = _user;
        return self;
    }
};

public type PersistentVolumeClaimBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaim io_k8s_api_core_v1_persistentvolumeclaim;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PersistentVolumeClaimSpecBuilderCoreV1? specBuilder;

    public PersistentVolumeClaimStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaim = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaim) {
        return self.io_k8s_api_core_v1_persistentvolumeclaim;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PersistentVolumeClaimSpecBuilderCoreV1 {
        self.specBuilder = new PersistentVolumeClaimSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            PersistentVolumeClaimSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns PersistentVolumeClaimStatusBuilderCoreV1 {
        self.statusBuilder = new PersistentVolumeClaimStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            PersistentVolumeClaimStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PersistentVolumeClaimBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaim.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PersistentVolumeClaimBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaim.kind = _kind;
        return self;
    }
};

public type ServiceAccountListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServiceAccountList io_k8s_api_core_v1_serviceaccountlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_serviceaccountlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServiceAccountList) {
        return self.io_k8s_api_core_v1_serviceaccountlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ServiceAccountListBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceaccountlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ServiceAccountListBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceaccountlist.kind = _kind;
        return self;
    }
};

public type SecretBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Secret io_k8s_api_core_v1_secret;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_secret = new;
    }
    public function build() returns (io_k8s_api_core_v1_Secret) {
        return self.io_k8s_api_core_v1_secret;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SecretBuilderCoreV1) {
        self.io_k8s_api_core_v1_secret.apiVersion = _apiVersion;
        return self;
    }

    public function setData(any _data) returns (SecretBuilderCoreV1) {
        self.io_k8s_api_core_v1_secret.data = _data;
        return self;
    }

    public function setKind(string _kind) returns (SecretBuilderCoreV1) {
        self.io_k8s_api_core_v1_secret.kind = _kind;
        return self;
    }

    public function setStringData(any _stringData) returns (SecretBuilderCoreV1) {
        self.io_k8s_api_core_v1_secret.stringData = _stringData;
        return self;
    }

    public function set_type(string __type) returns (SecretBuilderCoreV1) {
        self.io_k8s_api_core_v1_secret._type = __type;
        return self;
    }
};

public type DaemonSetBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSet io_k8s_api_extensions_v1beta1_daemonset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DaemonSetSpecBuilderExtensionsV1beta1? specBuilder;

    public DaemonSetStatusBuilderExtensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonset = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSet) {
        return self.io_k8s_api_extensions_v1beta1_daemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DaemonSetSpecBuilderExtensionsV1beta1 {
        self.specBuilder = new DaemonSetSpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            DaemonSetSpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DaemonSetStatusBuilderExtensionsV1beta1 {
        self.statusBuilder = new DaemonSetStatusBuilderExtensionsV1beta1(self);
        match (self.statusBuilder) {
            DaemonSetStatusBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonset.kind = _kind;
        return self;
    }
};

public type FlockerVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_FlockerVolumeSource io_k8s_api_core_v1_flockervolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_flockervolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_FlockerVolumeSource) {
        return self.io_k8s_api_core_v1_flockervolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDatasetName(string _datasetName) returns (FlockerVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flockervolumesource.datasetName = _datasetName;
        return self;
    }

    public function setDatasetUUID(string _datasetUUID) returns (FlockerVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flockervolumesource.datasetUUID = _datasetUUID;
        return self;
    }
};

public type PersistentVolumeClaimListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaimList io_k8s_api_core_v1_persistentvolumeclaimlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaimlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaimList) {
        return self.io_k8s_api_core_v1_persistentvolumeclaimlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PersistentVolumeClaimListBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PersistentVolumeClaimListBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimlist.kind = _kind;
        return self;
    }
};

public type IngressRuleBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressRule io_k8s_api_extensions_v1beta1_ingressrule;
    public HTTPIngressRuleValueBuilderExtensionsV1beta1? httpBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingressrule = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressRule) {
        return self.io_k8s_api_extensions_v1beta1_ingressrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withHttp() returns HTTPIngressRuleValueBuilderExtensionsV1beta1 {
        self.httpBuilder = new HTTPIngressRuleValueBuilderExtensionsV1beta1(self);
        match (self.httpBuilder) {
            HTTPIngressRuleValueBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setHost(string _host) returns (IngressRuleBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingressrule.host = _host;
        return self;
    }
};

public type NonResourceRuleBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_NonResourceRule io_k8s_api_authorization_v1_nonresourcerule;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_nonresourcerule = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_NonResourceRule) {
        return self.io_k8s_api_authorization_v1_nonresourcerule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNonResourceURLs(string[] _nonResourceURLs) returns (NonResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_nonresourcerule.nonResourceURLs = _nonResourceURLs;
        return self;
    }
    public function addNonResourceURL(string _value) returns NonResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_nonresourcerule.nonResourceURLs[lengthof self.
        io_k8s_api_authorization_v1_nonresourcerule.nonResourceURLs] = _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (NonResourceRuleBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_nonresourcerule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns NonResourceRuleBuilderAuthorizationV1 {
        self.io_k8s_api_authorization_v1_nonresourcerule.verbs[lengthof self.io_k8s_api_authorization_v1_nonresourcerule
        .verbs] = _value;
        return self;
    }
};

public type ComponentStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ComponentStatus io_k8s_api_core_v1_componentstatus;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_componentstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_ComponentStatus) {
        return self.io_k8s_api_core_v1_componentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ComponentStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentstatus.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ComponentStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_componentstatus.kind = _kind;
        return self;
    }
};

public type CertificateSigningRequestStatusBuilderCertificatesV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestStatus
    io_k8s_api_certificates_v1beta1_certificatesigningrequeststatus;
    public new(fluentBuilder) {
        io_k8s_api_certificates_v1beta1_certificatesigningrequeststatus = new;
    }
    public function build() returns (io_k8s_api_certificates_v1beta1_CertificateSigningRequestStatus) {
        return self.io_k8s_api_certificates_v1beta1_certificatesigningrequeststatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCertificate(string _certificate) returns (
                CertificateSigningRequestStatusBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequeststatus.certificate = _certificate;
        return self;
    }
};

public type SecretVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretVolumeSource io_k8s_api_core_v1_secretvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretVolumeSource) {
        return self.io_k8s_api_core_v1_secretvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDefaultMode(int _defaultMode) returns (SecretVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretvolumesource.defaultMode = _defaultMode;
        return self;
    }

    public function setOptional(boolean _optional) returns (SecretVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretvolumesource.optional = _optional;
        return self;
    }

    public function setSecretName(string _secretName) returns (SecretVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretvolumesource.secretName = _secretName;
        return self;
    }
};

public type IngressTLSBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressTLS io_k8s_api_extensions_v1beta1_ingresstls;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingresstls = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressTLS) {
        return self.io_k8s_api_extensions_v1beta1_ingresstls;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHosts(string[] _hosts) returns (IngressTLSBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingresstls.hosts = _hosts;
        return self;
    }
    public function addHost(string _value) returns IngressTLSBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_ingresstls.hosts[lengthof self.io_k8s_api_extensions_v1beta1_ingresstls.hosts
        ] = _value;
        return self;
    }

    public function setSecretName(string _secretName) returns (IngressTLSBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingresstls.secretName = _secretName;
        return self;
    }
};

public type CustomResourceDefinitionListBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionList
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionlist = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionList) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CustomResourceDefinitionListBuilderApiextensionsV1beta1)
    {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionlist.apiVersion =
            _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CustomResourceDefinitionListBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionlist.kind = _kind;
        return self;
    }
};

public type GitRepoVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_GitRepoVolumeSource io_k8s_api_core_v1_gitrepovolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_gitrepovolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_GitRepoVolumeSource) {
        return self.io_k8s_api_core_v1_gitrepovolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDirectory(string _directory) returns (GitRepoVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gitrepovolumesource.directory = _directory;
        return self;
    }

    public function setRepository(string _repository) returns (GitRepoVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gitrepovolumesource.repository = _repository;
        return self;
    }

    public function setRevision(string _revision) returns (GitRepoVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_gitrepovolumesource.revision = _revision;
        return self;
    }
};

public type TolerationBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Toleration io_k8s_api_core_v1_toleration;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_toleration = new;
    }
    public function build() returns (io_k8s_api_core_v1_Toleration) {
        return self.io_k8s_api_core_v1_toleration;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setEffect(string _effect) returns (TolerationBuilderCoreV1) {
        self.io_k8s_api_core_v1_toleration.effect = _effect;
        return self;
    }

    public function setKey(string _key) returns (TolerationBuilderCoreV1) {
        self.io_k8s_api_core_v1_toleration.key = _key;
        return self;
    }

    public function setOperator(string _operator) returns (TolerationBuilderCoreV1) {
        self.io_k8s_api_core_v1_toleration.operator = _operator;
        return self;
    }

    public function setTolerationSeconds(int _tolerationSeconds) returns (TolerationBuilderCoreV1) {
        self.io_k8s_api_core_v1_toleration.tolerationSeconds = _tolerationSeconds;
        return self;
    }

    public function setValue(string _value) returns (TolerationBuilderCoreV1) {
        self.io_k8s_api_core_v1_toleration.value = _value;
        return self;
    }
};

public type LifecycleBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Lifecycle io_k8s_api_core_v1_lifecycle;
    public HandlerBuilderCoreV1? postStartBuilder;

    public HandlerBuilderCoreV1? preStopBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_lifecycle = new;
    }
    public function build() returns (io_k8s_api_core_v1_Lifecycle) {
        return self.io_k8s_api_core_v1_lifecycle;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPostStart() returns HandlerBuilderCoreV1 {
        self.postStartBuilder = new HandlerBuilderCoreV1(self);
        match (self.postStartBuilder) {
            HandlerBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPreStop() returns HandlerBuilderCoreV1 {
        self.preStopBuilder = new HandlerBuilderCoreV1(self);
        match (self.preStopBuilder) {
            HandlerBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type StatusCauseBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_StatusCause io_k8s_apimachinery_pkg_apis_meta_v1_statuscause;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_statuscause = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_StatusCause) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_statuscause;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setField(string _field) returns (StatusCauseBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statuscause.field = _field;
        return self;
    }

    public function setMessage(string _message) returns (StatusCauseBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statuscause.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (StatusCauseBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_statuscause.reason = _reason;
        return self;
    }
};

public type PodDNSConfigBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodDNSConfig io_k8s_api_core_v1_poddnsconfig;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_poddnsconfig = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodDNSConfig) {
        return self.io_k8s_api_core_v1_poddnsconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNameservers(string[] _nameservers) returns (PodDNSConfigBuilderCoreV1) {
        self.io_k8s_api_core_v1_poddnsconfig.nameservers = _nameservers;
        return self;
    }
    public function addNameserver(string _value) returns PodDNSConfigBuilderCoreV1 {
        self.io_k8s_api_core_v1_poddnsconfig.nameservers[lengthof self.io_k8s_api_core_v1_poddnsconfig.nameservers] =
            _value;
        return self;
    }

    public function setSearches(string[] _searches) returns (PodDNSConfigBuilderCoreV1) {
        self.io_k8s_api_core_v1_poddnsconfig.searches = _searches;
        return self;
    }
    public function addSearche(string _value) returns PodDNSConfigBuilderCoreV1 {
        self.io_k8s_api_core_v1_poddnsconfig.searches[lengthof self.io_k8s_api_core_v1_poddnsconfig.searches] = _value;
        return self;
    }
};

public type HostPortRangeBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_HostPortRange io_k8s_api_extensions_v1beta1_hostportrange;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_hostportrange = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_HostPortRange) {
        return self.io_k8s_api_extensions_v1beta1_hostportrange;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMax(int _max) returns (HostPortRangeBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_hostportrange.max = _max;
        return self;
    }

    public function setMin(int _min) returns (HostPortRangeBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_hostportrange.min = _min;
        return self;
    }
};

public type JobConditionBuilderBatchV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1_JobCondition io_k8s_api_batch_v1_jobcondition;
    public new(fluentBuilder) {
        io_k8s_api_batch_v1_jobcondition = new;
    }
    public function build() returns (io_k8s_api_batch_v1_JobCondition) {
        return self.io_k8s_api_batch_v1_jobcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastProbeTime(time:Time? _lastProbeTime) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition.lastProbeTime = _lastProbeTime;
        return self;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (JobConditionBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobcondition._type = __type;
        return self;
    }
};

public type ExecActionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ExecAction io_k8s_api_core_v1_execaction;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_execaction = new;
    }
    public function build() returns (io_k8s_api_core_v1_ExecAction) {
        return self.io_k8s_api_core_v1_execaction;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCommand(string[] _command) returns (ExecActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_execaction.command = _command;
        return self;
    }
    public function addComman(string _value) returns ExecActionBuilderCoreV1 {
        self.io_k8s_api_core_v1_execaction.command[lengthof self.io_k8s_api_core_v1_execaction.command] = _value;
        return self;
    }
};

public type ReplicaSetBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ReplicaSet io_k8s_api_apps_v1_replicaset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ReplicaSetSpecBuilderAppsV1? specBuilder;

    public ReplicaSetStatusBuilderAppsV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_replicaset = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ReplicaSet) {
        return self.io_k8s_api_apps_v1_replicaset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ReplicaSetSpecBuilderAppsV1 {
        self.specBuilder = new ReplicaSetSpecBuilderAppsV1(self);
        match (self.specBuilder) {
            ReplicaSetSpecBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ReplicaSetStatusBuilderAppsV1 {
        self.statusBuilder = new ReplicaSetStatusBuilderAppsV1(self);
        match (self.statusBuilder) {
            ReplicaSetStatusBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicaset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicaset.kind = _kind;
        return self;
    }
};

public type AggregationRuleBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_AggregationRule io_k8s_api_rbac_v1_aggregationrule;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_aggregationrule = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_AggregationRule) {
        return self.io_k8s_api_rbac_v1_aggregationrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type PolicyRuleBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_PolicyRule io_k8s_api_rbac_v1beta1_policyrule;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_policyrule = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_PolicyRule) {
        return self.io_k8s_api_rbac_v1beta1_policyrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroups(string[] _apiGroups) returns (PolicyRuleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_policyrule.apiGroups = _apiGroups;
        return self;
    }
    public function addApiGroup(string _value) returns PolicyRuleBuilderRbacV1beta1 {
        self.io_k8s_api_rbac_v1beta1_policyrule.apiGroups[lengthof self.io_k8s_api_rbac_v1beta1_policyrule.apiGroups] =
            _value;
        return self;
    }

    public function setNonResourceURLs(string[] _nonResourceURLs) returns (PolicyRuleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_policyrule.nonResourceURLs = _nonResourceURLs;
        return self;
    }
    public function addNonResourceURL(string _value) returns PolicyRuleBuilderRbacV1beta1 {
        self.io_k8s_api_rbac_v1beta1_policyrule.nonResourceURLs[lengthof self.io_k8s_api_rbac_v1beta1_policyrule.
        nonResourceURLs] = _value;
        return self;
    }

    public function setResourceNames(string[] _resourceNames) returns (PolicyRuleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_policyrule.resourceNames = _resourceNames;
        return self;
    }
    public function addResourceName(string _value) returns PolicyRuleBuilderRbacV1beta1 {
        self.io_k8s_api_rbac_v1beta1_policyrule.resourceNames[lengthof self.io_k8s_api_rbac_v1beta1_policyrule.
        resourceNames] = _value;
        return self;
    }

    public function setResources(string[] _resources) returns (PolicyRuleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_policyrule.resources = _resources;
        return self;
    }
    public function addResource(string _value) returns PolicyRuleBuilderRbacV1beta1 {
        self.io_k8s_api_rbac_v1beta1_policyrule.resources[lengthof self.io_k8s_api_rbac_v1beta1_policyrule.resources] =
            _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (PolicyRuleBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_policyrule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns PolicyRuleBuilderRbacV1beta1 {
        self.io_k8s_api_rbac_v1beta1_policyrule.verbs[lengthof self.io_k8s_api_rbac_v1beta1_policyrule.verbs] = _value;
        return self;
    }
};

public type IDRangeBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_IDRange io_k8s_api_policy_v1beta1_idrange;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_idrange = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_IDRange) {
        return self.io_k8s_api_policy_v1beta1_idrange;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMax(int _max) returns (IDRangeBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_idrange.max = _max;
        return self;
    }

    public function setMin(int _min) returns (IDRangeBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_idrange.min = _min;
        return self;
    }
};

public type DaemonSetSpecBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSetSpec io_k8s_api_apps_v1beta2_daemonsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public DaemonSetUpdateStrategyBuilderAppsV1beta2? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonsetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSetSpec) {
        return self.io_k8s_api_apps_v1beta2_daemonsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns DaemonSetUpdateStrategyBuilderAppsV1beta2 {
        self.updateStrategyBuilder = new DaemonSetUpdateStrategyBuilderAppsV1beta2(self);
        match (self.updateStrategyBuilder) {
            DaemonSetUpdateStrategyBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DaemonSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DaemonSetSpecBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type DeploymentListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentList io_k8s_api_extensions_v1beta1_deploymentlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentlist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentList) {
        return self.io_k8s_api_extensions_v1beta1_deploymentlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentlist.kind = _kind;
        return self;
    }
};

public type SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_SupplementalGroupsStrategyOptions
    io_k8s_api_extensions_v1beta1_supplementalgroupsstrategyoptions;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_supplementalgroupsstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_SupplementalGroupsStrategyOptions) {
        return self.io_k8s_api_extensions_v1beta1_supplementalgroupsstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_supplementalgroupsstrategyoptions.rule = _rule;
        return self;
    }
};

public type DeploymentBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_Deployment io_k8s_api_extensions_v1beta1_deployment;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public DeploymentSpecBuilderExtensionsV1beta1? specBuilder;

    public DeploymentStatusBuilderExtensionsV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deployment = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_Deployment) {
        return self.io_k8s_api_extensions_v1beta1_deployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns DeploymentSpecBuilderExtensionsV1beta1 {
        self.specBuilder = new DeploymentSpecBuilderExtensionsV1beta1(self);
        match (self.specBuilder) {
            DeploymentSpecBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns DeploymentStatusBuilderExtensionsV1beta1 {
        self.statusBuilder = new DeploymentStatusBuilderExtensionsV1beta1(self);
        match (self.statusBuilder) {
            DeploymentStatusBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deployment.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deployment.kind = _kind;
        return self;
    }
};

public type DaemonSetConditionBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DaemonSetCondition io_k8s_api_apps_v1beta2_daemonsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_daemonsetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DaemonSetCondition) {
        return self.io_k8s_api_apps_v1beta2_daemonsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (DaemonSetConditionBuilderAppsV1beta2)
    {
        self.io_k8s_api_apps_v1beta2_daemonsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (DaemonSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DaemonSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DaemonSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DaemonSetConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_daemonsetcondition._type = __type;
        return self;
    }
};

public type SecretListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretList io_k8s_api_core_v1_secretlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretList) {
        return self.io_k8s_api_core_v1_secretlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SecretListBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SecretListBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretlist.kind = _kind;
        return self;
    }
};

public type StatefulSetStatusBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSetStatus io_k8s_api_apps_v1beta1_statefulsetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulsetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSetStatus) {
        return self.io_k8s_api_apps_v1beta1_statefulsetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCollisionCount(int _collisionCount) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setCurrentReplicas(int _currentReplicas) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.currentReplicas = _currentReplicas;
        return self;
    }

    public function setCurrentRevision(string _currentRevision) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.currentRevision = _currentRevision;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.replicas = _replicas;
        return self;
    }

    public function setUpdateRevision(string _updateRevision) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.updateRevision = _updateRevision;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (StatefulSetStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type HTTPHeaderBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_HTTPHeader io_k8s_api_core_v1_httpheader;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_httpheader = new;
    }
    public function build() returns (io_k8s_api_core_v1_HTTPHeader) {
        return self.io_k8s_api_core_v1_httpheader;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (HTTPHeaderBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpheader.name = _name;
        return self;
    }

    public function setValue(string _value) returns (HTTPHeaderBuilderCoreV1) {
        self.io_k8s_api_core_v1_httpheader.value = _value;
        return self;
    }
};

public type ReplicaSetBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_ReplicaSet io_k8s_api_apps_v1beta2_replicaset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ReplicaSetSpecBuilderAppsV1beta2? specBuilder;

    public ReplicaSetStatusBuilderAppsV1beta2? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_replicaset = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_ReplicaSet) {
        return self.io_k8s_api_apps_v1beta2_replicaset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ReplicaSetSpecBuilderAppsV1beta2 {
        self.specBuilder = new ReplicaSetSpecBuilderAppsV1beta2(self);
        match (self.specBuilder) {
            ReplicaSetSpecBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ReplicaSetStatusBuilderAppsV1beta2 {
        self.statusBuilder = new ReplicaSetStatusBuilderAppsV1beta2(self);
        match (self.statusBuilder) {
            ReplicaSetStatusBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicaset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_replicaset.kind = _kind;
        return self;
    }
};

public type PodSecurityContextBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodSecurityContext io_k8s_api_core_v1_podsecuritycontext;
    public SELinuxOptionsBuilderCoreV1? seLinuxOptionsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podsecuritycontext = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodSecurityContext) {
        return self.io_k8s_api_core_v1_podsecuritycontext;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSeLinuxOptions() returns SELinuxOptionsBuilderCoreV1 {
        self.seLinuxOptionsBuilder = new SELinuxOptionsBuilderCoreV1(self);
        match (self.seLinuxOptionsBuilder) {
            SELinuxOptionsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFsGroup(int _fsGroup) returns (PodSecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_podsecuritycontext.fsGroup = _fsGroup;
        return self;
    }

    public function setRunAsGroup(int _runAsGroup) returns (PodSecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_podsecuritycontext.runAsGroup = _runAsGroup;
        return self;
    }

    public function setRunAsNonRoot(boolean _runAsNonRoot) returns (PodSecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_podsecuritycontext.runAsNonRoot = _runAsNonRoot;
        return self;
    }

    public function setRunAsUser(int _runAsUser) returns (PodSecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_podsecuritycontext.runAsUser = _runAsUser;
        return self;
    }

    public function setSupplementalGroups(int[] _supplementalGroups) returns (PodSecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_podsecuritycontext.supplementalGroups = _supplementalGroups;
        return self;
    }
    public function addSupplementalGroup(int _value) returns PodSecurityContextBuilderCoreV1 {
        self.io_k8s_api_core_v1_podsecuritycontext.supplementalGroups[lengthof self.
        io_k8s_api_core_v1_podsecuritycontext.supplementalGroups] = _value;
        return self;
    }
};

public type IngressSpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressSpec io_k8s_api_extensions_v1beta1_ingressspec;
    public IngressBackendBuilderExtensionsV1beta1? backendBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingressspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressSpec) {
        return self.io_k8s_api_extensions_v1beta1_ingressspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withBackend() returns IngressBackendBuilderExtensionsV1beta1 {
        self.backendBuilder = new IngressBackendBuilderExtensionsV1beta1(self);
        match (self.backendBuilder) {
            IngressBackendBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type CronJobListBuilderBatchV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1beta1_CronJobList io_k8s_api_batch_v1beta1_cronjoblist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1beta1_cronjoblist = new;
    }
    public function build() returns (io_k8s_api_batch_v1beta1_CronJobList) {
        return self.io_k8s_api_batch_v1beta1_cronjoblist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CronJobListBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjoblist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CronJobListBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjoblist.kind = _kind;
        return self;
    }
};

public type ServiceReferenceBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_ServiceReference
    io_k8s_api_admissionregistration_v1beta1_servicereference;
    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_servicereference = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_ServiceReference) {
        return self.io_k8s_api_admissionregistration_v1beta1_servicereference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ServiceReferenceBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_servicereference.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ServiceReferenceBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_servicereference.namespace = _namespace;
        return self;
    }

    public function setPath(string _path) returns (ServiceReferenceBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_servicereference.path = _path;
        return self;
    }
};

public type RoleListBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_RoleList io_k8s_api_rbac_v1beta1_rolelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_rolelist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_RoleList) {
        return self.io_k8s_api_rbac_v1beta1_rolelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolelist.kind = _kind;
        return self;
    }
};

public type RollingUpdateDeploymentBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_RollingUpdateDeployment io_k8s_api_apps_v1beta1_rollingupdatedeployment;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_rollingupdatedeployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_RollingUpdateDeployment) {
        return self.io_k8s_api_apps_v1beta1_rollingupdatedeployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxSurge(int|string _maxSurge) returns (RollingUpdateDeploymentBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_rollingupdatedeployment.maxSurge = _maxSurge;
        return self;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (RollingUpdateDeploymentBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_rollingupdatedeployment.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type TokenReviewSpecBuilderAuthenticationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1beta1_TokenReviewSpec io_k8s_api_authentication_v1beta1_tokenreviewspec;
    public new(fluentBuilder) {
        io_k8s_api_authentication_v1beta1_tokenreviewspec = new;
    }
    public function build() returns (io_k8s_api_authentication_v1beta1_TokenReviewSpec) {
        return self.io_k8s_api_authentication_v1beta1_tokenreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setToken(string _token) returns (TokenReviewSpecBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_tokenreviewspec.token = _token;
        return self;
    }
};

public type IDRangeBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IDRange io_k8s_api_extensions_v1beta1_idrange;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_idrange = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IDRange) {
        return self.io_k8s_api_extensions_v1beta1_idrange;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMax(int _max) returns (IDRangeBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_idrange.max = _max;
        return self;
    }

    public function setMin(int _min) returns (IDRangeBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_idrange.min = _min;
        return self;
    }
};

public type ServiceAccountBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServiceAccount io_k8s_api_core_v1_serviceaccount;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_serviceaccount = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServiceAccount) {
        return self.io_k8s_api_core_v1_serviceaccount;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ServiceAccountBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceaccount.apiVersion = _apiVersion;
        return self;
    }

    public function setAutomountServiceAccountToken(boolean _automountServiceAccountToken) returns (
                ServiceAccountBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceaccount.automountServiceAccountToken = _automountServiceAccountToken;
        return self;
    }

    public function setKind(string _kind) returns (ServiceAccountBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceaccount.kind = _kind;
        return self;
    }
};

public type HTTPIngressRuleValueBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_HTTPIngressRuleValue io_k8s_api_extensions_v1beta1_httpingressrulevalue;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_httpingressrulevalue = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_HTTPIngressRuleValue) {
        return self.io_k8s_api_extensions_v1beta1_httpingressrulevalue;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type ServiceReferenceBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_ServiceReference
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_servicereference;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_servicereference = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_ServiceReference) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_servicereference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ServiceReferenceBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_servicereference.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ServiceReferenceBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_servicereference.namespace = _namespace;
        return self;
    }
};

public type ISCSIVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ISCSIVolumeSource io_k8s_api_core_v1_iscsivolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_iscsivolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ISCSIVolumeSource) {
        return self.io_k8s_api_core_v1_iscsivolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setChapAuthDiscovery(boolean _chapAuthDiscovery) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.chapAuthDiscovery = _chapAuthDiscovery;
        return self;
    }

    public function setChapAuthSession(boolean _chapAuthSession) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.chapAuthSession = _chapAuthSession;
        return self;
    }

    public function setFsType(string _fsType) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.fsType = _fsType;
        return self;
    }

    public function setInitiatorName(string _initiatorName) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.initiatorName = _initiatorName;
        return self;
    }

    public function setIqn(string _iqn) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.iqn = _iqn;
        return self;
    }

    public function setIscsiInterface(string _iscsiInterface) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.iscsiInterface = _iscsiInterface;
        return self;
    }

    public function setLun(int _lun) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.lun = _lun;
        return self;
    }

    public function setPortals(string[] _portals) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.portals = _portals;
        return self;
    }
    public function addPortal(string _value) returns ISCSIVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_iscsivolumesource.portals[lengthof self.io_k8s_api_core_v1_iscsivolumesource.portals] =
            _value;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.readOnly = _readOnly;
        return self;
    }

    public function setTargetPortal(string _targetPortal) returns (ISCSIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_iscsivolumesource.targetPortal = _targetPortal;
        return self;
    }
};

public type CustomResourceValidationBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceValidation
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcevalidation;
    public JSONSchemaPropsBuilderApiextensionsV1beta1? openAPIV3SchemaBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcevalidation = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceValidation) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcevalidation;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withOpenAPIV3Schema() returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.openAPIV3SchemaBuilder = new JSONSchemaPropsBuilderApiextensionsV1beta1(self);
        match (self.openAPIV3SchemaBuilder) {
            JSONSchemaPropsBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type NetworkPolicyPortBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicyPort io_k8s_api_networking_v1_networkpolicyport;
    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicyport = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicyPort) {
        return self.io_k8s_api_networking_v1_networkpolicyport;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPort(int|string _port) returns (NetworkPolicyPortBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicyport.port = _port;
        return self;
    }

    public function setProtocol(string _protocol) returns (NetworkPolicyPortBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicyport.protocol = _protocol;
        return self;
    }
};

public type RoleBindingBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_RoleBinding io_k8s_api_rbac_v1_rolebinding;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public RoleRefBuilderRbacV1? roleRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_rolebinding = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_RoleBinding) {
        return self.io_k8s_api_rbac_v1_rolebinding;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRoleRef() returns RoleRefBuilderRbacV1 {
        self.roleRefBuilder = new RoleRefBuilderRbacV1(self);
        match (self.roleRefBuilder) {
            RoleRefBuilderRbacV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBindingBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolebinding.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBindingBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_rolebinding.kind = _kind;
        return self;
    }
};

public type LabelSelectorBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector io_k8s_apimachinery_pkg_apis_meta_v1_labelselector;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_labelselector = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMatchLabels(any _matchLabels) returns (LabelSelectorBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_labelselector.matchLabels = _matchLabels;
        return self;
    }
};

public type QuobyteVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_QuobyteVolumeSource io_k8s_api_core_v1_quobytevolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_quobytevolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_QuobyteVolumeSource) {
        return self.io_k8s_api_core_v1_quobytevolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_group(string __group) returns (QuobyteVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_quobytevolumesource._group = __group;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (QuobyteVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_quobytevolumesource.readOnly = _readOnly;
        return self;
    }

    public function setRegistry(string _registry) returns (QuobyteVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_quobytevolumesource.registry = _registry;
        return self;
    }

    public function setUser(string _user) returns (QuobyteVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_quobytevolumesource.user = _user;
        return self;
    }

    public function setVolume(string _volume) returns (QuobyteVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_quobytevolumesource.volume = _volume;
        return self;
    }
};

public type ClusterRoleListBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_ClusterRoleList io_k8s_api_rbac_v1beta1_clusterrolelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_clusterrolelist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_ClusterRoleList) {
        return self.io_k8s_api_rbac_v1beta1_clusterrolelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolelist.kind = _kind;
        return self;
    }
};

public type ValidatingWebhookConfigurationBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration
    io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfiguration;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfiguration = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration) {
        return self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfiguration;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (
                ValidatingWebhookConfigurationBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfiguration.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ValidatingWebhookConfigurationBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_validatingwebhookconfiguration.kind = _kind;
        return self;
    }
};

public type PodAntiAffinityBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodAntiAffinity io_k8s_api_core_v1_podantiaffinity;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_podantiaffinity = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodAntiAffinity) {
        return self.io_k8s_api_core_v1_podantiaffinity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type UserInfoBuilderAuthenticationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1_UserInfo io_k8s_api_authentication_v1_userinfo;
    public new(fluentBuilder) {
        io_k8s_api_authentication_v1_userinfo = new;
    }
    public function build() returns (io_k8s_api_authentication_v1_UserInfo) {
        return self.io_k8s_api_authentication_v1_userinfo;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setExtra(any _extra) returns (UserInfoBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_userinfo.extra = _extra;
        return self;
    }

    public function setGroups(string[] _groups) returns (UserInfoBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_userinfo.groups = _groups;
        return self;
    }
    public function addGroup(string _value) returns UserInfoBuilderAuthenticationV1 {
        self.io_k8s_api_authentication_v1_userinfo.groups[lengthof self.io_k8s_api_authentication_v1_userinfo.groups] =
            _value;
        return self;
    }

    public function setUid(string _uid) returns (UserInfoBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_userinfo.uid = _uid;
        return self;
    }

    public function setUsername(string _username) returns (UserInfoBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_userinfo.username = _username;
        return self;
    }
};

public type ResourceFieldSelectorBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceFieldSelector io_k8s_api_core_v1_resourcefieldselector;
    public QuantityBuilderApiResource? divisorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcefieldselector = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceFieldSelector) {
        return self.io_k8s_api_core_v1_resourcefieldselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withDivisor() returns QuantityBuilderApiResource {
        self.divisorBuilder = new QuantityBuilderApiResource(self);
        match (self.divisorBuilder) {
            QuantityBuilderApiResource builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setContainerName(string _containerName) returns (ResourceFieldSelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcefieldselector.containerName = _containerName;
        return self;
    }

    public function set_resource(string __resource) returns (ResourceFieldSelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcefieldselector._resource = __resource;
        return self;
    }
};

public type DaemonEndpointBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_DaemonEndpoint io_k8s_api_core_v1_daemonendpoint;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_daemonendpoint = new;
    }
    public function build() returns (io_k8s_api_core_v1_DaemonEndpoint) {
        return self.io_k8s_api_core_v1_daemonendpoint;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPort(int _Port) returns (DaemonEndpointBuilderCoreV1) {
        self.io_k8s_api_core_v1_daemonendpoint.Port = _Port;
        return self;
    }
};

public type ReplicaSetListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ReplicaSetList io_k8s_api_extensions_v1beta1_replicasetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_replicasetlist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ReplicaSetList) {
        return self.io_k8s_api_extensions_v1beta1_replicasetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ReplicaSetListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ReplicaSetListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_replicasetlist.kind = _kind;
        return self;
    }
};

public type AllowedFlexVolumeBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_AllowedFlexVolume io_k8s_api_policy_v1beta1_allowedflexvolume;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_allowedflexvolume = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_AllowedFlexVolume) {
        return self.io_k8s_api_policy_v1beta1_allowedflexvolume;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDriver(string _driver) returns (AllowedFlexVolumeBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_allowedflexvolume.driver = _driver;
        return self;
    }
};

public type IPBlockBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_IPBlock io_k8s_api_networking_v1_ipblock;
    public new(fluentBuilder) {
        io_k8s_api_networking_v1_ipblock = new;
    }
    public function build() returns (io_k8s_api_networking_v1_IPBlock) {
        return self.io_k8s_api_networking_v1_ipblock;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCidr(string _cidr) returns (IPBlockBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_ipblock.cidr = _cidr;
        return self;
    }

    public function setExcept(string[] _except) returns (IPBlockBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_ipblock.except = _except;
        return self;
    }
    public function addExcep(string _value) returns IPBlockBuilderNetworkingV1 {
        self.io_k8s_api_networking_v1_ipblock.except[lengthof self.io_k8s_api_networking_v1_ipblock.except] = _value;
        return self;
    }
};

public type DeploymentConditionBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DeploymentCondition io_k8s_api_apps_v1beta2_deploymentcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deploymentcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DeploymentCondition) {
        return self.io_k8s_api_apps_v1beta2_deploymentcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (DeploymentConditionBuilderAppsV1beta2
                ) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setLastUpdateTime(time:Time? _lastUpdateTime) returns (DeploymentConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition.lastUpdateTime = _lastUpdateTime;
        return self;
    }

    public function setMessage(string _message) returns (DeploymentConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DeploymentConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DeploymentConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DeploymentConditionBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentcondition._type = __type;
        return self;
    }
};

public type TokenReviewBuilderAuthenticationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1beta1_TokenReview io_k8s_api_authentication_v1beta1_tokenreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public TokenReviewSpecBuilderAuthenticationV1beta1? specBuilder;

    public TokenReviewStatusBuilderAuthenticationV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authentication_v1beta1_tokenreview = new;
    }
    public function build() returns (io_k8s_api_authentication_v1beta1_TokenReview) {
        return self.io_k8s_api_authentication_v1beta1_tokenreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns TokenReviewSpecBuilderAuthenticationV1beta1 {
        self.specBuilder = new TokenReviewSpecBuilderAuthenticationV1beta1(self);
        match (self.specBuilder) {
            TokenReviewSpecBuilderAuthenticationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns TokenReviewStatusBuilderAuthenticationV1beta1 {
        self.statusBuilder = new TokenReviewStatusBuilderAuthenticationV1beta1(self);
        match (self.statusBuilder) {
            TokenReviewStatusBuilderAuthenticationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (TokenReviewBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_tokenreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (TokenReviewBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_tokenreview.kind = _kind;
        return self;
    }
};

public type VolumeErrorBuilderStorageV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_storage_v1beta1_VolumeError io_k8s_api_storage_v1beta1_volumeerror;
    public new(fluentBuilder) {
        io_k8s_api_storage_v1beta1_volumeerror = new;
    }
    public function build() returns (io_k8s_api_storage_v1beta1_VolumeError) {
        return self.io_k8s_api_storage_v1beta1_volumeerror;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMessage(string _message) returns (VolumeErrorBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeerror.message = _message;
        return self;
    }

    public function setTime(time:Time? _time) returns (VolumeErrorBuilderStorageV1beta1) {
        self.io_k8s_api_storage_v1beta1_volumeerror.time = _time;
        return self;
    }
};

public type StatefulSetUpdateStrategyBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_StatefulSetUpdateStrategy io_k8s_api_apps_v1beta1_statefulsetupdatestrategy;
    public RollingUpdateStatefulSetStrategyBuilderAppsV1beta1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_statefulsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_StatefulSetUpdateStrategy) {
        return self.io_k8s_api_apps_v1beta1_statefulsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateStatefulSetStrategyBuilderAppsV1beta1 {
        self.rollingUpdateBuilder = new RollingUpdateStatefulSetStrategyBuilderAppsV1beta1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateStatefulSetStrategyBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (StatefulSetUpdateStrategyBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_statefulsetupdatestrategy._type = __type;
        return self;
    }
};

public type NetworkPolicyEgressRuleBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicyEgressRule io_k8s_api_networking_v1_networkpolicyegressrule;
    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicyegressrule = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicyEgressRule) {
        return self.io_k8s_api_networking_v1_networkpolicyegressrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type CronJobStatusBuilderBatchV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1beta1_CronJobStatus io_k8s_api_batch_v1beta1_cronjobstatus;
    public new(fluentBuilder) {
        io_k8s_api_batch_v1beta1_cronjobstatus = new;
    }
    public function build() returns (io_k8s_api_batch_v1beta1_CronJobStatus) {
        return self.io_k8s_api_batch_v1beta1_cronjobstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastScheduleTime(time:Time? _lastScheduleTime) returns (CronJobStatusBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobstatus.lastScheduleTime = _lastScheduleTime;
        return self;
    }
};

public type RollbackConfigBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_RollbackConfig io_k8s_api_apps_v1beta1_rollbackconfig;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_rollbackconfig = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_RollbackConfig) {
        return self.io_k8s_api_apps_v1beta1_rollbackconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRevision(int _revision) returns (RollbackConfigBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_rollbackconfig.revision = _revision;
        return self;
    }
};

public type WebhookBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_Webhook io_k8s_api_admissionregistration_v1beta1_webhook;
    public WebhookClientConfigBuilderAdmissionregistrationV1beta1? clientConfigBuilder;

    public LabelSelectorBuilderMetaV1? namespaceSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_webhook = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_Webhook) {
        return self.io_k8s_api_admissionregistration_v1beta1_webhook;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withClientConfig() returns WebhookClientConfigBuilderAdmissionregistrationV1beta1 {
        self.clientConfigBuilder = new WebhookClientConfigBuilderAdmissionregistrationV1beta1(self);
        match (self.clientConfigBuilder) {
            WebhookClientConfigBuilderAdmissionregistrationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNamespaceSelector() returns LabelSelectorBuilderMetaV1 {
        self.namespaceSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.namespaceSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setFailurePolicy(string _failurePolicy) returns (WebhookBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_webhook.failurePolicy = _failurePolicy;
        return self;
    }

    public function setName(string _name) returns (WebhookBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_webhook.name = _name;
        return self;
    }
};

public type LimitRangeItemBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LimitRangeItem io_k8s_api_core_v1_limitrangeitem;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_limitrangeitem = new;
    }
    public function build() returns (io_k8s_api_core_v1_LimitRangeItem) {
        return self.io_k8s_api_core_v1_limitrangeitem;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDefault(any _default) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem.default = _default;
        return self;
    }

    public function setDefaultRequest(any _defaultRequest) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem.defaultRequest = _defaultRequest;
        return self;
    }

    public function setMax(any _max) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem.max = _max;
        return self;
    }

    public function setMaxLimitRequestRatio(any _maxLimitRequestRatio) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem.maxLimitRequestRatio = _maxLimitRequestRatio;
        return self;
    }

    public function setMin(any _min) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem.min = _min;
        return self;
    }

    public function set_type(string __type) returns (LimitRangeItemBuilderCoreV1) {
        self.io_k8s_api_core_v1_limitrangeitem._type = __type;
        return self;
    }
};

public type UserInfoBuilderAuthenticationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1beta1_UserInfo io_k8s_api_authentication_v1beta1_userinfo;
    public new(fluentBuilder) {
        io_k8s_api_authentication_v1beta1_userinfo = new;
    }
    public function build() returns (io_k8s_api_authentication_v1beta1_UserInfo) {
        return self.io_k8s_api_authentication_v1beta1_userinfo;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setExtra(any _extra) returns (UserInfoBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_userinfo.extra = _extra;
        return self;
    }

    public function setGroups(string[] _groups) returns (UserInfoBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_userinfo.groups = _groups;
        return self;
    }
    public function addGroup(string _value) returns UserInfoBuilderAuthenticationV1beta1 {
        self.io_k8s_api_authentication_v1beta1_userinfo.groups[lengthof self.io_k8s_api_authentication_v1beta1_userinfo.
        groups] = _value;
        return self;
    }

    public function setUid(string _uid) returns (UserInfoBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_userinfo.uid = _uid;
        return self;
    }

    public function setUsername(string _username) returns (UserInfoBuilderAuthenticationV1beta1) {
        self.io_k8s_api_authentication_v1beta1_userinfo.username = _username;
        return self;
    }
};

public type PodConditionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodCondition io_k8s_api_core_v1_podcondition;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_podcondition = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodCondition) {
        return self.io_k8s_api_core_v1_podcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastProbeTime(time:Time? _lastProbeTime) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition.lastProbeTime = _lastProbeTime;
        return self;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (PodConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_podcondition._type = __type;
        return self;
    }
};

public type ScaleSpecBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_ScaleSpec io_k8s_api_autoscaling_v1_scalespec;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_scalespec = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_ScaleSpec) {
        return self.io_k8s_api_autoscaling_v1_scalespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleSpecBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_scalespec.replicas = _replicas;
        return self;
    }
};

public type SubjectAccessReviewStatusBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SubjectAccessReviewStatus io_k8s_api_authorization_v1_subjectaccessreviewstatus;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_subjectaccessreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SubjectAccessReviewStatus) {
        return self.io_k8s_api_authorization_v1_subjectaccessreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAllowed(boolean _allowed) returns (SubjectAccessReviewStatusBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewstatus.allowed = _allowed;
        return self;
    }

    public function setDenied(boolean _denied) returns (SubjectAccessReviewStatusBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewstatus.denied = _denied;
        return self;
    }

    public function setEvaluationError(string _evaluationError) returns (SubjectAccessReviewStatusBuilderAuthorizationV1
                ) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewstatus.evaluationError = _evaluationError;
        return self;
    }

    public function setReason(string _reason) returns (SubjectAccessReviewStatusBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreviewstatus.reason = _reason;
        return self;
    }
};

public type ClusterRoleBindingBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_ClusterRoleBinding io_k8s_api_rbac_v1_clusterrolebinding;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public RoleRefBuilderRbacV1? roleRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_clusterrolebinding = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_ClusterRoleBinding) {
        return self.io_k8s_api_rbac_v1_clusterrolebinding;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRoleRef() returns RoleRefBuilderRbacV1 {
        self.roleRefBuilder = new RoleRefBuilderRbacV1(self);
        match (self.roleRefBuilder) {
            RoleRefBuilderRbacV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBindingBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolebinding.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBindingBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolebinding.kind = _kind;
        return self;
    }
};

public type NetworkPolicyListBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicyList io_k8s_api_networking_v1_networkpolicylist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicylist = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicyList) {
        return self.io_k8s_api_networking_v1_networkpolicylist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NetworkPolicyListBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicylist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NetworkPolicyListBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicylist.kind = _kind;
        return self;
    }
};

public type ContainerBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Container io_k8s_api_core_v1_container;
    public LifecycleBuilderCoreV1? lifecycleBuilder;

    public ProbeBuilderCoreV1? livenessProbeBuilder;

    public ProbeBuilderCoreV1? readinessProbeBuilder;

    public ResourceRequirementsBuilderCoreV1? resourcesBuilder;

    public SecurityContextBuilderCoreV1? securityContextBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_container = new;
    }
    public function build() returns (io_k8s_api_core_v1_Container) {
        return self.io_k8s_api_core_v1_container;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withLifecycle() returns LifecycleBuilderCoreV1 {
        self.lifecycleBuilder = new LifecycleBuilderCoreV1(self);
        match (self.lifecycleBuilder) {
            LifecycleBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withLivenessProbe() returns ProbeBuilderCoreV1 {
        self.livenessProbeBuilder = new ProbeBuilderCoreV1(self);
        match (self.livenessProbeBuilder) {
            ProbeBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withReadinessProbe() returns ProbeBuilderCoreV1 {
        self.readinessProbeBuilder = new ProbeBuilderCoreV1(self);
        match (self.readinessProbeBuilder) {
            ProbeBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResources() returns ResourceRequirementsBuilderCoreV1 {
        self.resourcesBuilder = new ResourceRequirementsBuilderCoreV1(self);
        match (self.resourcesBuilder) {
            ResourceRequirementsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecurityContext() returns SecurityContextBuilderCoreV1 {
        self.securityContextBuilder = new SecurityContextBuilderCoreV1(self);
        match (self.securityContextBuilder) {
            SecurityContextBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setArgs(string[] _args) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.args = _args;
        return self;
    }
    public function addArg(string _value) returns ContainerBuilderCoreV1 {
        self.io_k8s_api_core_v1_container.args[lengthof self.io_k8s_api_core_v1_container.args] = _value;
        return self;
    }

    public function setCommand(string[] _command) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.command = _command;
        return self;
    }
    public function addComman(string _value) returns ContainerBuilderCoreV1 {
        self.io_k8s_api_core_v1_container.command[lengthof self.io_k8s_api_core_v1_container.command] = _value;
        return self;
    }

    public function setImage(string _image) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.image = _image;
        return self;
    }

    public function setImagePullPolicy(string _imagePullPolicy) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.imagePullPolicy = _imagePullPolicy;
        return self;
    }

    public function setName(string _name) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.name = _name;
        return self;
    }

    public function setStdin(boolean _stdin) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.stdin = _stdin;
        return self;
    }

    public function setStdinOnce(boolean _stdinOnce) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.stdinOnce = _stdinOnce;
        return self;
    }

    public function setTerminationMessagePath(string _terminationMessagePath) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.terminationMessagePath = _terminationMessagePath;
        return self;
    }

    public function setTerminationMessagePolicy(string _terminationMessagePolicy) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.terminationMessagePolicy = _terminationMessagePolicy;
        return self;
    }

    public function setTty(boolean _tty) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.tty = _tty;
        return self;
    }

    public function setWorkingDir(string _workingDir) returns (ContainerBuilderCoreV1) {
        self.io_k8s_api_core_v1_container.workingDir = _workingDir;
        return self;
    }
};

public type DeploymentStrategyBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DeploymentStrategy io_k8s_api_apps_v1beta2_deploymentstrategy;
    public RollingUpdateDeploymentBuilderAppsV1beta2? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deploymentstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DeploymentStrategy) {
        return self.io_k8s_api_apps_v1beta2_deploymentstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDeploymentBuilderAppsV1beta2 {
        self.rollingUpdateBuilder = new RollingUpdateDeploymentBuilderAppsV1beta2(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDeploymentBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DeploymentStrategyBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentstrategy._type = __type;
        return self;
    }
};

public type JobTemplateSpecBuilderBatchV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1beta1_JobTemplateSpec io_k8s_api_batch_v1beta1_jobtemplatespec;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public JobSpecBuilderBatchV1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1beta1_jobtemplatespec = new;
    }
    public function build() returns (io_k8s_api_batch_v1beta1_JobTemplateSpec) {
        return self.io_k8s_api_batch_v1beta1_jobtemplatespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns JobSpecBuilderBatchV1 {
        self.specBuilder = new JobSpecBuilderBatchV1(self);
        match (self.specBuilder) {
            JobSpecBuilderBatchV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type ControllerRevisionBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_ControllerRevision io_k8s_api_apps_v1beta1_controllerrevision;
    public RawExtensionBuilderPkgRuntime? dataBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_controllerrevision = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_ControllerRevision) {
        return self.io_k8s_api_apps_v1beta1_controllerrevision;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withData() returns RawExtensionBuilderPkgRuntime {
        self.dataBuilder = new RawExtensionBuilderPkgRuntime(self);
        match (self.dataBuilder) {
            RawExtensionBuilderPkgRuntime builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_controllerrevision.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_controllerrevision.kind = _kind;
        return self;
    }

    public function setRevision(int _revision) returns (ControllerRevisionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_controllerrevision.revision = _revision;
        return self;
    }
};

public type DeploymentSpecBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentSpec io_k8s_api_apps_v1beta1_deploymentspec;
    public RollbackConfigBuilderAppsV1beta1? rollbackToBuilder;

    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public DeploymentStrategyBuilderAppsV1beta1? strategyBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentSpec) {
        return self.io_k8s_api_apps_v1beta1_deploymentspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollbackTo() returns RollbackConfigBuilderAppsV1beta1 {
        self.rollbackToBuilder = new RollbackConfigBuilderAppsV1beta1(self);
        match (self.rollbackToBuilder) {
            RollbackConfigBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStrategy() returns DeploymentStrategyBuilderAppsV1beta1 {
        self.strategyBuilder = new DeploymentStrategyBuilderAppsV1beta1(self);
        match (self.strategyBuilder) {
            DeploymentStrategyBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DeploymentSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setPaused(boolean _paused) returns (DeploymentSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentspec.paused = _paused;
        return self;
    }

    public function setProgressDeadlineSeconds(int _progressDeadlineSeconds) returns (DeploymentSpecBuilderAppsV1beta1)
    {
        self.io_k8s_api_apps_v1beta1_deploymentspec.progressDeadlineSeconds = _progressDeadlineSeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentspec.replicas = _replicas;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DeploymentSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type SELinuxOptionsBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SELinuxOptions io_k8s_api_core_v1_selinuxoptions;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_selinuxoptions = new;
    }
    public function build() returns (io_k8s_api_core_v1_SELinuxOptions) {
        return self.io_k8s_api_core_v1_selinuxoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLevel(string _level) returns (SELinuxOptionsBuilderCoreV1) {
        self.io_k8s_api_core_v1_selinuxoptions.level = _level;
        return self;
    }

    public function setRole(string _role) returns (SELinuxOptionsBuilderCoreV1) {
        self.io_k8s_api_core_v1_selinuxoptions.role = _role;
        return self;
    }

    public function set_type(string __type) returns (SELinuxOptionsBuilderCoreV1) {
        self.io_k8s_api_core_v1_selinuxoptions._type = __type;
        return self;
    }

    public function setUser(string _user) returns (SELinuxOptionsBuilderCoreV1) {
        self.io_k8s_api_core_v1_selinuxoptions.user = _user;
        return self;
    }
};

public type DeploymentStrategyBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentStrategy io_k8s_api_extensions_v1beta1_deploymentstrategy;
    public RollingUpdateDeploymentBuilderExtensionsV1beta1? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentstrategy = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentStrategy) {
        return self.io_k8s_api_extensions_v1beta1_deploymentstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateDeploymentBuilderExtensionsV1beta1 {
        self.rollingUpdateBuilder = new RollingUpdateDeploymentBuilderExtensionsV1beta1(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateDeploymentBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (DeploymentStrategyBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstrategy._type = __type;
        return self;
    }
};

public type PersistentVolumeClaimSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaimSpec io_k8s_api_core_v1_persistentvolumeclaimspec;
    public ResourceRequirementsBuilderCoreV1? resourcesBuilder;

    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaimspec = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaimSpec) {
        return self.io_k8s_api_core_v1_persistentvolumeclaimspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withResources() returns ResourceRequirementsBuilderCoreV1 {
        self.resourcesBuilder = new ResourceRequirementsBuilderCoreV1(self);
        match (self.resourcesBuilder) {
            ResourceRequirementsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAccessModes(string[] _accessModes) returns (PersistentVolumeClaimSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimspec.accessModes = _accessModes;
        return self;
    }
    public function addAccessMode(string _value) returns PersistentVolumeClaimSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_persistentvolumeclaimspec.accessModes[lengthof self.
        io_k8s_api_core_v1_persistentvolumeclaimspec.accessModes] = _value;
        return self;
    }

    public function setStorageClassName(string _storageClassName) returns (PersistentVolumeClaimSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimspec.storageClassName = _storageClassName;
        return self;
    }

    public function setVolumeMode(string _volumeMode) returns (PersistentVolumeClaimSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimspec.volumeMode = _volumeMode;
        return self;
    }

    public function setVolumeName(string _volumeName) returns (PersistentVolumeClaimSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimspec.volumeName = _volumeName;
        return self;
    }
};

public type ReplicaSetStatusBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ReplicaSetStatus io_k8s_api_apps_v1_replicasetstatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_replicasetstatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ReplicaSetStatus) {
        return self.io_k8s_api_apps_v1_replicasetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (ReplicaSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setFullyLabeledReplicas(int _fullyLabeledReplicas) returns (ReplicaSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetstatus.fullyLabeledReplicas = _fullyLabeledReplicas;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (ReplicaSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (ReplicaSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicaSetStatusBuilderAppsV1) {
        self.io_k8s_api_apps_v1_replicasetstatus.replicas = _replicas;
        return self;
    }
};

public type RunAsUserStrategyOptionsBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_RunAsUserStrategyOptions io_k8s_api_policy_v1beta1_runasuserstrategyoptions;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_runasuserstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_RunAsUserStrategyOptions) {
        return self.io_k8s_api_policy_v1beta1_runasuserstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (RunAsUserStrategyOptionsBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_runasuserstrategyoptions.rule = _rule;
        return self;
    }
};

public type NonResourceAttributesBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_NonResourceAttributes io_k8s_api_authorization_v1beta1_nonresourceattributes
    ;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_nonresourceattributes = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_NonResourceAttributes) {
        return self.io_k8s_api_authorization_v1beta1_nonresourceattributes;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPath(string _path) returns (NonResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_nonresourceattributes.path = _path;
        return self;
    }

    public function setVerb(string _verb) returns (NonResourceAttributesBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_nonresourceattributes.verb = _verb;
        return self;
    }
};

public type IngressBackendBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressBackend io_k8s_api_extensions_v1beta1_ingressbackend;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingressbackend = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressBackend) {
        return self.io_k8s_api_extensions_v1beta1_ingressbackend;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setServiceName(string _serviceName) returns (IngressBackendBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingressbackend.serviceName = _serviceName;
        return self;
    }

    public function setServicePort(int|string _servicePort) returns (IngressBackendBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingressbackend.servicePort = _servicePort;
        return self;
    }
};

public type SELinuxStrategyOptionsBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_SELinuxStrategyOptions io_k8s_api_policy_v1beta1_selinuxstrategyoptions;
    public SELinuxOptionsBuilderCoreV1? seLinuxOptionsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_selinuxstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_SELinuxStrategyOptions) {
        return self.io_k8s_api_policy_v1beta1_selinuxstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSeLinuxOptions() returns SELinuxOptionsBuilderCoreV1 {
        self.seLinuxOptionsBuilder = new SELinuxOptionsBuilderCoreV1(self);
        match (self.seLinuxOptionsBuilder) {
            SELinuxOptionsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setRule(string _rule) returns (SELinuxStrategyOptionsBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_selinuxstrategyoptions.rule = _rule;
        return self;
    }
};

public type EndpointsBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Endpoints io_k8s_api_core_v1_endpoints;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_endpoints = new;
    }
    public function build() returns (io_k8s_api_core_v1_Endpoints) {
        return self.io_k8s_api_core_v1_endpoints;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (EndpointsBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpoints.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (EndpointsBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpoints.kind = _kind;
        return self;
    }
};

public type StatefulSetConditionBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSetCondition io_k8s_api_apps_v1_statefulsetcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulsetcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSetCondition) {
        return self.io_k8s_api_apps_v1_statefulsetcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (StatefulSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (StatefulSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (StatefulSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (StatefulSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (StatefulSetConditionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulsetcondition._type = __type;
        return self;
    }
};

public type SubjectAccessReviewStatusBuilderAuthorizationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus
    io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus = new;
    }
    public function build() returns (io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus) {
        return self.io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAllowed(boolean _allowed) returns (SubjectAccessReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus.allowed = _allowed;
        return self;
    }

    public function setDenied(boolean _denied) returns (SubjectAccessReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus.denied = _denied;
        return self;
    }

    public function setEvaluationError(string _evaluationError) returns (
                SubjectAccessReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus.evaluationError = _evaluationError;
        return self;
    }

    public function setReason(string _reason) returns (SubjectAccessReviewStatusBuilderAuthorizationV1beta1) {
        self.io_k8s_api_authorization_v1beta1_subjectaccessreviewstatus.reason = _reason;
        return self;
    }
};

public type LocalObjectReferenceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LocalObjectReference io_k8s_api_core_v1_localobjectreference;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_localobjectreference = new;
    }
    public function build() returns (io_k8s_api_core_v1_LocalObjectReference) {
        return self.io_k8s_api_core_v1_localobjectreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (LocalObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_localobjectreference.name = _name;
        return self;
    }
};

public type TCPSocketActionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_TCPSocketAction io_k8s_api_core_v1_tcpsocketaction;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_tcpsocketaction = new;
    }
    public function build() returns (io_k8s_api_core_v1_TCPSocketAction) {
        return self.io_k8s_api_core_v1_tcpsocketaction;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHost(string _host) returns (TCPSocketActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_tcpsocketaction.host = _host;
        return self;
    }

    public function setPort(int|string _port) returns (TCPSocketActionBuilderCoreV1) {
        self.io_k8s_api_core_v1_tcpsocketaction.port = _port;
        return self;
    }
};

public type PodStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodStatus io_k8s_api_core_v1_podstatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_podstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodStatus) {
        return self.io_k8s_api_core_v1_podstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHostIP(string _hostIP) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.hostIP = _hostIP;
        return self;
    }

    public function setMessage(string _message) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.message = _message;
        return self;
    }

    public function setNominatedNodeName(string _nominatedNodeName) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.nominatedNodeName = _nominatedNodeName;
        return self;
    }

    public function setPhase(string _phase) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.phase = _phase;
        return self;
    }

    public function setPodIP(string _podIP) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.podIP = _podIP;
        return self;
    }

    public function setQosClass(string _qosClass) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.qosClass = _qosClass;
        return self;
    }

    public function setReason(string _reason) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.reason = _reason;
        return self;
    }

    public function setStartTime(time:Time? _startTime) returns (PodStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_podstatus.startTime = _startTime;
        return self;
    }
};

public type HorizontalPodAutoscalerListBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerList
    io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerlist = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerList) {
        return self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (HorizontalPodAutoscalerListBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (HorizontalPodAutoscalerListBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerlist.kind = _kind;
        return self;
    }
};

public type EventListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EventList io_k8s_api_core_v1_eventlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_eventlist = new;
    }
    public function build() returns (io_k8s_api_core_v1_EventList) {
        return self.io_k8s_api_core_v1_eventlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (EventListBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (EventListBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventlist.kind = _kind;
        return self;
    }
};

public type CrossVersionObjectReferenceBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_CrossVersionObjectReference io_k8s_api_autoscaling_v1_crossversionobjectreference;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_crossversionobjectreference = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_CrossVersionObjectReference) {
        return self.io_k8s_api_autoscaling_v1_crossversionobjectreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (CrossVersionObjectReferenceBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_crossversionobjectreference.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CrossVersionObjectReferenceBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_crossversionobjectreference.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (CrossVersionObjectReferenceBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_crossversionobjectreference.name = _name;
        return self;
    }
};

public type CephFSVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_CephFSVolumeSource io_k8s_api_core_v1_cephfsvolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_cephfsvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_CephFSVolumeSource) {
        return self.io_k8s_api_core_v1_cephfsvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMonitors(string[] _monitors) returns (CephFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfsvolumesource.monitors = _monitors;
        return self;
    }
    public function addMonitor(string _value) returns CephFSVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_cephfsvolumesource.monitors[lengthof self.io_k8s_api_core_v1_cephfsvolumesource.monitors
        ] = _value;
        return self;
    }

    public function setPath(string _path) returns (CephFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfsvolumesource.path = _path;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (CephFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfsvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSecretFile(string _secretFile) returns (CephFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfsvolumesource.secretFile = _secretFile;
        return self;
    }

    public function setUser(string _user) returns (CephFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfsvolumesource.user = _user;
        return self;
    }
};

public type CephFSPersistentVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_CephFSPersistentVolumeSource io_k8s_api_core_v1_cephfspersistentvolumesource;
    public SecretReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_cephfspersistentvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_CephFSPersistentVolumeSource) {
        return self.io_k8s_api_core_v1_cephfspersistentvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns SecretReferenceBuilderCoreV1 {
        self.secretRefBuilder = new SecretReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            SecretReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMonitors(string[] _monitors) returns (CephFSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.monitors = _monitors;
        return self;
    }
    public function addMonitor(string _value) returns CephFSPersistentVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.monitors[lengthof self.
        io_k8s_api_core_v1_cephfspersistentvolumesource.monitors] = _value;
        return self;
    }

    public function setPath(string _path) returns (CephFSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.path = _path;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (CephFSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setSecretFile(string _secretFile) returns (CephFSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.secretFile = _secretFile;
        return self;
    }

    public function setUser(string _user) returns (CephFSPersistentVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_cephfspersistentvolumesource.user = _user;
        return self;
    }
};

public type APIServiceConditionBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceCondition
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceCondition) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                APIServiceConditionBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition.lastTransitionTime =
            _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (APIServiceConditionBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (APIServiceConditionBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (APIServiceConditionBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (APIServiceConditionBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicecondition._type = __type;
        return self;
    }
};

public type JSONSchemaPropsOrArrayBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrArray
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorarray;
    public JSONSchemaPropsBuilderApiextensionsV1beta1? SchemaBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorarray = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrArray) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemapropsorarray;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSchema() returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.SchemaBuilder = new JSONSchemaPropsBuilderApiextensionsV1beta1(self);
        match (self.SchemaBuilder) {
            JSONSchemaPropsBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type PodBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Pod io_k8s_api_core_v1_pod;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodSpecBuilderCoreV1? specBuilder;

    public PodStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_pod = new;
    }
    public function build() returns (io_k8s_api_core_v1_Pod) {
        return self.io_k8s_api_core_v1_pod;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PodSpecBuilderCoreV1 {
        self.specBuilder = new PodSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            PodSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns PodStatusBuilderCoreV1 {
        self.statusBuilder = new PodStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            PodStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodBuilderCoreV1) {
        self.io_k8s_api_core_v1_pod.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodBuilderCoreV1) {
        self.io_k8s_api_core_v1_pod.kind = _kind;
        return self;
    }
};

public type ClusterRoleBindingBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_ClusterRoleBinding io_k8s_api_rbac_v1beta1_clusterrolebinding;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public RoleRefBuilderRbacV1beta1? roleRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_clusterrolebinding = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_ClusterRoleBinding) {
        return self.io_k8s_api_rbac_v1beta1_clusterrolebinding;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRoleRef() returns RoleRefBuilderRbacV1beta1 {
        self.roleRefBuilder = new RoleRefBuilderRbacV1beta1(self);
        match (self.roleRefBuilder) {
            RoleRefBuilderRbacV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBindingBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolebinding.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBindingBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_clusterrolebinding.kind = _kind;
        return self;
    }
};

public type PodDisruptionBudgetStatusBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudgetStatus io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus;
    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodDisruptionBudgetStatus) {
        return self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCurrentHealthy(int _currentHealthy) returns (PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.currentHealthy = _currentHealthy;
        return self;
    }

    public function setDesiredHealthy(int _desiredHealthy) returns (PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.desiredHealthy = _desiredHealthy;
        return self;
    }

    public function setDisruptedPods(any _disruptedPods) returns (PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.disruptedPods = _disruptedPods;
        return self;
    }

    public function setDisruptionsAllowed(int _disruptionsAllowed) returns (
                PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.disruptionsAllowed = _disruptionsAllowed;
        return self;
    }

    public function setExpectedPods(int _expectedPods) returns (PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.expectedPods = _expectedPods;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (
                PodDisruptionBudgetStatusBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetstatus.observedGeneration = _observedGeneration;
        return self;
    }
};

public type RoleBindingListBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_RoleBindingList io_k8s_api_rbac_v1beta1_rolebindinglist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_rolebindinglist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_RoleBindingList) {
        return self.io_k8s_api_rbac_v1beta1_rolebindinglist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBindingListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolebindinglist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBindingListBuilderRbacV1beta1) {
        self.io_k8s_api_rbac_v1beta1_rolebindinglist.kind = _kind;
        return self;
    }
};

public type LocalSubjectAccessReviewBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_LocalSubjectAccessReview io_k8s_api_authorization_v1_localsubjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SubjectAccessReviewSpecBuilderAuthorizationV1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_localsubjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_LocalSubjectAccessReview) {
        return self.io_k8s_api_authorization_v1_localsubjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SubjectAccessReviewSpecBuilderAuthorizationV1 {
        self.specBuilder = new SubjectAccessReviewSpecBuilderAuthorizationV1(self);
        match (self.specBuilder) {
            SubjectAccessReviewSpecBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (LocalSubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_localsubjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (LocalSubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_localsubjectaccessreview.kind = _kind;
        return self;
    }
};

public type PodAffinityBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodAffinity io_k8s_api_core_v1_podaffinity;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_podaffinity = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodAffinity) {
        return self.io_k8s_api_core_v1_podaffinity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type AggregationRuleBuilderRbacV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1beta1_AggregationRule io_k8s_api_rbac_v1beta1_aggregationrule;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1beta1_aggregationrule = new;
    }
    public function build() returns (io_k8s_api_rbac_v1beta1_AggregationRule) {
        return self.io_k8s_api_rbac_v1beta1_aggregationrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type CrossVersionObjectReferenceBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference
    io_k8s_api_autoscaling_v2beta1_crossversionobjectreference;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_crossversionobjectreference = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference) {
        return self.io_k8s_api_autoscaling_v2beta1_crossversionobjectreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (CrossVersionObjectReferenceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_crossversionobjectreference.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CrossVersionObjectReferenceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_crossversionobjectreference.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (CrossVersionObjectReferenceBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_crossversionobjectreference.name = _name;
        return self;
    }
};

public type APIServiceListBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceList
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicelist = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceList) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (APIServiceListBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIServiceListBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservicelist.kind = _kind;
        return self;
    }
};

public type CronJobSpecBuilderBatchV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1beta1_CronJobSpec io_k8s_api_batch_v1beta1_cronjobspec;
    public JobTemplateSpecBuilderBatchV1beta1? jobTemplateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1beta1_cronjobspec = new;
    }
    public function build() returns (io_k8s_api_batch_v1beta1_CronJobSpec) {
        return self.io_k8s_api_batch_v1beta1_cronjobspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withJobTemplate() returns JobTemplateSpecBuilderBatchV1beta1 {
        self.jobTemplateBuilder = new JobTemplateSpecBuilderBatchV1beta1(self);
        match (self.jobTemplateBuilder) {
            JobTemplateSpecBuilderBatchV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setConcurrencyPolicy(string _concurrencyPolicy) returns (CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.concurrencyPolicy = _concurrencyPolicy;
        return self;
    }

    public function setFailedJobsHistoryLimit(int _failedJobsHistoryLimit) returns (CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.failedJobsHistoryLimit = _failedJobsHistoryLimit;
        return self;
    }

    public function setSchedule(string _schedule) returns (CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.schedule = _schedule;
        return self;
    }

    public function setStartingDeadlineSeconds(int _startingDeadlineSeconds) returns (CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.startingDeadlineSeconds = _startingDeadlineSeconds;
        return self;
    }

    public function setSuccessfulJobsHistoryLimit(int _successfulJobsHistoryLimit) returns (
                CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.successfulJobsHistoryLimit = _successfulJobsHistoryLimit;
        return self;
    }

    public function setSuspend(boolean _suspend) returns (CronJobSpecBuilderBatchV1beta1) {
        self.io_k8s_api_batch_v1beta1_cronjobspec.suspend = _suspend;
        return self;
    }
};

public type FlexVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_FlexVolumeSource io_k8s_api_core_v1_flexvolumesource;
    public LocalObjectReferenceBuilderCoreV1? secretRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_flexvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_FlexVolumeSource) {
        return self.io_k8s_api_core_v1_flexvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSecretRef() returns LocalObjectReferenceBuilderCoreV1 {
        self.secretRefBuilder = new LocalObjectReferenceBuilderCoreV1(self);
        match (self.secretRefBuilder) {
            LocalObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setDriver(string _driver) returns (FlexVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexvolumesource.driver = _driver;
        return self;
    }

    public function setFsType(string _fsType) returns (FlexVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexvolumesource.fsType = _fsType;
        return self;
    }

    public function setOptions(any _options) returns (FlexVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexvolumesource.options = _options;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (FlexVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_flexvolumesource.readOnly = _readOnly;
        return self;
    }
};

public type PolicyRuleBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_PolicyRule io_k8s_api_rbac_v1_policyrule;
    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_policyrule = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_PolicyRule) {
        return self.io_k8s_api_rbac_v1_policyrule;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroups(string[] _apiGroups) returns (PolicyRuleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_policyrule.apiGroups = _apiGroups;
        return self;
    }
    public function addApiGroup(string _value) returns PolicyRuleBuilderRbacV1 {
        self.io_k8s_api_rbac_v1_policyrule.apiGroups[lengthof self.io_k8s_api_rbac_v1_policyrule.apiGroups] = _value;
        return self;
    }

    public function setNonResourceURLs(string[] _nonResourceURLs) returns (PolicyRuleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_policyrule.nonResourceURLs = _nonResourceURLs;
        return self;
    }
    public function addNonResourceURL(string _value) returns PolicyRuleBuilderRbacV1 {
        self.io_k8s_api_rbac_v1_policyrule.nonResourceURLs[lengthof self.io_k8s_api_rbac_v1_policyrule.nonResourceURLs]
        = _value;
        return self;
    }

    public function setResourceNames(string[] _resourceNames) returns (PolicyRuleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_policyrule.resourceNames = _resourceNames;
        return self;
    }
    public function addResourceName(string _value) returns PolicyRuleBuilderRbacV1 {
        self.io_k8s_api_rbac_v1_policyrule.resourceNames[lengthof self.io_k8s_api_rbac_v1_policyrule.resourceNames] =
            _value;
        return self;
    }

    public function setResources(string[] _resources) returns (PolicyRuleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_policyrule.resources = _resources;
        return self;
    }
    public function addResource(string _value) returns PolicyRuleBuilderRbacV1 {
        self.io_k8s_api_rbac_v1_policyrule.resources[lengthof self.io_k8s_api_rbac_v1_policyrule.resources] = _value;
        return self;
    }

    public function setVerbs(string[] _verbs) returns (PolicyRuleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_policyrule.verbs = _verbs;
        return self;
    }
    public function addVerb(string _value) returns PolicyRuleBuilderRbacV1 {
        self.io_k8s_api_rbac_v1_policyrule.verbs[lengthof self.io_k8s_api_rbac_v1_policyrule.verbs] = _value;
        return self;
    }
};

public type TokenReviewSpecBuilderAuthenticationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authentication_v1_TokenReviewSpec io_k8s_api_authentication_v1_tokenreviewspec;
    public new(fluentBuilder) {
        io_k8s_api_authentication_v1_tokenreviewspec = new;
    }
    public function build() returns (io_k8s_api_authentication_v1_TokenReviewSpec) {
        return self.io_k8s_api_authentication_v1_tokenreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setToken(string _token) returns (TokenReviewSpecBuilderAuthenticationV1) {
        self.io_k8s_api_authentication_v1_tokenreviewspec.token = _token;
        return self;
    }
};

public type EndpointPortBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EndpointPort io_k8s_api_core_v1_endpointport;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_endpointport = new;
    }
    public function build() returns (io_k8s_api_core_v1_EndpointPort) {
        return self.io_k8s_api_core_v1_endpointport;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (EndpointPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointport.name = _name;
        return self;
    }

    public function setPort(int _port) returns (EndpointPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointport.port = _port;
        return self;
    }

    public function setProtocol(string _protocol) returns (EndpointPortBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointport.protocol = _protocol;
        return self;
    }
};

public type EventSeriesBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EventSeries io_k8s_api_core_v1_eventseries;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_eventseries = new;
    }
    public function build() returns (io_k8s_api_core_v1_EventSeries) {
        return self.io_k8s_api_core_v1_eventseries;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCount(int _count) returns (EventSeriesBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventseries.count = _count;
        return self;
    }

    public function setLastObservedTime(time:Time? _lastObservedTime) returns (EventSeriesBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventseries.lastObservedTime = _lastObservedTime;
        return self;
    }

    public function setState(string _state) returns (EventSeriesBuilderCoreV1) {
        self.io_k8s_api_core_v1_eventseries.state = _state;
        return self;
    }
};

public type PodTemplateBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodTemplate io_k8s_api_core_v1_podtemplate;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podtemplate = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodTemplate) {
        return self.io_k8s_api_core_v1_podtemplate;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodTemplateBuilderCoreV1) {
        self.io_k8s_api_core_v1_podtemplate.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodTemplateBuilderCoreV1) {
        self.io_k8s_api_core_v1_podtemplate.kind = _kind;
        return self;
    }
};

public type ControllerRevisionBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_ControllerRevision io_k8s_api_apps_v1_controllerrevision;
    public RawExtensionBuilderPkgRuntime? dataBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_controllerrevision = new;
    }
    public function build() returns (io_k8s_api_apps_v1_ControllerRevision) {
        return self.io_k8s_api_apps_v1_controllerrevision;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withData() returns RawExtensionBuilderPkgRuntime {
        self.dataBuilder = new RawExtensionBuilderPkgRuntime(self);
        match (self.dataBuilder) {
            RawExtensionBuilderPkgRuntime builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ControllerRevisionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_controllerrevision.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ControllerRevisionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_controllerrevision.kind = _kind;
        return self;
    }

    public function setRevision(int _revision) returns (ControllerRevisionBuilderAppsV1) {
        self.io_k8s_api_apps_v1_controllerrevision.revision = _revision;
        return self;
    }
};

public type DaemonSetSpecBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_DaemonSetSpec io_k8s_api_apps_v1_daemonsetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public DaemonSetUpdateStrategyBuilderAppsV1? updateStrategyBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_daemonsetspec = new;
    }
    public function build() returns (io_k8s_api_apps_v1_DaemonSetSpec) {
        return self.io_k8s_api_apps_v1_daemonsetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withUpdateStrategy() returns DaemonSetUpdateStrategyBuilderAppsV1 {
        self.updateStrategyBuilder = new DaemonSetUpdateStrategyBuilderAppsV1(self);
        match (self.updateStrategyBuilder) {
            DaemonSetUpdateStrategyBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (DaemonSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setRevisionHistoryLimit(int _revisionHistoryLimit) returns (DaemonSetSpecBuilderAppsV1) {
        self.io_k8s_api_apps_v1_daemonsetspec.revisionHistoryLimit = _revisionHistoryLimit;
        return self;
    }
};

public type APIServiceConditionBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceCondition
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceCondition) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (
                APIServiceConditionBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition.lastTransitionTime =
            _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (APIServiceConditionBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (APIServiceConditionBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (APIServiceConditionBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (APIServiceConditionBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicecondition._type = __type;
        return self;
    }
};

public type ScaleStatusBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_ScaleStatus io_k8s_api_apps_v1beta1_scalestatus;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_scalestatus = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_ScaleStatus) {
        return self.io_k8s_api_apps_v1beta1_scalestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scalestatus.replicas = _replicas;
        return self;
    }

    public function setSelector(any _selector) returns (ScaleStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scalestatus.selector = _selector;
        return self;
    }

    public function setTargetSelector(string _targetSelector) returns (ScaleStatusBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scalestatus.targetSelector = _targetSelector;
        return self;
    }
};

public type DownwardAPIVolumeFileBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_DownwardAPIVolumeFile io_k8s_api_core_v1_downwardapivolumefile;
    public ObjectFieldSelectorBuilderCoreV1? fieldRefBuilder;

    public ResourceFieldSelectorBuilderCoreV1? resourceFieldRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_downwardapivolumefile = new;
    }
    public function build() returns (io_k8s_api_core_v1_DownwardAPIVolumeFile) {
        return self.io_k8s_api_core_v1_downwardapivolumefile;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withFieldRef() returns ObjectFieldSelectorBuilderCoreV1 {
        self.fieldRefBuilder = new ObjectFieldSelectorBuilderCoreV1(self);
        match (self.fieldRefBuilder) {
            ObjectFieldSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withResourceFieldRef() returns ResourceFieldSelectorBuilderCoreV1 {
        self.resourceFieldRefBuilder = new ResourceFieldSelectorBuilderCoreV1(self);
        match (self.resourceFieldRefBuilder) {
            ResourceFieldSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMode(int _mode) returns (DownwardAPIVolumeFileBuilderCoreV1) {
        self.io_k8s_api_core_v1_downwardapivolumefile.mode = _mode;
        return self;
    }

    public function setPath(string _path) returns (DownwardAPIVolumeFileBuilderCoreV1) {
        self.io_k8s_api_core_v1_downwardapivolumefile.path = _path;
        return self;
    }
};

public type CustomResourceDefinitionStatusBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionStatus
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionstatus;
    public CustomResourceDefinitionNamesBuilderApiextensionsV1beta1? acceptedNamesBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionstatus = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionStatus) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcedefinitionstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAcceptedNames() returns CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 {
        self.acceptedNamesBuilder = new CustomResourceDefinitionNamesBuilderApiextensionsV1beta1(self);
        match (self.acceptedNamesBuilder) {
            CustomResourceDefinitionNamesBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type DeploymentStatusBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DeploymentStatus io_k8s_api_extensions_v1beta1_deploymentstatus;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_deploymentstatus = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DeploymentStatus) {
        return self.io_k8s_api_extensions_v1beta1_deploymentstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAvailableReplicas(int _availableReplicas) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.availableReplicas = _availableReplicas;
        return self;
    }

    public function setCollisionCount(int _collisionCount) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.collisionCount = _collisionCount;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.observedGeneration = _observedGeneration;
        return self;
    }

    public function setReadyReplicas(int _readyReplicas) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.readyReplicas = _readyReplicas;
        return self;
    }

    public function setReplicas(int _replicas) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.replicas = _replicas;
        return self;
    }

    public function setUnavailableReplicas(int _unavailableReplicas) returns (DeploymentStatusBuilderExtensionsV1beta1)
    {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.unavailableReplicas = _unavailableReplicas;
        return self;
    }

    public function setUpdatedReplicas(int _updatedReplicas) returns (DeploymentStatusBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_deploymentstatus.updatedReplicas = _updatedReplicas;
        return self;
    }
};

public type ServiceSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServiceSpec io_k8s_api_core_v1_servicespec;
    public SessionAffinityConfigBuilderCoreV1? sessionAffinityConfigBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_servicespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServiceSpec) {
        return self.io_k8s_api_core_v1_servicespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSessionAffinityConfig() returns SessionAffinityConfigBuilderCoreV1 {
        self.sessionAffinityConfigBuilder = new SessionAffinityConfigBuilderCoreV1(self);
        match (self.sessionAffinityConfigBuilder) {
            SessionAffinityConfigBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setClusterIP(string _clusterIP) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.clusterIP = _clusterIP;
        return self;
    }

    public function setExternalIPs(string[] _externalIPs) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.externalIPs = _externalIPs;
        return self;
    }
    public function addExternalIP(string _value) returns ServiceSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_servicespec.externalIPs[lengthof self.io_k8s_api_core_v1_servicespec.externalIPs] =
            _value;
        return self;
    }

    public function setExternalName(string _externalName) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.externalName = _externalName;
        return self;
    }

    public function setExternalTrafficPolicy(string _externalTrafficPolicy) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.externalTrafficPolicy = _externalTrafficPolicy;
        return self;
    }

    public function setHealthCheckNodePort(int _healthCheckNodePort) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.healthCheckNodePort = _healthCheckNodePort;
        return self;
    }

    public function setLoadBalancerIP(string _loadBalancerIP) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.loadBalancerIP = _loadBalancerIP;
        return self;
    }

    public function setLoadBalancerSourceRanges(string[] _loadBalancerSourceRanges) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.loadBalancerSourceRanges = _loadBalancerSourceRanges;
        return self;
    }
    public function addLoadBalancerSourceRange(string _value) returns ServiceSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_servicespec.loadBalancerSourceRanges[lengthof self.io_k8s_api_core_v1_servicespec.
        loadBalancerSourceRanges] = _value;
        return self;
    }

    public function setPublishNotReadyAddresses(boolean _publishNotReadyAddresses) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.publishNotReadyAddresses = _publishNotReadyAddresses;
        return self;
    }

    public function setSelector(any _selector) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.selector = _selector;
        return self;
    }

    public function setSessionAffinity(string _sessionAffinity) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec.sessionAffinity = _sessionAffinity;
        return self;
    }

    public function set_type(string __type) returns (ServiceSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicespec._type = __type;
        return self;
    }
};

public type HorizontalPodAutoscalerSpecBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerSpec io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec;
    public CrossVersionObjectReferenceBuilderAutoscalingV1? scaleTargetRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerSpec) {
        return self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withScaleTargetRef() returns CrossVersionObjectReferenceBuilderAutoscalingV1 {
        self.scaleTargetRefBuilder = new CrossVersionObjectReferenceBuilderAutoscalingV1(self);
        match (self.scaleTargetRefBuilder) {
            CrossVersionObjectReferenceBuilderAutoscalingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMaxReplicas(int _maxReplicas) returns (HorizontalPodAutoscalerSpecBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec.maxReplicas = _maxReplicas;
        return self;
    }

    public function setMinReplicas(int _minReplicas) returns (HorizontalPodAutoscalerSpecBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec.minReplicas = _minReplicas;
        return self;
    }

    public function setTargetCPUUtilizationPercentage(int _targetCPUUtilizationPercentage) returns (
                HorizontalPodAutoscalerSpecBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerspec.targetCPUUtilizationPercentage =
            _targetCPUUtilizationPercentage;
        return self;
    }
};

public type DeleteOptionsBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions;
    public PreconditionsBuilderMetaV1? preconditionsBuilder;

    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPreconditions() returns PreconditionsBuilderMetaV1 {
        self.preconditionsBuilder = new PreconditionsBuilderMetaV1(self);
        match (self.preconditionsBuilder) {
            PreconditionsBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeleteOptionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions.apiVersion = _apiVersion;
        return self;
    }

    public function setGracePeriodSeconds(int _gracePeriodSeconds) returns (DeleteOptionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions.gracePeriodSeconds = _gracePeriodSeconds;
        return self;
    }

    public function setKind(string _kind) returns (DeleteOptionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions.kind = _kind;
        return self;
    }

    public function setOrphanDependents(boolean _orphanDependents) returns (DeleteOptionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions.orphanDependents = _orphanDependents;
        return self;
    }

    public function setPropagationPolicy(string _propagationPolicy) returns (DeleteOptionsBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_deleteoptions.propagationPolicy = _propagationPolicy;
        return self;
    }
};

public type CustomResourceSubresourceStatusBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceStatus
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcestatus;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcestatus = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceStatus) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type RoleBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_Role io_k8s_api_rbac_v1_role;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_role = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_Role) {
        return self.io_k8s_api_rbac_v1_role;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (RoleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_role.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (RoleBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_role.kind = _kind;
        return self;
    }
};

public type PersistentVolumeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolume io_k8s_api_core_v1_persistentvolume;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PersistentVolumeSpecBuilderCoreV1? specBuilder;

    public PersistentVolumeStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolume = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolume) {
        return self.io_k8s_api_core_v1_persistentvolume;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PersistentVolumeSpecBuilderCoreV1 {
        self.specBuilder = new PersistentVolumeSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            PersistentVolumeSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns PersistentVolumeStatusBuilderCoreV1 {
        self.statusBuilder = new PersistentVolumeStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            PersistentVolumeStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PersistentVolumeBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolume.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PersistentVolumeBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolume.kind = _kind;
        return self;
    }
};

public type PersistentVolumeStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeStatus io_k8s_api_core_v1_persistentvolumestatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumestatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeStatus) {
        return self.io_k8s_api_core_v1_persistentvolumestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMessage(string _message) returns (PersistentVolumeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumestatus.message = _message;
        return self;
    }

    public function setPhase(string _phase) returns (PersistentVolumeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumestatus.phase = _phase;
        return self;
    }

    public function setReason(string _reason) returns (PersistentVolumeStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumestatus.reason = _reason;
        return self;
    }
};

public type ContainerStateBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerState io_k8s_api_core_v1_containerstate;
    public ContainerStateRunningBuilderCoreV1? runningBuilder;

    public ContainerStateTerminatedBuilderCoreV1? terminatedBuilder;

    public ContainerStateWaitingBuilderCoreV1? waitingBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerstate = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerState) {
        return self.io_k8s_api_core_v1_containerstate;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRunning() returns ContainerStateRunningBuilderCoreV1 {
        self.runningBuilder = new ContainerStateRunningBuilderCoreV1(self);
        match (self.runningBuilder) {
            ContainerStateRunningBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTerminated() returns ContainerStateTerminatedBuilderCoreV1 {
        self.terminatedBuilder = new ContainerStateTerminatedBuilderCoreV1(self);
        match (self.terminatedBuilder) {
            ContainerStateTerminatedBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withWaiting() returns ContainerStateWaitingBuilderCoreV1 {
        self.waitingBuilder = new ContainerStateWaitingBuilderCoreV1(self);
        match (self.waitingBuilder) {
            ContainerStateWaitingBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type StatefulSetBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_StatefulSet io_k8s_api_apps_v1_statefulset;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public StatefulSetSpecBuilderAppsV1? specBuilder;

    public StatefulSetStatusBuilderAppsV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1_statefulset = new;
    }
    public function build() returns (io_k8s_api_apps_v1_StatefulSet) {
        return self.io_k8s_api_apps_v1_statefulset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns StatefulSetSpecBuilderAppsV1 {
        self.specBuilder = new StatefulSetSpecBuilderAppsV1(self);
        match (self.specBuilder) {
            StatefulSetSpecBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns StatefulSetStatusBuilderAppsV1 {
        self.statusBuilder = new StatefulSetStatusBuilderAppsV1(self);
        match (self.statusBuilder) {
            StatefulSetStatusBuilderAppsV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (StatefulSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulset.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (StatefulSetBuilderAppsV1) {
        self.io_k8s_api_apps_v1_statefulset.kind = _kind;
        return self;
    }
};

public type ScaleSpecBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_ScaleSpec io_k8s_api_apps_v1beta1_scalespec;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_scalespec = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_ScaleSpec) {
        return self.io_k8s_api_apps_v1beta1_scalespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleSpecBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_scalespec.replicas = _replicas;
        return self;
    }
};

public type NetworkPolicyPeerBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicyPeer io_k8s_api_networking_v1_networkpolicypeer;
    public IPBlockBuilderNetworkingV1? ipBlockBuilder;

    public LabelSelectorBuilderMetaV1? namespaceSelectorBuilder;

    public LabelSelectorBuilderMetaV1? podSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicypeer = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicyPeer) {
        return self.io_k8s_api_networking_v1_networkpolicypeer;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withIpBlock() returns IPBlockBuilderNetworkingV1 {
        self.ipBlockBuilder = new IPBlockBuilderNetworkingV1(self);
        match (self.ipBlockBuilder) {
            IPBlockBuilderNetworkingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNamespaceSelector() returns LabelSelectorBuilderMetaV1 {
        self.namespaceSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.namespaceSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPodSelector() returns LabelSelectorBuilderMetaV1 {
        self.podSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.podSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type JobBuilderBatchV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1_Job io_k8s_api_batch_v1_job;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public JobSpecBuilderBatchV1? specBuilder;

    public JobStatusBuilderBatchV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_batch_v1_job = new;
    }
    public function build() returns (io_k8s_api_batch_v1_Job) {
        return self.io_k8s_api_batch_v1_job;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns JobSpecBuilderBatchV1 {
        self.specBuilder = new JobSpecBuilderBatchV1(self);
        match (self.specBuilder) {
            JobSpecBuilderBatchV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns JobStatusBuilderBatchV1 {
        self.statusBuilder = new JobStatusBuilderBatchV1(self);
        match (self.statusBuilder) {
            JobStatusBuilderBatchV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (JobBuilderBatchV1) {
        self.io_k8s_api_batch_v1_job.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (JobBuilderBatchV1) {
        self.io_k8s_api_batch_v1_job.kind = _kind;
        return self;
    }
};

public type RollingUpdateDeploymentBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_RollingUpdateDeployment io_k8s_api_apps_v1beta2_rollingupdatedeployment;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_rollingupdatedeployment = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_RollingUpdateDeployment) {
        return self.io_k8s_api_apps_v1beta2_rollingupdatedeployment;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxSurge(int|string _maxSurge) returns (RollingUpdateDeploymentBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_rollingupdatedeployment.maxSurge = _maxSurge;
        return self;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (RollingUpdateDeploymentBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_rollingupdatedeployment.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type ServiceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Service io_k8s_api_core_v1_service;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ServiceSpecBuilderCoreV1? specBuilder;

    public ServiceStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_service = new;
    }
    public function build() returns (io_k8s_api_core_v1_Service) {
        return self.io_k8s_api_core_v1_service;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns ServiceSpecBuilderCoreV1 {
        self.specBuilder = new ServiceSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            ServiceSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns ServiceStatusBuilderCoreV1 {
        self.statusBuilder = new ServiceStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            ServiceStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ServiceBuilderCoreV1) {
        self.io_k8s_api_core_v1_service.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ServiceBuilderCoreV1) {
        self.io_k8s_api_core_v1_service.kind = _kind;
        return self;
    }
};

public type APIServiceBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservice;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public APIServiceSpecBuilderApiregistrationV1? specBuilder;

    public APIServiceStatusBuilderApiregistrationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservice = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservice;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns APIServiceSpecBuilderApiregistrationV1 {
        self.specBuilder = new APIServiceSpecBuilderApiregistrationV1(self);
        match (self.specBuilder) {
            APIServiceSpecBuilderApiregistrationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns APIServiceStatusBuilderApiregistrationV1 {
        self.statusBuilder = new APIServiceStatusBuilderApiregistrationV1(self);
        match (self.statusBuilder) {
            APIServiceStatusBuilderApiregistrationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (APIServiceBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservice.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (APIServiceBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_apiservice.kind = _kind;
        return self;
    }
};

public type NodeConditionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeCondition io_k8s_api_core_v1_nodecondition;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodecondition = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeCondition) {
        return self.io_k8s_api_core_v1_nodecondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastHeartbeatTime(time:Time? _lastHeartbeatTime) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition.lastHeartbeatTime = _lastHeartbeatTime;
        return self;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setMessage(string _message) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (NodeConditionBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodecondition._type = __type;
        return self;
    }
};

public type DeploymentConditionBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentCondition io_k8s_api_apps_v1beta1_deploymentcondition;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentcondition = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentCondition) {
        return self.io_k8s_api_apps_v1beta1_deploymentcondition;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLastTransitionTime(time:Time? _lastTransitionTime) returns (DeploymentConditionBuilderAppsV1beta1
                ) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition.lastTransitionTime = _lastTransitionTime;
        return self;
    }

    public function setLastUpdateTime(time:Time? _lastUpdateTime) returns (DeploymentConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition.lastUpdateTime = _lastUpdateTime;
        return self;
    }

    public function setMessage(string _message) returns (DeploymentConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition.message = _message;
        return self;
    }

    public function setReason(string _reason) returns (DeploymentConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition.reason = _reason;
        return self;
    }

    public function setStatus(string _status) returns (DeploymentConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition.status = _status;
        return self;
    }

    public function set_type(string __type) returns (DeploymentConditionBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentcondition._type = __type;
        return self;
    }
};

public type ContainerStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ContainerStatus io_k8s_api_core_v1_containerstatus;
    public ContainerStateBuilderCoreV1? lastStateBuilder;

    public ContainerStateBuilderCoreV1? stateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_containerstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_ContainerStatus) {
        return self.io_k8s_api_core_v1_containerstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withLastState() returns ContainerStateBuilderCoreV1 {
        self.lastStateBuilder = new ContainerStateBuilderCoreV1(self);
        match (self.lastStateBuilder) {
            ContainerStateBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withState() returns ContainerStateBuilderCoreV1 {
        self.stateBuilder = new ContainerStateBuilderCoreV1(self);
        match (self.stateBuilder) {
            ContainerStateBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setContainerID(string _containerID) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.containerID = _containerID;
        return self;
    }

    public function setImage(string _image) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.image = _image;
        return self;
    }

    public function setImageID(string _imageID) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.imageID = _imageID;
        return self;
    }

    public function setName(string _name) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.name = _name;
        return self;
    }

    public function setReady(boolean _ready) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.ready = _ready;
        return self;
    }

    public function setRestartCount(int _restartCount) returns (ContainerStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_containerstatus.restartCount = _restartCount;
        return self;
    }
};

public type WeightedPodAffinityTermBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_WeightedPodAffinityTerm io_k8s_api_core_v1_weightedpodaffinityterm;
    public PodAffinityTermBuilderCoreV1? podAffinityTermBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_weightedpodaffinityterm = new;
    }
    public function build() returns (io_k8s_api_core_v1_WeightedPodAffinityTerm) {
        return self.io_k8s_api_core_v1_weightedpodaffinityterm;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPodAffinityTerm() returns PodAffinityTermBuilderCoreV1 {
        self.podAffinityTermBuilder = new PodAffinityTermBuilderCoreV1(self);
        match (self.podAffinityTermBuilder) {
            PodAffinityTermBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setWeight(int _weight) returns (WeightedPodAffinityTermBuilderCoreV1) {
        self.io_k8s_api_core_v1_weightedpodaffinityterm.weight = _weight;
        return self;
    }
};

public type IngressListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressList io_k8s_api_extensions_v1beta1_ingresslist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingresslist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressList) {
        return self.io_k8s_api_extensions_v1beta1_ingresslist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (IngressListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingresslist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (IngressListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ingresslist.kind = _kind;
        return self;
    }
};

public type ObjectReferenceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ObjectReference io_k8s_api_core_v1_objectreference;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_objectreference = new;
    }
    public function build() returns (io_k8s_api_core_v1_ObjectReference) {
        return self.io_k8s_api_core_v1_objectreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.apiVersion = _apiVersion;
        return self;
    }

    public function setFieldPath(string _fieldPath) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.fieldPath = _fieldPath;
        return self;
    }

    public function setKind(string _kind) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.namespace = _namespace;
        return self;
    }

    public function setResourceVersion(string _resourceVersion) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.resourceVersion = _resourceVersion;
        return self;
    }

    public function setUid(string _uid) returns (ObjectReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectreference.uid = _uid;
        return self;
    }
};

public type PodSecurityPolicyListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_PodSecurityPolicyList io_k8s_api_extensions_v1beta1_podsecuritypolicylist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_podsecuritypolicylist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_PodSecurityPolicyList) {
        return self.io_k8s_api_extensions_v1beta1_podsecuritypolicylist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodSecurityPolicyListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicylist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodSecurityPolicyListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicylist.kind = _kind;
        return self;
    }
};

public type ServicePortBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServicePort io_k8s_api_core_v1_serviceport;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_serviceport = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServicePort) {
        return self.io_k8s_api_core_v1_serviceport;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ServicePortBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceport.name = _name;
        return self;
    }

    public function setNodePort(int _nodePort) returns (ServicePortBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceport.nodePort = _nodePort;
        return self;
    }

    public function setPort(int _port) returns (ServicePortBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceport.port = _port;
        return self;
    }

    public function setProtocol(string _protocol) returns (ServicePortBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceport.protocol = _protocol;
        return self;
    }

    public function setTargetPort(int|string _targetPort) returns (ServicePortBuilderCoreV1) {
        self.io_k8s_api_core_v1_serviceport.targetPort = _targetPort;
        return self;
    }
};

public type RollingUpdateStatefulSetStrategyBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_RollingUpdateStatefulSetStrategy
    io_k8s_api_apps_v1beta1_rollingupdatestatefulsetstrategy;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_rollingupdatestatefulsetstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_RollingUpdateStatefulSetStrategy) {
        return self.io_k8s_api_apps_v1beta1_rollingupdatestatefulsetstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPartition(int _partition) returns (RollingUpdateStatefulSetStrategyBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_rollingupdatestatefulsetstrategy.partition = _partition;
        return self;
    }
};

public type NetworkPolicyPeerBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPeer io_k8s_api_extensions_v1beta1_networkpolicypeer;
    public IPBlockBuilderExtensionsV1beta1? ipBlockBuilder;

    public LabelSelectorBuilderMetaV1? namespaceSelectorBuilder;

    public LabelSelectorBuilderMetaV1? podSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_networkpolicypeer = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_NetworkPolicyPeer) {
        return self.io_k8s_api_extensions_v1beta1_networkpolicypeer;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withIpBlock() returns IPBlockBuilderExtensionsV1beta1 {
        self.ipBlockBuilder = new IPBlockBuilderExtensionsV1beta1(self);
        match (self.ipBlockBuilder) {
            IPBlockBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNamespaceSelector() returns LabelSelectorBuilderMetaV1 {
        self.namespaceSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.namespaceSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPodSelector() returns LabelSelectorBuilderMetaV1 {
        self.podSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.podSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type VsphereVirtualDiskVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_VsphereVirtualDiskVolumeSource io_k8s_api_core_v1_vspherevirtualdiskvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_vspherevirtualdiskvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_VsphereVirtualDiskVolumeSource) {
        return self.io_k8s_api_core_v1_vspherevirtualdiskvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (VsphereVirtualDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_vspherevirtualdiskvolumesource.fsType = _fsType;
        return self;
    }

    public function setStoragePolicyID(string _storagePolicyID) returns (VsphereVirtualDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_vspherevirtualdiskvolumesource.storagePolicyID = _storagePolicyID;
        return self;
    }

    public function setStoragePolicyName(string _storagePolicyName) returns (VsphereVirtualDiskVolumeSourceBuilderCoreV1
                ) {
        self.io_k8s_api_core_v1_vspherevirtualdiskvolumesource.storagePolicyName = _storagePolicyName;
        return self;
    }

    public function setVolumePath(string _volumePath) returns (VsphereVirtualDiskVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_vspherevirtualdiskvolumesource.volumePath = _volumePath;
        return self;
    }
};

public type JSONBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_json;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_json = new;
    }
    public function build() returns (io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_json;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRaw(string _Raw) returns (JSONBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_json.Raw = _Raw;
        return self;
    }
};

public type ListMetaBuilderMetaV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta io_k8s_apimachinery_pkg_apis_meta_v1_listmeta;
    public new(fluentBuilder) {
        io_k8s_apimachinery_pkg_apis_meta_v1_listmeta = new;
    }
    public function build() returns (io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta) {
        return self.io_k8s_apimachinery_pkg_apis_meta_v1_listmeta;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function set_continue(string __continue) returns (ListMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_listmeta._continue = __continue;
        return self;
    }

    public function setResourceVersion(string _resourceVersion) returns (ListMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_listmeta.resourceVersion = _resourceVersion;
        return self;
    }

    public function setSelfLink(string _selfLink) returns (ListMetaBuilderMetaV1) {
        self.io_k8s_apimachinery_pkg_apis_meta_v1_listmeta.selfLink = _selfLink;
        return self;
    }
};

public type NodeSelectorRequirementBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeSelectorRequirement io_k8s_api_core_v1_nodeselectorrequirement;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeselectorrequirement = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeSelectorRequirement) {
        return self.io_k8s_api_core_v1_nodeselectorrequirement;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setKey(string _key) returns (NodeSelectorRequirementBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeselectorrequirement.key = _key;
        return self;
    }

    public function setOperator(string _operator) returns (NodeSelectorRequirementBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeselectorrequirement.operator = _operator;
        return self;
    }

    public function setValues(string[] _values) returns (NodeSelectorRequirementBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeselectorrequirement.values = _values;
        return self;
    }
    public function addValue(string _value) returns NodeSelectorRequirementBuilderCoreV1 {
        self.io_k8s_api_core_v1_nodeselectorrequirement.values[lengthof self.io_k8s_api_core_v1_nodeselectorrequirement.
        values] = _value;
        return self;
    }
};

public type ServiceListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ServiceList io_k8s_api_core_v1_servicelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_servicelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ServiceList) {
        return self.io_k8s_api_core_v1_servicelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ServiceListBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ServiceListBuilderCoreV1) {
        self.io_k8s_api_core_v1_servicelist.kind = _kind;
        return self;
    }
};

public type ConfigMapProjectionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMapProjection io_k8s_api_core_v1_configmapprojection;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmapprojection = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMapProjection) {
        return self.io_k8s_api_core_v1_configmapprojection;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ConfigMapProjectionBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapprojection.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (ConfigMapProjectionBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapprojection.optional = _optional;
        return self;
    }
};

public type ResourceQuotaStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceQuotaStatus io_k8s_api_core_v1_resourcequotastatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcequotastatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceQuotaStatus) {
        return self.io_k8s_api_core_v1_resourcequotastatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHard(any _hard) returns (ResourceQuotaStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotastatus.hard = _hard;
        return self;
    }

    public function setUsed(any _used) returns (ResourceQuotaStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotastatus.used = _used;
        return self;
    }
};

public type SubjectAccessReviewBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SubjectAccessReview io_k8s_api_authorization_v1_subjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SubjectAccessReviewSpecBuilderAuthorizationV1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_subjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SubjectAccessReview) {
        return self.io_k8s_api_authorization_v1_subjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SubjectAccessReviewSpecBuilderAuthorizationV1 {
        self.specBuilder = new SubjectAccessReviewSpecBuilderAuthorizationV1(self);
        match (self.specBuilder) {
            SubjectAccessReviewSpecBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_subjectaccessreview.kind = _kind;
        return self;
    }
};

public type IngressStatusBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IngressStatus io_k8s_api_extensions_v1beta1_ingressstatus;
    public LoadBalancerStatusBuilderCoreV1? loadBalancerBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ingressstatus = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IngressStatus) {
        return self.io_k8s_api_extensions_v1beta1_ingressstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withLoadBalancer() returns LoadBalancerStatusBuilderCoreV1 {
        self.loadBalancerBuilder = new LoadBalancerStatusBuilderCoreV1(self);
        match (self.loadBalancerBuilder) {
            LoadBalancerStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type DeploymentRollbackBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentRollback io_k8s_api_apps_v1beta1_deploymentrollback;
    public RollbackConfigBuilderAppsV1beta1? rollbackToBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentrollback = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentRollback) {
        return self.io_k8s_api_apps_v1beta1_deploymentrollback;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollbackTo() returns RollbackConfigBuilderAppsV1beta1 {
        self.rollbackToBuilder = new RollbackConfigBuilderAppsV1beta1(self);
        match (self.rollbackToBuilder) {
            RollbackConfigBuilderAppsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentRollbackBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentrollback.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentRollbackBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentrollback.kind = _kind;
        return self;
    }

    public function setName(string _name) returns (DeploymentRollbackBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentrollback.name = _name;
        return self;
    }

    public function setUpdatedAnnotations(any _updatedAnnotations) returns (DeploymentRollbackBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentrollback.updatedAnnotations = _updatedAnnotations;
        return self;
    }
};

public type EndpointsListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EndpointsList io_k8s_api_core_v1_endpointslist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_endpointslist = new;
    }
    public function build() returns (io_k8s_api_core_v1_EndpointsList) {
        return self.io_k8s_api_core_v1_endpointslist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (EndpointsListBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointslist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (EndpointsListBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointslist.kind = _kind;
        return self;
    }
};

public type EventBuilderEventsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_events_v1beta1_Event io_k8s_api_events_v1beta1_event;
    public EventSourceBuilderCoreV1? deprecatedSourceBuilder;

    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ObjectReferenceBuilderCoreV1? regardingBuilder;

    public ObjectReferenceBuilderCoreV1? relatedBuilder;

    public EventSeriesBuilderEventsV1beta1? seriesBuilder;

    public new(fluentBuilder) {
        io_k8s_api_events_v1beta1_event = new;
    }
    public function build() returns (io_k8s_api_events_v1beta1_Event) {
        return self.io_k8s_api_events_v1beta1_event;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withDeprecatedSource() returns EventSourceBuilderCoreV1 {
        self.deprecatedSourceBuilder = new EventSourceBuilderCoreV1(self);
        match (self.deprecatedSourceBuilder) {
            EventSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRegarding() returns ObjectReferenceBuilderCoreV1 {
        self.regardingBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.regardingBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRelated() returns ObjectReferenceBuilderCoreV1 {
        self.relatedBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.relatedBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSeries() returns EventSeriesBuilderEventsV1beta1 {
        self.seriesBuilder = new EventSeriesBuilderEventsV1beta1(self);
        match (self.seriesBuilder) {
            EventSeriesBuilderEventsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAction(string _action) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.action = _action;
        return self;
    }

    public function setApiVersion(string _apiVersion) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.apiVersion = _apiVersion;
        return self;
    }

    public function setDeprecatedCount(int _deprecatedCount) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.deprecatedCount = _deprecatedCount;
        return self;
    }

    public function setDeprecatedFirstTimestamp(time:Time? _deprecatedFirstTimestamp) returns (EventBuilderEventsV1beta1
                ) {
        self.io_k8s_api_events_v1beta1_event.deprecatedFirstTimestamp = _deprecatedFirstTimestamp;
        return self;
    }

    public function setDeprecatedLastTimestamp(time:Time? _deprecatedLastTimestamp) returns (EventBuilderEventsV1beta1)
    {
        self.io_k8s_api_events_v1beta1_event.deprecatedLastTimestamp = _deprecatedLastTimestamp;
        return self;
    }

    public function setEventTime(time:Time? _eventTime) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.eventTime = _eventTime;
        return self;
    }

    public function setKind(string _kind) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.kind = _kind;
        return self;
    }

    public function setNote(string _note) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.note = _note;
        return self;
    }

    public function setReason(string _reason) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.reason = _reason;
        return self;
    }

    public function setReportingController(string _reportingController) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.reportingController = _reportingController;
        return self;
    }

    public function setReportingInstance(string _reportingInstance) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event.reportingInstance = _reportingInstance;
        return self;
    }

    public function set_type(string __type) returns (EventBuilderEventsV1beta1) {
        self.io_k8s_api_events_v1beta1_event._type = __type;
        return self;
    }
};

public type HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerSpec
    io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerspec;
    public CrossVersionObjectReferenceBuilderAutoscalingV2beta1? scaleTargetRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerspec = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerSpec) {
        return self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withScaleTargetRef() returns CrossVersionObjectReferenceBuilderAutoscalingV2beta1 {
        self.scaleTargetRefBuilder = new CrossVersionObjectReferenceBuilderAutoscalingV2beta1(self);
        match (self.scaleTargetRefBuilder) {
            CrossVersionObjectReferenceBuilderAutoscalingV2beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMaxReplicas(int _maxReplicas) returns (HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerspec.maxReplicas = _maxReplicas;
        return self;
    }

    public function setMinReplicas(int _minReplicas) returns (HorizontalPodAutoscalerSpecBuilderAutoscalingV2beta1) {
        self.io_k8s_api_autoscaling_v2beta1_horizontalpodautoscalerspec.minReplicas = _minReplicas;
        return self;
    }
};

public type FCVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_FCVolumeSource io_k8s_api_core_v1_fcvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_fcvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_FCVolumeSource) {
        return self.io_k8s_api_core_v1_fcvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setFsType(string _fsType) returns (FCVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_fcvolumesource.fsType = _fsType;
        return self;
    }

    public function setLun(int _lun) returns (FCVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_fcvolumesource.lun = _lun;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (FCVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_fcvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setTargetWWNs(string[] _targetWWNs) returns (FCVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_fcvolumesource.targetWWNs = _targetWWNs;
        return self;
    }
    public function addTargetWWN(string _value) returns FCVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_fcvolumesource.targetWWNs[lengthof self.io_k8s_api_core_v1_fcvolumesource.targetWWNs] =
            _value;
        return self;
    }

    public function setWwids(string[] _wwids) returns (FCVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_fcvolumesource.wwids = _wwids;
        return self;
    }
    public function addWwid(string _value) returns FCVolumeSourceBuilderCoreV1 {
        self.io_k8s_api_core_v1_fcvolumesource.wwids[lengthof self.io_k8s_api_core_v1_fcvolumesource.wwids] = _value;
        return self;
    }
};

public type SelfSubjectRulesReviewSpecBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SelfSubjectRulesReviewSpec io_k8s_api_authorization_v1_selfsubjectrulesreviewspec
    ;
    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_selfsubjectrulesreviewspec = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SelfSubjectRulesReviewSpec) {
        return self.io_k8s_api_authorization_v1_selfsubjectrulesreviewspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setNamespace(string _namespace) returns (SelfSubjectRulesReviewSpecBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_selfsubjectrulesreviewspec.namespace = _namespace;
        return self;
    }
};

public type KeyToPathBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_KeyToPath io_k8s_api_core_v1_keytopath;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_keytopath = new;
    }
    public function build() returns (io_k8s_api_core_v1_KeyToPath) {
        return self.io_k8s_api_core_v1_keytopath;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setKey(string _key) returns (KeyToPathBuilderCoreV1) {
        self.io_k8s_api_core_v1_keytopath.key = _key;
        return self;
    }

    public function setMode(int _mode) returns (KeyToPathBuilderCoreV1) {
        self.io_k8s_api_core_v1_keytopath.mode = _mode;
        return self;
    }

    public function setPath(string _path) returns (KeyToPathBuilderCoreV1) {
        self.io_k8s_api_core_v1_keytopath.path = _path;
        return self;
    }
};

public type SelfSubjectAccessReviewBuilderAuthorizationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_authorization_v1_SelfSubjectAccessReview io_k8s_api_authorization_v1_selfsubjectaccessreview;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public SelfSubjectAccessReviewSpecBuilderAuthorizationV1? specBuilder;

    public SubjectAccessReviewStatusBuilderAuthorizationV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_authorization_v1_selfsubjectaccessreview = new;
    }
    public function build() returns (io_k8s_api_authorization_v1_SelfSubjectAccessReview) {
        return self.io_k8s_api_authorization_v1_selfsubjectaccessreview;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns SelfSubjectAccessReviewSpecBuilderAuthorizationV1 {
        self.specBuilder = new SelfSubjectAccessReviewSpecBuilderAuthorizationV1(self);
        match (self.specBuilder) {
            SelfSubjectAccessReviewSpecBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns SubjectAccessReviewStatusBuilderAuthorizationV1 {
        self.statusBuilder = new SubjectAccessReviewStatusBuilderAuthorizationV1(self);
        match (self.statusBuilder) {
            SubjectAccessReviewStatusBuilderAuthorizationV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (SelfSubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_selfsubjectaccessreview.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (SelfSubjectAccessReviewBuilderAuthorizationV1) {
        self.io_k8s_api_authorization_v1_selfsubjectaccessreview.kind = _kind;
        return self;
    }
};

public type IPBlockBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_IPBlock io_k8s_api_extensions_v1beta1_ipblock;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_ipblock = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_IPBlock) {
        return self.io_k8s_api_extensions_v1beta1_ipblock;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCidr(string _cidr) returns (IPBlockBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ipblock.cidr = _cidr;
        return self;
    }

    public function setExcept(string[] _except) returns (IPBlockBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_ipblock.except = _except;
        return self;
    }
    public function addExcep(string _value) returns IPBlockBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_ipblock.except[lengthof self.io_k8s_api_extensions_v1beta1_ipblock.except] =
            _value;
        return self;
    }
};

public type ProjectedVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ProjectedVolumeSource io_k8s_api_core_v1_projectedvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_projectedvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ProjectedVolumeSource) {
        return self.io_k8s_api_core_v1_projectedvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDefaultMode(int _defaultMode) returns (ProjectedVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_projectedvolumesource.defaultMode = _defaultMode;
        return self;
    }
};

public type PersistentVolumeClaimStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeClaimStatus io_k8s_api_core_v1_persistentvolumeclaimstatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumeclaimstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeClaimStatus) {
        return self.io_k8s_api_core_v1_persistentvolumeclaimstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setAccessModes(string[] _accessModes) returns (PersistentVolumeClaimStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimstatus.accessModes = _accessModes;
        return self;
    }
    public function addAccessMode(string _value) returns PersistentVolumeClaimStatusBuilderCoreV1 {
        self.io_k8s_api_core_v1_persistentvolumeclaimstatus.accessModes[lengthof self.
        io_k8s_api_core_v1_persistentvolumeclaimstatus.accessModes] = _value;
        return self;
    }

    public function setCapacity(any _capacity) returns (PersistentVolumeClaimStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimstatus.capacity = _capacity;
        return self;
    }

    public function setPhase(string _phase) returns (PersistentVolumeClaimStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumeclaimstatus.phase = _phase;
        return self;
    }
};

public type ResourceQuotaSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceQuotaSpec io_k8s_api_core_v1_resourcequotaspec;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcequotaspec = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceQuotaSpec) {
        return self.io_k8s_api_core_v1_resourcequotaspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setHard(any _hard) returns (ResourceQuotaSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotaspec.hard = _hard;
        return self;
    }

    public function setScopes(string[] _scopes) returns (ResourceQuotaSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotaspec.scopes = _scopes;
        return self;
    }
    public function addScope(string _value) returns ResourceQuotaSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_resourcequotaspec.scopes[lengthof self.io_k8s_api_core_v1_resourcequotaspec.scopes] =
            _value;
        return self;
    }
};

public type NodeAffinityBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeAffinity io_k8s_api_core_v1_nodeaffinity;
    public NodeSelectorBuilderCoreV1? requiredDuringSchedulingIgnoredDuringExecutionBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeaffinity = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeAffinity) {
        return self.io_k8s_api_core_v1_nodeaffinity;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRequiredDuringSchedulingIgnoredDuringExecution() returns NodeSelectorBuilderCoreV1 {
        self.requiredDuringSchedulingIgnoredDuringExecutionBuilder = new NodeSelectorBuilderCoreV1(self);
        match (self.requiredDuringSchedulingIgnoredDuringExecutionBuilder) {
            NodeSelectorBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type RollingUpdateDaemonSetBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_RollingUpdateDaemonSet io_k8s_api_extensions_v1beta1_rollingupdatedaemonset;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_rollingupdatedaemonset = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_RollingUpdateDaemonSet) {
        return self.io_k8s_api_extensions_v1beta1_rollingupdatedaemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (
                RollingUpdateDaemonSetBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_rollingupdatedaemonset.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type SecretReferenceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretReference io_k8s_api_core_v1_secretreference;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretreference = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretReference) {
        return self.io_k8s_api_core_v1_secretreference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (SecretReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretreference.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (SecretReferenceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretreference.namespace = _namespace;
        return self;
    }
};

public type EndpointAddressBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_EndpointAddress io_k8s_api_core_v1_endpointaddress;
    public ObjectReferenceBuilderCoreV1? targetRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_endpointaddress = new;
    }
    public function build() returns (io_k8s_api_core_v1_EndpointAddress) {
        return self.io_k8s_api_core_v1_endpointaddress;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withTargetRef() returns ObjectReferenceBuilderCoreV1 {
        self.targetRefBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.targetRefBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setHostname(string _hostname) returns (EndpointAddressBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointaddress.hostname = _hostname;
        return self;
    }

    public function setIp(string _ip) returns (EndpointAddressBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointaddress.ip = _ip;
        return self;
    }

    public function setNodeName(string _nodeName) returns (EndpointAddressBuilderCoreV1) {
        self.io_k8s_api_core_v1_endpointaddress.nodeName = _nodeName;
        return self;
    }
};

public type HorizontalPodAutoscalerStatusBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerStatus
    io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerStatus) {
        return self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setCurrentCPUUtilizationPercentage(int _currentCPUUtilizationPercentage) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus.currentCPUUtilizationPercentage =
            _currentCPUUtilizationPercentage;
        return self;
    }

    public function setCurrentReplicas(int _currentReplicas) returns (HorizontalPodAutoscalerStatusBuilderAutoscalingV1)
    {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus.currentReplicas = _currentReplicas;
        return self;
    }

    public function setDesiredReplicas(int _desiredReplicas) returns (HorizontalPodAutoscalerStatusBuilderAutoscalingV1)
    {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus.desiredReplicas = _desiredReplicas;
        return self;
    }

    public function setLastScaleTime(time:Time? _lastScaleTime) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus.lastScaleTime = _lastScaleTime;
        return self;
    }

    public function setObservedGeneration(int _observedGeneration) returns (
                HorizontalPodAutoscalerStatusBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerstatus.observedGeneration = _observedGeneration;
        return self;
    }
};

public type JobStatusBuilderBatchV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_batch_v1_JobStatus io_k8s_api_batch_v1_jobstatus;
    public new(fluentBuilder) {
        io_k8s_api_batch_v1_jobstatus = new;
    }
    public function build() returns (io_k8s_api_batch_v1_JobStatus) {
        return self.io_k8s_api_batch_v1_jobstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setActive(int _active) returns (JobStatusBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobstatus.active = _active;
        return self;
    }

    public function setCompletionTime(time:Time? _completionTime) returns (JobStatusBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobstatus.completionTime = _completionTime;
        return self;
    }

    public function setFailed(int _failed) returns (JobStatusBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobstatus.failed = _failed;
        return self;
    }

    public function setStartTime(time:Time? _startTime) returns (JobStatusBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobstatus.startTime = _startTime;
        return self;
    }

    public function setSucceeded(int _succeeded) returns (JobStatusBuilderBatchV1) {
        self.io_k8s_api_batch_v1_jobstatus.succeeded = _succeeded;
        return self;
    }
};

public type NodeSelectorTermBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeSelectorTerm io_k8s_api_core_v1_nodeselectorterm;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeselectorterm = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeSelectorTerm) {
        return self.io_k8s_api_core_v1_nodeselectorterm;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type VolumeProjectionBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_VolumeProjection io_k8s_api_core_v1_volumeprojection;
    public ConfigMapProjectionBuilderCoreV1? configMapBuilder;

    public DownwardAPIProjectionBuilderCoreV1? downwardAPIBuilder;

    public SecretProjectionBuilderCoreV1? secretBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_volumeprojection = new;
    }
    public function build() returns (io_k8s_api_core_v1_VolumeProjection) {
        return self.io_k8s_api_core_v1_volumeprojection;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withConfigMap() returns ConfigMapProjectionBuilderCoreV1 {
        self.configMapBuilder = new ConfigMapProjectionBuilderCoreV1(self);
        match (self.configMapBuilder) {
            ConfigMapProjectionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withDownwardAPI() returns DownwardAPIProjectionBuilderCoreV1 {
        self.downwardAPIBuilder = new DownwardAPIProjectionBuilderCoreV1(self);
        match (self.downwardAPIBuilder) {
            DownwardAPIProjectionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSecret() returns SecretProjectionBuilderCoreV1 {
        self.secretBuilder = new SecretProjectionBuilderCoreV1(self);
        match (self.secretBuilder) {
            SecretProjectionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type DaemonSetListBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_DaemonSetList io_k8s_api_extensions_v1beta1_daemonsetlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_daemonsetlist = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_DaemonSetList) {
        return self.io_k8s_api_extensions_v1beta1_daemonsetlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DaemonSetListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DaemonSetListBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_daemonsetlist.kind = _kind;
        return self;
    }
};

public type HTTPIngressPathBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_HTTPIngressPath io_k8s_api_extensions_v1beta1_httpingresspath;
    public IngressBackendBuilderExtensionsV1beta1? backendBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_httpingresspath = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_HTTPIngressPath) {
        return self.io_k8s_api_extensions_v1beta1_httpingresspath;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withBackend() returns IngressBackendBuilderExtensionsV1beta1 {
        self.backendBuilder = new IngressBackendBuilderExtensionsV1beta1(self);
        match (self.backendBuilder) {
            IngressBackendBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setPath(string _path) returns (HTTPIngressPathBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_httpingresspath.path = _path;
        return self;
    }
};

public type PodDisruptionBudgetSpecBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudgetSpec io_k8s_api_policy_v1beta1_poddisruptionbudgetspec;
    public LabelSelectorBuilderMetaV1? selectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_poddisruptionbudgetspec = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodDisruptionBudgetSpec) {
        return self.io_k8s_api_policy_v1beta1_poddisruptionbudgetspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSelector() returns LabelSelectorBuilderMetaV1 {
        self.selectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.selectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (PodDisruptionBudgetSpecBuilderPolicyV1beta1)
    {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetspec.maxUnavailable = _maxUnavailable;
        return self;
    }

    public function setMinAvailable(int|string _minAvailable) returns (PodDisruptionBudgetSpecBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudgetspec.minAvailable = _minAvailable;
        return self;
    }
};

public type DeploymentListBuilderAppsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta1_DeploymentList io_k8s_api_apps_v1beta1_deploymentlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta1_deploymentlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta1_DeploymentList) {
        return self.io_k8s_api_apps_v1beta1_deploymentlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentListBuilderAppsV1beta1) {
        self.io_k8s_api_apps_v1beta1_deploymentlist.kind = _kind;
        return self;
    }
};

public type NodeBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Node io_k8s_api_core_v1_node;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public NodeSpecBuilderCoreV1? specBuilder;

    public NodeStatusBuilderCoreV1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_node = new;
    }
    public function build() returns (io_k8s_api_core_v1_Node) {
        return self.io_k8s_api_core_v1_node;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns NodeSpecBuilderCoreV1 {
        self.specBuilder = new NodeSpecBuilderCoreV1(self);
        match (self.specBuilder) {
            NodeSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns NodeStatusBuilderCoreV1 {
        self.statusBuilder = new NodeStatusBuilderCoreV1(self);
        match (self.statusBuilder) {
            NodeStatusBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NodeBuilderCoreV1) {
        self.io_k8s_api_core_v1_node.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NodeBuilderCoreV1) {
        self.io_k8s_api_core_v1_node.kind = _kind;
        return self;
    }
};

public type DownwardAPIVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_DownwardAPIVolumeSource io_k8s_api_core_v1_downwardapivolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_downwardapivolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_DownwardAPIVolumeSource) {
        return self.io_k8s_api_core_v1_downwardapivolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDefaultMode(int _defaultMode) returns (DownwardAPIVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_downwardapivolumesource.defaultMode = _defaultMode;
        return self;
    }
};

public type ScaleStatusBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_ScaleStatus io_k8s_api_autoscaling_v1_scalestatus;
    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_scalestatus = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_ScaleStatus) {
        return self.io_k8s_api_autoscaling_v1_scalestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleStatusBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_scalestatus.replicas = _replicas;
        return self;
    }

    public function setSelector(string _selector) returns (ScaleStatusBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_scalestatus.selector = _selector;
        return self;
    }
};

public type JSONSchemaPropsBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops;
    public JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1? additionalItemsBuilder;

    public JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1? additionalPropertiesBuilder;

    public JSONBuilderApiextensionsV1beta1? defaultBuilder;

    public JSONBuilderApiextensionsV1beta1? exampleBuilder;

    public ExternalDocumentationBuilderApiextensionsV1beta1? externalDocsBuilder;

    public JSONSchemaPropsOrArrayBuilderApiextensionsV1beta1? itemsBuilder;

    public JSONSchemaPropsBuilderApiextensionsV1beta1? notBuilder;

    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops = new;
    }
    public function build() returns (io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAdditionalItems() returns JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1 {
        self.additionalItemsBuilder = new JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1(self);
        match (self.additionalItemsBuilder) {
            JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withAdditionalProperties() returns JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1 {
        self.additionalPropertiesBuilder = new JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1(self);
        match (self.additionalPropertiesBuilder) {
            JSONSchemaPropsOrBoolBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withDefault() returns JSONBuilderApiextensionsV1beta1 {
        self.defaultBuilder = new JSONBuilderApiextensionsV1beta1(self);
        match (self.defaultBuilder) {
            JSONBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withExample() returns JSONBuilderApiextensionsV1beta1 {
        self.exampleBuilder = new JSONBuilderApiextensionsV1beta1(self);
        match (self.exampleBuilder) {
            JSONBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withExternalDocs() returns ExternalDocumentationBuilderApiextensionsV1beta1 {
        self.externalDocsBuilder = new ExternalDocumentationBuilderApiextensionsV1beta1(self);
        match (self.externalDocsBuilder) {
            ExternalDocumentationBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withItems() returns JSONSchemaPropsOrArrayBuilderApiextensionsV1beta1 {
        self.itemsBuilder = new JSONSchemaPropsOrArrayBuilderApiextensionsV1beta1(self);
        match (self.itemsBuilder) {
            JSONSchemaPropsOrArrayBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNot() returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.notBuilder = new JSONSchemaPropsBuilderApiextensionsV1beta1(self);
        match (self.notBuilder) {
            JSONSchemaPropsBuilderApiextensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_ref(string __ref) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops._ref = __ref;
        return self;
    }

    public function set_schema(string __schema) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops._schema = __schema;
        return self;
    }

    public function setDefinitions(any _definitions) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.definitions = _definitions;
        return self;
    }

    public function setDependencies(any _dependencies) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.dependencies = _dependencies;
        return self;
    }

    public function setDescription(string _description) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.description = _description;
        return self;
    }

    public function setExclusiveMaximum(boolean _exclusiveMaximum) returns (JSONSchemaPropsBuilderApiextensionsV1beta1)
    {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.exclusiveMaximum =
            _exclusiveMaximum;
        return self;
    }

    public function setExclusiveMinimum(boolean _exclusiveMinimum) returns (JSONSchemaPropsBuilderApiextensionsV1beta1)
    {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.exclusiveMinimum =
            _exclusiveMinimum;
        return self;
    }

    public function setFormat(string _format) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.format = _format;
        return self;
    }

    public function setId(string _id) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.id = _id;
        return self;
    }

    public function setMaxItems(int _maxItems) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.maxItems = _maxItems;
        return self;
    }

    public function setMaxLength(int _maxLength) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.maxLength = _maxLength;
        return self;
    }

    public function setMaxProperties(int _maxProperties) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.maxProperties =
            _maxProperties;
        return self;
    }

    public function setMaximum(float _maximum) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.maximum = _maximum;
        return self;
    }

    public function setMinItems(int _minItems) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.minItems = _minItems;
        return self;
    }

    public function setMinLength(int _minLength) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.minLength = _minLength;
        return self;
    }

    public function setMinProperties(int _minProperties) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.minProperties =
            _minProperties;
        return self;
    }

    public function setMinimum(float _minimum) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.minimum = _minimum;
        return self;
    }

    public function setMultipleOf(float _multipleOf) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.multipleOf = _multipleOf;
        return self;
    }

    public function setPattern(string _pattern) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.pattern = _pattern;
        return self;
    }

    public function setPatternProperties(any _patternProperties) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.patternProperties =
            _patternProperties;
        return self;
    }

    public function setProperties(any _properties) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.properties = _properties;
        return self;
    }

    public function setRequired(string[] _required) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.required = _required;
        return self;
    }
    public function addRequire(string _value) returns JSONSchemaPropsBuilderApiextensionsV1beta1 {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.required[lengthof self.
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.required] = _value;
        return self;
    }

    public function setTitle(string _title) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.title = _title;
        return self;
    }

    public function set_type(string __type) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops._type = __type;
        return self;
    }

    public function setUniqueItems(boolean _uniqueItems) returns (JSONSchemaPropsBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_jsonschemaprops.uniqueItems = _uniqueItems;
        return self;
    }
};

public type DeploymentListBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_DeploymentList io_k8s_api_apps_v1beta2_deploymentlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_deploymentlist = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_DeploymentList) {
        return self.io_k8s_api_apps_v1beta2_deploymentlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (DeploymentListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (DeploymentListBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_deploymentlist.kind = _kind;
        return self;
    }
};

public type APIServiceStatusBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceStatus
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicestatus;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicestatus = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceStatus) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type ObjectFieldSelectorBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ObjectFieldSelector io_k8s_api_core_v1_objectfieldselector;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_objectfieldselector = new;
    }
    public function build() returns (io_k8s_api_core_v1_ObjectFieldSelector) {
        return self.io_k8s_api_core_v1_objectfieldselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiVersion(string _apiVersion) returns (ObjectFieldSelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectfieldselector.apiVersion = _apiVersion;
        return self;
    }

    public function setFieldPath(string _fieldPath) returns (ObjectFieldSelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_objectfieldselector.fieldPath = _fieldPath;
        return self;
    }
};

public type PodTemplateListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodTemplateList io_k8s_api_core_v1_podtemplatelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podtemplatelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodTemplateList) {
        return self.io_k8s_api_core_v1_podtemplatelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodTemplateListBuilderCoreV1) {
        self.io_k8s_api_core_v1_podtemplatelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodTemplateListBuilderCoreV1) {
        self.io_k8s_api_core_v1_podtemplatelist.kind = _kind;
        return self;
    }
};

public type RuleWithOperationsBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_RuleWithOperations
    io_k8s_api_admissionregistration_v1beta1_rulewithoperations;
    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_rulewithoperations = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_RuleWithOperations) {
        return self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setApiGroups(string[] _apiGroups) returns (RuleWithOperationsBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiGroups = _apiGroups;
        return self;
    }
    public function addApiGroup(string _value) returns RuleWithOperationsBuilderAdmissionregistrationV1beta1 {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiGroups[lengthof self.
        io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiGroups] = _value;
        return self;
    }

    public function setApiVersions(string[] _apiVersions) returns (RuleWithOperationsBuilderAdmissionregistrationV1beta1
                ) {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiVersions = _apiVersions;
        return self;
    }
    public function addApiVersion(string _value) returns RuleWithOperationsBuilderAdmissionregistrationV1beta1 {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiVersions[lengthof self.
        io_k8s_api_admissionregistration_v1beta1_rulewithoperations.apiVersions] = _value;
        return self;
    }

    public function setOperations(string[] _operations) returns (RuleWithOperationsBuilderAdmissionregistrationV1beta1)
    {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.operations = _operations;
        return self;
    }
    public function addOperation(string _value) returns RuleWithOperationsBuilderAdmissionregistrationV1beta1 {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.operations[lengthof self.
        io_k8s_api_admissionregistration_v1beta1_rulewithoperations.operations] = _value;
        return self;
    }

    public function setResources(string[] _resources) returns (RuleWithOperationsBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.resources = _resources;
        return self;
    }
    public function addResource(string _value) returns RuleWithOperationsBuilderAdmissionregistrationV1beta1 {
        self.io_k8s_api_admissionregistration_v1beta1_rulewithoperations.resources[lengthof self.
        io_k8s_api_admissionregistration_v1beta1_rulewithoperations.resources] = _value;
        return self;
    }
};

public type CertificateSigningRequestBuilderCertificatesV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequest
    io_k8s_api_certificates_v1beta1_certificatesigningrequest;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public CertificateSigningRequestSpecBuilderCertificatesV1beta1? specBuilder;

    public CertificateSigningRequestStatusBuilderCertificatesV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_certificates_v1beta1_certificatesigningrequest = new;
    }
    public function build() returns (io_k8s_api_certificates_v1beta1_CertificateSigningRequest) {
        return self.io_k8s_api_certificates_v1beta1_certificatesigningrequest;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns CertificateSigningRequestSpecBuilderCertificatesV1beta1 {
        self.specBuilder = new CertificateSigningRequestSpecBuilderCertificatesV1beta1(self);
        match (self.specBuilder) {
            CertificateSigningRequestSpecBuilderCertificatesV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns CertificateSigningRequestStatusBuilderCertificatesV1beta1 {
        self.statusBuilder = new CertificateSigningRequestStatusBuilderCertificatesV1beta1(self);
        match (self.statusBuilder) {
            CertificateSigningRequestStatusBuilderCertificatesV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (CertificateSigningRequestBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequest.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (CertificateSigningRequestBuilderCertificatesV1beta1) {
        self.io_k8s_api_certificates_v1beta1_certificatesigningrequest.kind = _kind;
        return self;
    }
};

public type HandlerBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Handler io_k8s_api_core_v1_handler;
    public ExecActionBuilderCoreV1? execBuilder;

    public HTTPGetActionBuilderCoreV1? httpGetBuilder;

    public TCPSocketActionBuilderCoreV1? tcpSocketBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_handler = new;
    }
    public function build() returns (io_k8s_api_core_v1_Handler) {
        return self.io_k8s_api_core_v1_handler;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withExec() returns ExecActionBuilderCoreV1 {
        self.execBuilder = new ExecActionBuilderCoreV1(self);
        match (self.execBuilder) {
            ExecActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withHttpGet() returns HTTPGetActionBuilderCoreV1 {
        self.httpGetBuilder = new HTTPGetActionBuilderCoreV1(self);
        match (self.httpGetBuilder) {
            HTTPGetActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTcpSocket() returns TCPSocketActionBuilderCoreV1 {
        self.tcpSocketBuilder = new TCPSocketActionBuilderCoreV1(self);
        match (self.tcpSocketBuilder) {
            TCPSocketActionBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type BindingBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Binding io_k8s_api_core_v1_binding;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public ObjectReferenceBuilderCoreV1? targetBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_binding = new;
    }
    public function build() returns (io_k8s_api_core_v1_Binding) {
        return self.io_k8s_api_core_v1_binding;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withTarget() returns ObjectReferenceBuilderCoreV1 {
        self.targetBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.targetBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (BindingBuilderCoreV1) {
        self.io_k8s_api_core_v1_binding.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (BindingBuilderCoreV1) {
        self.io_k8s_api_core_v1_binding.kind = _kind;
        return self;
    }
};

public type PersistentVolumeSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PersistentVolumeSpec io_k8s_api_core_v1_persistentvolumespec;
    public AWSElasticBlockStoreVolumeSourceBuilderCoreV1? awsElasticBlockStoreBuilder;

    public AzureDiskVolumeSourceBuilderCoreV1? azureDiskBuilder;

    public AzureFilePersistentVolumeSourceBuilderCoreV1? azureFileBuilder;

    public CephFSPersistentVolumeSourceBuilderCoreV1? cephfsBuilder;

    public CinderVolumeSourceBuilderCoreV1? cinderBuilder;

    public ObjectReferenceBuilderCoreV1? claimRefBuilder;

    public CSIPersistentVolumeSourceBuilderCoreV1? csiBuilder;

    public FCVolumeSourceBuilderCoreV1? fcBuilder;

    public FlexPersistentVolumeSourceBuilderCoreV1? flexVolumeBuilder;

    public FlockerVolumeSourceBuilderCoreV1? flockerBuilder;

    public GCEPersistentDiskVolumeSourceBuilderCoreV1? gcePersistentDiskBuilder;

    public GlusterfsVolumeSourceBuilderCoreV1? glusterfsBuilder;

    public HostPathVolumeSourceBuilderCoreV1? hostPathBuilder;

    public ISCSIPersistentVolumeSourceBuilderCoreV1? iscsiBuilder;

    public LocalVolumeSourceBuilderCoreV1? localBuilder;

    public NFSVolumeSourceBuilderCoreV1? nfsBuilder;

    public VolumeNodeAffinityBuilderCoreV1? nodeAffinityBuilder;

    public PhotonPersistentDiskVolumeSourceBuilderCoreV1? photonPersistentDiskBuilder;

    public PortworxVolumeSourceBuilderCoreV1? portworxVolumeBuilder;

    public QuobyteVolumeSourceBuilderCoreV1? quobyteBuilder;

    public RBDPersistentVolumeSourceBuilderCoreV1? rbdBuilder;

    public ScaleIOPersistentVolumeSourceBuilderCoreV1? scaleIOBuilder;

    public StorageOSPersistentVolumeSourceBuilderCoreV1? storageosBuilder;

    public VsphereVirtualDiskVolumeSourceBuilderCoreV1? vsphereVolumeBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_persistentvolumespec = new;
    }
    public function build() returns (io_k8s_api_core_v1_PersistentVolumeSpec) {
        return self.io_k8s_api_core_v1_persistentvolumespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withAwsElasticBlockStore() returns AWSElasticBlockStoreVolumeSourceBuilderCoreV1 {
        self.awsElasticBlockStoreBuilder = new AWSElasticBlockStoreVolumeSourceBuilderCoreV1(self);
        match (self.awsElasticBlockStoreBuilder) {
            AWSElasticBlockStoreVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withAzureDisk() returns AzureDiskVolumeSourceBuilderCoreV1 {
        self.azureDiskBuilder = new AzureDiskVolumeSourceBuilderCoreV1(self);
        match (self.azureDiskBuilder) {
            AzureDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withAzureFile() returns AzureFilePersistentVolumeSourceBuilderCoreV1 {
        self.azureFileBuilder = new AzureFilePersistentVolumeSourceBuilderCoreV1(self);
        match (self.azureFileBuilder) {
            AzureFilePersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCephfs() returns CephFSPersistentVolumeSourceBuilderCoreV1 {
        self.cephfsBuilder = new CephFSPersistentVolumeSourceBuilderCoreV1(self);
        match (self.cephfsBuilder) {
            CephFSPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCinder() returns CinderVolumeSourceBuilderCoreV1 {
        self.cinderBuilder = new CinderVolumeSourceBuilderCoreV1(self);
        match (self.cinderBuilder) {
            CinderVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withClaimRef() returns ObjectReferenceBuilderCoreV1 {
        self.claimRefBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.claimRefBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withCsi() returns CSIPersistentVolumeSourceBuilderCoreV1 {
        self.csiBuilder = new CSIPersistentVolumeSourceBuilderCoreV1(self);
        match (self.csiBuilder) {
            CSIPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFc() returns FCVolumeSourceBuilderCoreV1 {
        self.fcBuilder = new FCVolumeSourceBuilderCoreV1(self);
        match (self.fcBuilder) {
            FCVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFlexVolume() returns FlexPersistentVolumeSourceBuilderCoreV1 {
        self.flexVolumeBuilder = new FlexPersistentVolumeSourceBuilderCoreV1(self);
        match (self.flexVolumeBuilder) {
            FlexPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withFlocker() returns FlockerVolumeSourceBuilderCoreV1 {
        self.flockerBuilder = new FlockerVolumeSourceBuilderCoreV1(self);
        match (self.flockerBuilder) {
            FlockerVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withGcePersistentDisk() returns GCEPersistentDiskVolumeSourceBuilderCoreV1 {
        self.gcePersistentDiskBuilder = new GCEPersistentDiskVolumeSourceBuilderCoreV1(self);
        match (self.gcePersistentDiskBuilder) {
            GCEPersistentDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withGlusterfs() returns GlusterfsVolumeSourceBuilderCoreV1 {
        self.glusterfsBuilder = new GlusterfsVolumeSourceBuilderCoreV1(self);
        match (self.glusterfsBuilder) {
            GlusterfsVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withHostPath() returns HostPathVolumeSourceBuilderCoreV1 {
        self.hostPathBuilder = new HostPathVolumeSourceBuilderCoreV1(self);
        match (self.hostPathBuilder) {
            HostPathVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withIscsi() returns ISCSIPersistentVolumeSourceBuilderCoreV1 {
        self.iscsiBuilder = new ISCSIPersistentVolumeSourceBuilderCoreV1(self);
        match (self.iscsiBuilder) {
            ISCSIPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withLocal() returns LocalVolumeSourceBuilderCoreV1 {
        self.localBuilder = new LocalVolumeSourceBuilderCoreV1(self);
        match (self.localBuilder) {
            LocalVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNfs() returns NFSVolumeSourceBuilderCoreV1 {
        self.nfsBuilder = new NFSVolumeSourceBuilderCoreV1(self);
        match (self.nfsBuilder) {
            NFSVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withNodeAffinity() returns VolumeNodeAffinityBuilderCoreV1 {
        self.nodeAffinityBuilder = new VolumeNodeAffinityBuilderCoreV1(self);
        match (self.nodeAffinityBuilder) {
            VolumeNodeAffinityBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPhotonPersistentDisk() returns PhotonPersistentDiskVolumeSourceBuilderCoreV1 {
        self.photonPersistentDiskBuilder = new PhotonPersistentDiskVolumeSourceBuilderCoreV1(self);
        match (self.photonPersistentDiskBuilder) {
            PhotonPersistentDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withPortworxVolume() returns PortworxVolumeSourceBuilderCoreV1 {
        self.portworxVolumeBuilder = new PortworxVolumeSourceBuilderCoreV1(self);
        match (self.portworxVolumeBuilder) {
            PortworxVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withQuobyte() returns QuobyteVolumeSourceBuilderCoreV1 {
        self.quobyteBuilder = new QuobyteVolumeSourceBuilderCoreV1(self);
        match (self.quobyteBuilder) {
            QuobyteVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRbd() returns RBDPersistentVolumeSourceBuilderCoreV1 {
        self.rbdBuilder = new RBDPersistentVolumeSourceBuilderCoreV1(self);
        match (self.rbdBuilder) {
            RBDPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withScaleIO() returns ScaleIOPersistentVolumeSourceBuilderCoreV1 {
        self.scaleIOBuilder = new ScaleIOPersistentVolumeSourceBuilderCoreV1(self);
        match (self.scaleIOBuilder) {
            ScaleIOPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStorageos() returns StorageOSPersistentVolumeSourceBuilderCoreV1 {
        self.storageosBuilder = new StorageOSPersistentVolumeSourceBuilderCoreV1(self);
        match (self.storageosBuilder) {
            StorageOSPersistentVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withVsphereVolume() returns VsphereVirtualDiskVolumeSourceBuilderCoreV1 {
        self.vsphereVolumeBuilder = new VsphereVirtualDiskVolumeSourceBuilderCoreV1(self);
        match (self.vsphereVolumeBuilder) {
            VsphereVirtualDiskVolumeSourceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAccessModes(string[] _accessModes) returns (PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.accessModes = _accessModes;
        return self;
    }
    public function addAccessMode(string _value) returns PersistentVolumeSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_persistentvolumespec.accessModes[lengthof self.io_k8s_api_core_v1_persistentvolumespec.
        accessModes] = _value;
        return self;
    }

    public function setCapacity(any _capacity) returns (PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.capacity = _capacity;
        return self;
    }

    public function setMountOptions(string[] _mountOptions) returns (PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.mountOptions = _mountOptions;
        return self;
    }
    public function addMountOption(string _value) returns PersistentVolumeSpecBuilderCoreV1 {
        self.io_k8s_api_core_v1_persistentvolumespec.mountOptions[lengthof self.io_k8s_api_core_v1_persistentvolumespec.
        mountOptions] = _value;
        return self;
    }

    public function setPersistentVolumeReclaimPolicy(string _persistentVolumeReclaimPolicy) returns (
                PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.persistentVolumeReclaimPolicy = _persistentVolumeReclaimPolicy;
        return self;
    }

    public function setStorageClassName(string _storageClassName) returns (PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.storageClassName = _storageClassName;
        return self;
    }

    public function setVolumeMode(string _volumeMode) returns (PersistentVolumeSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_persistentvolumespec.volumeMode = _volumeMode;
        return self;
    }
};

public type LoadBalancerStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_LoadBalancerStatus io_k8s_api_core_v1_loadbalancerstatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_loadbalancerstatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_LoadBalancerStatus) {
        return self.io_k8s_api_core_v1_loadbalancerstatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
};

public type SecretEnvSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretEnvSource io_k8s_api_core_v1_secretenvsource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretenvsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretEnvSource) {
        return self.io_k8s_api_core_v1_secretenvsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (SecretEnvSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretenvsource.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (SecretEnvSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretenvsource.optional = _optional;
        return self;
    }
};

public type SELinuxStrategyOptionsBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_SELinuxStrategyOptions io_k8s_api_extensions_v1beta1_selinuxstrategyoptions;
    public SELinuxOptionsBuilderCoreV1? seLinuxOptionsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_selinuxstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_SELinuxStrategyOptions) {
        return self.io_k8s_api_extensions_v1beta1_selinuxstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withSeLinuxOptions() returns SELinuxOptionsBuilderCoreV1 {
        self.seLinuxOptionsBuilder = new SELinuxOptionsBuilderCoreV1(self);
        match (self.seLinuxOptionsBuilder) {
            SELinuxOptionsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setRule(string _rule) returns (SELinuxStrategyOptionsBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_selinuxstrategyoptions.rule = _rule;
        return self;
    }
};

public type NamespaceStatusBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NamespaceStatus io_k8s_api_core_v1_namespacestatus;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_namespacestatus = new;
    }
    public function build() returns (io_k8s_api_core_v1_NamespaceStatus) {
        return self.io_k8s_api_core_v1_namespacestatus;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPhase(string _phase) returns (NamespaceStatusBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespacestatus.phase = _phase;
        return self;
    }
};

public type SecurityContextBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecurityContext io_k8s_api_core_v1_securitycontext;
    public CapabilitiesBuilderCoreV1? capabilitiesBuilder;

    public SELinuxOptionsBuilderCoreV1? seLinuxOptionsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_securitycontext = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecurityContext) {
        return self.io_k8s_api_core_v1_securitycontext;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withCapabilities() returns CapabilitiesBuilderCoreV1 {
        self.capabilitiesBuilder = new CapabilitiesBuilderCoreV1(self);
        match (self.capabilitiesBuilder) {
            CapabilitiesBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSeLinuxOptions() returns SELinuxOptionsBuilderCoreV1 {
        self.seLinuxOptionsBuilder = new SELinuxOptionsBuilderCoreV1(self);
        match (self.seLinuxOptionsBuilder) {
            SELinuxOptionsBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllowPrivilegeEscalation(boolean _allowPrivilegeEscalation) returns (SecurityContextBuilderCoreV1
                ) {
        self.io_k8s_api_core_v1_securitycontext.allowPrivilegeEscalation = _allowPrivilegeEscalation;
        return self;
    }

    public function setPrivileged(boolean _privileged) returns (SecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_securitycontext.privileged = _privileged;
        return self;
    }

    public function setReadOnlyRootFilesystem(boolean _readOnlyRootFilesystem) returns (SecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_securitycontext.readOnlyRootFilesystem = _readOnlyRootFilesystem;
        return self;
    }

    public function setRunAsGroup(int _runAsGroup) returns (SecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_securitycontext.runAsGroup = _runAsGroup;
        return self;
    }

    public function setRunAsNonRoot(boolean _runAsNonRoot) returns (SecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_securitycontext.runAsNonRoot = _runAsNonRoot;
        return self;
    }

    public function setRunAsUser(int _runAsUser) returns (SecurityContextBuilderCoreV1) {
        self.io_k8s_api_core_v1_securitycontext.runAsUser = _runAsUser;
        return self;
    }
};

public type SecretKeySelectorBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_SecretKeySelector io_k8s_api_core_v1_secretkeyselector;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_secretkeyselector = new;
    }
    public function build() returns (io_k8s_api_core_v1_SecretKeySelector) {
        return self.io_k8s_api_core_v1_secretkeyselector;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setKey(string _key) returns (SecretKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretkeyselector.key = _key;
        return self;
    }

    public function setName(string _name) returns (SecretKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretkeyselector.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (SecretKeySelectorBuilderCoreV1) {
        self.io_k8s_api_core_v1_secretkeyselector.optional = _optional;
        return self;
    }
};

public type RollingUpdateStatefulSetStrategyBuilderAppsV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1_RollingUpdateStatefulSetStrategy io_k8s_api_apps_v1_rollingupdatestatefulsetstrategy;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1_rollingupdatestatefulsetstrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1_RollingUpdateStatefulSetStrategy) {
        return self.io_k8s_api_apps_v1_rollingupdatestatefulsetstrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPartition(int _partition) returns (RollingUpdateStatefulSetStrategyBuilderAppsV1) {
        self.io_k8s_api_apps_v1_rollingupdatestatefulsetstrategy.partition = _partition;
        return self;
    }
};

public type NFSVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NFSVolumeSource io_k8s_api_core_v1_nfsvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_nfsvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_NFSVolumeSource) {
        return self.io_k8s_api_core_v1_nfsvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setPath(string _path) returns (NFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_nfsvolumesource.path = _path;
        return self;
    }

    public function setReadOnly(boolean _readOnly) returns (NFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_nfsvolumesource.readOnly = _readOnly;
        return self;
    }

    public function setServer(string _server) returns (NFSVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_nfsvolumesource.server = _server;
        return self;
    }
};

public type WebhookClientConfigBuilderAdmissionregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_admissionregistration_v1beta1_WebhookClientConfig
    io_k8s_api_admissionregistration_v1beta1_webhookclientconfig;
    public ServiceReferenceBuilderAdmissionregistrationV1beta1? _serviceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_admissionregistration_v1beta1_webhookclientconfig = new;
    }
    public function build() returns (io_k8s_api_admissionregistration_v1beta1_WebhookClientConfig) {
        return self.io_k8s_api_admissionregistration_v1beta1_webhookclientconfig;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function with_service() returns ServiceReferenceBuilderAdmissionregistrationV1beta1 {
        self._serviceBuilder = new ServiceReferenceBuilderAdmissionregistrationV1beta1(self);
        match (self._serviceBuilder) {
            ServiceReferenceBuilderAdmissionregistrationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setCaBundle(string _caBundle) returns (WebhookClientConfigBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_webhookclientconfig.caBundle = _caBundle;
        return self;
    }

    public function setUrl(string _url) returns (WebhookClientConfigBuilderAdmissionregistrationV1beta1) {
        self.io_k8s_api_admissionregistration_v1beta1_webhookclientconfig.url = _url;
        return self;
    }
};

public type CustomResourceSubresourceScaleBuilderApiextensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceScale
    io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale;
    public new(fluentBuilder) {
        io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale = new;
    }
    public function build() returns (
                io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceScale) {
        return self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setLabelSelectorPath(string _labelSelectorPath) returns (
                CustomResourceSubresourceScaleBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale.
        labelSelectorPath = _labelSelectorPath;
        return self;
    }

    public function setSpecReplicasPath(string _specReplicasPath) returns (
                CustomResourceSubresourceScaleBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale.
        specReplicasPath = _specReplicasPath;
        return self;
    }

    public function setStatusReplicasPath(string _statusReplicasPath) returns (
                CustomResourceSubresourceScaleBuilderApiextensionsV1beta1) {
        self.io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_customresourcesubresourcescale.
        statusReplicasPath = _statusReplicasPath;
        return self;
    }
};

public type ResourceQuotaListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ResourceQuotaList io_k8s_api_core_v1_resourcequotalist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_resourcequotalist = new;
    }
    public function build() returns (io_k8s_api_core_v1_ResourceQuotaList) {
        return self.io_k8s_api_core_v1_resourcequotalist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ResourceQuotaListBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotalist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ResourceQuotaListBuilderCoreV1) {
        self.io_k8s_api_core_v1_resourcequotalist.kind = _kind;
        return self;
    }
};

public type NodeDaemonEndpointsBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeDaemonEndpoints io_k8s_api_core_v1_nodedaemonendpoints;
    public DaemonEndpointBuilderCoreV1? kubeletEndpointBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodedaemonendpoints = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeDaemonEndpoints) {
        return self.io_k8s_api_core_v1_nodedaemonendpoints;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withKubeletEndpoint() returns DaemonEndpointBuilderCoreV1 {
        self.kubeletEndpointBuilder = new DaemonEndpointBuilderCoreV1(self);
        match (self.kubeletEndpointBuilder) {
            DaemonEndpointBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
};

public type TaintBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_Taint io_k8s_api_core_v1_taint;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_taint = new;
    }
    public function build() returns (io_k8s_api_core_v1_Taint) {
        return self.io_k8s_api_core_v1_taint;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setEffect(string _effect) returns (TaintBuilderCoreV1) {
        self.io_k8s_api_core_v1_taint.effect = _effect;
        return self;
    }

    public function setKey(string _key) returns (TaintBuilderCoreV1) {
        self.io_k8s_api_core_v1_taint.key = _key;
        return self;
    }

    public function setTimeAdded(time:Time? _timeAdded) returns (TaintBuilderCoreV1) {
        self.io_k8s_api_core_v1_taint.timeAdded = _timeAdded;
        return self;
    }

    public function setValue(string _value) returns (TaintBuilderCoreV1) {
        self.io_k8s_api_core_v1_taint.value = _value;
        return self;
    }
};

public type ReplicationControllerSpecBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ReplicationControllerSpec io_k8s_api_core_v1_replicationcontrollerspec;
    public PodTemplateSpecBuilderCoreV1? templateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_replicationcontrollerspec = new;
    }
    public function build() returns (io_k8s_api_core_v1_ReplicationControllerSpec) {
        return self.io_k8s_api_core_v1_replicationcontrollerspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withTemplate() returns PodTemplateSpecBuilderCoreV1 {
        self.templateBuilder = new PodTemplateSpecBuilderCoreV1(self);
        match (self.templateBuilder) {
            PodTemplateSpecBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setMinReadySeconds(int _minReadySeconds) returns (ReplicationControllerSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerspec.minReadySeconds = _minReadySeconds;
        return self;
    }

    public function setReplicas(int _replicas) returns (ReplicationControllerSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerspec.replicas = _replicas;
        return self;
    }

    public function setSelector(any _selector) returns (ReplicationControllerSpecBuilderCoreV1) {
        self.io_k8s_api_core_v1_replicationcontrollerspec.selector = _selector;
        return self;
    }
};

public type NamespaceListBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NamespaceList io_k8s_api_core_v1_namespacelist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_namespacelist = new;
    }
    public function build() returns (io_k8s_api_core_v1_NamespaceList) {
        return self.io_k8s_api_core_v1_namespacelist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NamespaceListBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespacelist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NamespaceListBuilderCoreV1) {
        self.io_k8s_api_core_v1_namespacelist.kind = _kind;
        return self;
    }
};

public type RunAsUserStrategyOptionsBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_RunAsUserStrategyOptions io_k8s_api_extensions_v1beta1_runasuserstrategyoptions
    ;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_runasuserstrategyoptions = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_RunAsUserStrategyOptions) {
        return self.io_k8s_api_extensions_v1beta1_runasuserstrategyoptions;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setRule(string _rule) returns (RunAsUserStrategyOptionsBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_runasuserstrategyoptions.rule = _rule;
        return self;
    }
};

public type ConfigMapBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMap io_k8s_api_core_v1_configmap;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmap = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMap) {
        return self.io_k8s_api_core_v1_configmap;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ConfigMapBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmap.apiVersion = _apiVersion;
        return self;
    }

    public function setBinaryData(any _binaryData) returns (ConfigMapBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmap.binaryData = _binaryData;
        return self;
    }

    public function setData(any _data) returns (ConfigMapBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmap.data = _data;
        return self;
    }

    public function setKind(string _kind) returns (ConfigMapBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmap.kind = _kind;
        return self;
    }
};

public type ClusterRoleBindingListBuilderRbacV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_rbac_v1_ClusterRoleBindingList io_k8s_api_rbac_v1_clusterrolebindinglist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_rbac_v1_clusterrolebindinglist = new;
    }
    public function build() returns (io_k8s_api_rbac_v1_ClusterRoleBindingList) {
        return self.io_k8s_api_rbac_v1_clusterrolebindinglist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (ClusterRoleBindingListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolebindinglist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (ClusterRoleBindingListBuilderRbacV1) {
        self.io_k8s_api_rbac_v1_clusterrolebindinglist.kind = _kind;
        return self;
    }
};

public type PreferredSchedulingTermBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PreferredSchedulingTerm io_k8s_api_core_v1_preferredschedulingterm;
    public NodeSelectorTermBuilderCoreV1? preferenceBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_preferredschedulingterm = new;
    }
    public function build() returns (io_k8s_api_core_v1_PreferredSchedulingTerm) {
        return self.io_k8s_api_core_v1_preferredschedulingterm;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withPreference() returns NodeSelectorTermBuilderCoreV1 {
        self.preferenceBuilder = new NodeSelectorTermBuilderCoreV1(self);
        match (self.preferenceBuilder) {
            NodeSelectorTermBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setWeight(int _weight) returns (PreferredSchedulingTermBuilderCoreV1) {
        self.io_k8s_api_core_v1_preferredschedulingterm.weight = _weight;
        return self;
    }
};

public type PodAffinityTermBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_PodAffinityTerm io_k8s_api_core_v1_podaffinityterm;
    public LabelSelectorBuilderMetaV1? labelSelectorBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_podaffinityterm = new;
    }
    public function build() returns (io_k8s_api_core_v1_PodAffinityTerm) {
        return self.io_k8s_api_core_v1_podaffinityterm;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withLabelSelector() returns LabelSelectorBuilderMetaV1 {
        self.labelSelectorBuilder = new LabelSelectorBuilderMetaV1(self);
        match (self.labelSelectorBuilder) {
            LabelSelectorBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setNamespaces(string[] _namespaces) returns (PodAffinityTermBuilderCoreV1) {
        self.io_k8s_api_core_v1_podaffinityterm.namespaces = _namespaces;
        return self;
    }
    public function addNamespace(string _value) returns PodAffinityTermBuilderCoreV1 {
        self.io_k8s_api_core_v1_podaffinityterm.namespaces[lengthof self.io_k8s_api_core_v1_podaffinityterm.namespaces]
        = _value;
        return self;
    }

    public function setTopologyKey(string _topologyKey) returns (PodAffinityTermBuilderCoreV1) {
        self.io_k8s_api_core_v1_podaffinityterm.topologyKey = _topologyKey;
        return self;
    }
};

public type ScaleSpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_ScaleSpec io_k8s_api_extensions_v1beta1_scalespec;
    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_scalespec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_ScaleSpec) {
        return self.io_k8s_api_extensions_v1beta1_scalespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setReplicas(int _replicas) returns (ScaleSpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_scalespec.replicas = _replicas;
        return self;
    }
};

public type StatefulSetUpdateStrategyBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_StatefulSetUpdateStrategy io_k8s_api_apps_v1beta2_statefulsetupdatestrategy;
    public RollingUpdateStatefulSetStrategyBuilderAppsV1beta2? rollingUpdateBuilder;

    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_statefulsetupdatestrategy = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_StatefulSetUpdateStrategy) {
        return self.io_k8s_api_apps_v1beta2_statefulsetupdatestrategy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withRollingUpdate() returns RollingUpdateStatefulSetStrategyBuilderAppsV1beta2 {
        self.rollingUpdateBuilder = new RollingUpdateStatefulSetStrategyBuilderAppsV1beta2(self);
        match (self.rollingUpdateBuilder) {
            RollingUpdateStatefulSetStrategyBuilderAppsV1beta2 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function set_type(string __type) returns (StatefulSetUpdateStrategyBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_statefulsetupdatestrategy._type = __type;
        return self;
    }
};

public type PodDisruptionBudgetBuilderPolicyV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudget io_k8s_api_policy_v1beta1_poddisruptionbudget;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public PodDisruptionBudgetSpecBuilderPolicyV1beta1? specBuilder;

    public PodDisruptionBudgetStatusBuilderPolicyV1beta1? statusBuilder;

    public new(fluentBuilder) {
        io_k8s_api_policy_v1beta1_poddisruptionbudget = new;
    }
    public function build() returns (io_k8s_api_policy_v1beta1_PodDisruptionBudget) {
        return self.io_k8s_api_policy_v1beta1_poddisruptionbudget;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns PodDisruptionBudgetSpecBuilderPolicyV1beta1 {
        self.specBuilder = new PodDisruptionBudgetSpecBuilderPolicyV1beta1(self);
        match (self.specBuilder) {
            PodDisruptionBudgetSpecBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withStatus() returns PodDisruptionBudgetStatusBuilderPolicyV1beta1 {
        self.statusBuilder = new PodDisruptionBudgetStatusBuilderPolicyV1beta1(self);
        match (self.statusBuilder) {
            PodDisruptionBudgetStatusBuilderPolicyV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (PodDisruptionBudgetBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudget.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (PodDisruptionBudgetBuilderPolicyV1beta1) {
        self.io_k8s_api_policy_v1beta1_poddisruptionbudget.kind = _kind;
        return self;
    }
};

public type NodeConfigSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_NodeConfigSource io_k8s_api_core_v1_nodeconfigsource;
    public ObjectReferenceBuilderCoreV1? configMapRefBuilder;

    public new(fluentBuilder) {
        io_k8s_api_core_v1_nodeconfigsource = new;
    }
    public function build() returns (io_k8s_api_core_v1_NodeConfigSource) {
        return self.io_k8s_api_core_v1_nodeconfigsource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withConfigMapRef() returns ObjectReferenceBuilderCoreV1 {
        self.configMapRefBuilder = new ObjectReferenceBuilderCoreV1(self);
        match (self.configMapRefBuilder) {
            ObjectReferenceBuilderCoreV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NodeConfigSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeconfigsource.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NodeConfigSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_nodeconfigsource.kind = _kind;
        return self;
    }
};

public type ConfigMapVolumeSourceBuilderCoreV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_core_v1_ConfigMapVolumeSource io_k8s_api_core_v1_configmapvolumesource;
    public new(fluentBuilder) {
        io_k8s_api_core_v1_configmapvolumesource = new;
    }
    public function build() returns (io_k8s_api_core_v1_ConfigMapVolumeSource) {
        return self.io_k8s_api_core_v1_configmapvolumesource;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setDefaultMode(int _defaultMode) returns (ConfigMapVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapvolumesource.defaultMode = _defaultMode;
        return self;
    }

    public function setName(string _name) returns (ConfigMapVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapvolumesource.name = _name;
        return self;
    }

    public function setOptional(boolean _optional) returns (ConfigMapVolumeSourceBuilderCoreV1) {
        self.io_k8s_api_core_v1_configmapvolumesource.optional = _optional;
        return self;
    }
};

public type PodSecurityPolicySpecBuilderExtensionsV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_extensions_v1beta1_PodSecurityPolicySpec io_k8s_api_extensions_v1beta1_podsecuritypolicyspec;
    public FSGroupStrategyOptionsBuilderExtensionsV1beta1? fsGroupBuilder;

    public RunAsUserStrategyOptionsBuilderExtensionsV1beta1? runAsUserBuilder;

    public SELinuxStrategyOptionsBuilderExtensionsV1beta1? seLinuxBuilder;

    public SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1? supplementalGroupsBuilder;

    public new(fluentBuilder) {
        io_k8s_api_extensions_v1beta1_podsecuritypolicyspec = new;
    }
    public function build() returns (io_k8s_api_extensions_v1beta1_PodSecurityPolicySpec) {
        return self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withFsGroup() returns FSGroupStrategyOptionsBuilderExtensionsV1beta1 {
        self.fsGroupBuilder = new FSGroupStrategyOptionsBuilderExtensionsV1beta1(self);
        match (self.fsGroupBuilder) {
            FSGroupStrategyOptionsBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withRunAsUser() returns RunAsUserStrategyOptionsBuilderExtensionsV1beta1 {
        self.runAsUserBuilder = new RunAsUserStrategyOptionsBuilderExtensionsV1beta1(self);
        match (self.runAsUserBuilder) {
            RunAsUserStrategyOptionsBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSeLinux() returns SELinuxStrategyOptionsBuilderExtensionsV1beta1 {
        self.seLinuxBuilder = new SELinuxStrategyOptionsBuilderExtensionsV1beta1(self);
        match (self.seLinuxBuilder) {
            SELinuxStrategyOptionsBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSupplementalGroups() returns SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1 {
        self.supplementalGroupsBuilder = new SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1(self);
        match (self.supplementalGroupsBuilder) {
            SupplementalGroupsStrategyOptionsBuilderExtensionsV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setAllowPrivilegeEscalation(boolean _allowPrivilegeEscalation) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.allowPrivilegeEscalation = _allowPrivilegeEscalation;
        return self;
    }

    public function setAllowedCapabilities(string[] _allowedCapabilities) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.allowedCapabilities = _allowedCapabilities;
        return self;
    }
    public function addAllowedCapabilitie(string _value) returns PodSecurityPolicySpecBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.allowedCapabilities[lengthof self.
        io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.allowedCapabilities] = _value;
        return self;
    }

    public function setDefaultAddCapabilities(string[] _defaultAddCapabilities) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.defaultAddCapabilities = _defaultAddCapabilities;
        return self;
    }
    public function addDefaultAddCapabilitie(string _value) returns PodSecurityPolicySpecBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.defaultAddCapabilities[lengthof self.
        io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.defaultAddCapabilities] = _value;
        return self;
    }

    public function setDefaultAllowPrivilegeEscalation(boolean _defaultAllowPrivilegeEscalation) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.defaultAllowPrivilegeEscalation =
            _defaultAllowPrivilegeEscalation;
        return self;
    }

    public function setHostIPC(boolean _hostIPC) returns (PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.hostIPC = _hostIPC;
        return self;
    }

    public function setHostNetwork(boolean _hostNetwork) returns (PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.hostNetwork = _hostNetwork;
        return self;
    }

    public function setHostPID(boolean _hostPID) returns (PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.hostPID = _hostPID;
        return self;
    }

    public function setPrivileged(boolean _privileged) returns (PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.privileged = _privileged;
        return self;
    }

    public function setReadOnlyRootFilesystem(boolean _readOnlyRootFilesystem) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.readOnlyRootFilesystem = _readOnlyRootFilesystem;
        return self;
    }

    public function setRequiredDropCapabilities(string[] _requiredDropCapabilities) returns (
                PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.requiredDropCapabilities = _requiredDropCapabilities;
        return self;
    }
    public function addRequiredDropCapabilitie(string _value) returns PodSecurityPolicySpecBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.requiredDropCapabilities[lengthof self.
        io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.requiredDropCapabilities] = _value;
        return self;
    }

    public function setVolumes(string[] _volumes) returns (PodSecurityPolicySpecBuilderExtensionsV1beta1) {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.volumes = _volumes;
        return self;
    }
    public function addVolume(string _value) returns PodSecurityPolicySpecBuilderExtensionsV1beta1 {
        self.io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.volumes[lengthof self.
        io_k8s_api_extensions_v1beta1_podsecuritypolicyspec.volumes] = _value;
        return self;
    }
};

public type RollingUpdateDaemonSetBuilderAppsV1beta2 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_apps_v1beta2_RollingUpdateDaemonSet io_k8s_api_apps_v1beta2_rollingupdatedaemonset;
    public new(fluentBuilder) {
        io_k8s_api_apps_v1beta2_rollingupdatedaemonset = new;
    }
    public function build() returns (io_k8s_api_apps_v1beta2_RollingUpdateDaemonSet) {
        return self.io_k8s_api_apps_v1beta2_rollingupdatedaemonset;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setMaxUnavailable(int|string _maxUnavailable) returns (RollingUpdateDaemonSetBuilderAppsV1beta2) {
        self.io_k8s_api_apps_v1beta2_rollingupdatedaemonset.maxUnavailable = _maxUnavailable;
        return self;
    }
};

public type HorizontalPodAutoscalerListBuilderAutoscalingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerList io_k8s_api_autoscaling_v1_horizontalpodautoscalerlist;
    public ListMetaBuilderMetaV1? metadataBuilder;

    public new(fluentBuilder) {
        io_k8s_api_autoscaling_v1_horizontalpodautoscalerlist = new;
    }
    public function build() returns (io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerList) {
        return self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerlist;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ListMetaBuilderMetaV1 {
        self.metadataBuilder = new ListMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ListMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (HorizontalPodAutoscalerListBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerlist.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (HorizontalPodAutoscalerListBuilderAutoscalingV1) {
        self.io_k8s_api_autoscaling_v1_horizontalpodautoscalerlist.kind = _kind;
        return self;
    }
};

public type ServiceReferenceBuilderApiregistrationV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_ServiceReference
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_servicereference;
    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_servicereference = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_ServiceReference) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_servicereference;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }

    public function setName(string _name) returns (ServiceReferenceBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_servicereference.name = _name;
        return self;
    }

    public function setNamespace(string _namespace) returns (ServiceReferenceBuilderApiregistrationV1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_servicereference.namespace = _namespace;
        return self;
    }
};

public type APIServiceSpecBuilderApiregistrationV1beta1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceSpec
    io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec;
    public ServiceReferenceBuilderApiregistrationV1beta1? _serviceBuilder;

    public new(fluentBuilder) {
        io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec = new;
    }
    public function build() returns (io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceSpec) {
        return self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function with_service() returns ServiceReferenceBuilderApiregistrationV1beta1 {
        self._serviceBuilder = new ServiceReferenceBuilderApiregistrationV1beta1(self);
        match (self._serviceBuilder) {
            ServiceReferenceBuilderApiregistrationV1beta1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setCaBundle(string _caBundle) returns (APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec.caBundle = _caBundle;
        return self;
    }

    public function set_group(string __group) returns (APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec._group = __group;
        return self;
    }

    public function setGroupPriorityMinimum(int _groupPriorityMinimum) returns (
                APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec.groupPriorityMinimum =
            _groupPriorityMinimum;
        return self;
    }

    public function setInsecureSkipTLSVerify(boolean _insecureSkipTLSVerify) returns (
                APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec.insecureSkipTLSVerify =
            _insecureSkipTLSVerify;
        return self;
    }

    public function set_version(string __version) returns (APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec._version = __version;
        return self;
    }

    public function setVersionPriority(int _versionPriority) returns (APIServiceSpecBuilderApiregistrationV1beta1) {
        self.io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_apiservicespec.versionPriority = _versionPriority;
        return self;
    }
};

public type NetworkPolicyBuilderNetworkingV1 object {
    public FluentBuilder fluentBuilder;
    public io_k8s_api_networking_v1_NetworkPolicy io_k8s_api_networking_v1_networkpolicy;
    public ObjectMetaBuilderMetaV1? metadataBuilder;

    public NetworkPolicySpecBuilderNetworkingV1? specBuilder;

    public new(fluentBuilder) {
        io_k8s_api_networking_v1_networkpolicy = new;
    }
    public function build() returns (io_k8s_api_networking_v1_NetworkPolicy) {
        return self.io_k8s_api_networking_v1_networkpolicy;
    }
    public function end() returns (FluentBuilder) {
        return self.fluentBuilder;
    }
    public function withMetadata() returns ObjectMetaBuilderMetaV1 {
        self.metadataBuilder = new ObjectMetaBuilderMetaV1(self);
        match (self.metadataBuilder) {
            ObjectMetaBuilderMetaV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }
    public function withSpec() returns NetworkPolicySpecBuilderNetworkingV1 {
        self.specBuilder = new NetworkPolicySpecBuilderNetworkingV1(self);
        match (self.specBuilder) {
            NetworkPolicySpecBuilderNetworkingV1 builder => {
                return builder;
            }
            () err => {
                error e = {};
                throw e;
            }
        }
    }

    public function setApiVersion(string _apiVersion) returns (NetworkPolicyBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicy.apiVersion = _apiVersion;
        return self;
    }

    public function setKind(string _kind) returns (NetworkPolicyBuilderNetworkingV1) {
        self.io_k8s_api_networking_v1_networkpolicy.kind = _kind;
        return self;
    }
};
public type FluentBuilder object {
    public function build() returns (FluentObject);
};

public type FluentObject object {

};

