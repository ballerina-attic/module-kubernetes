import ballerina/time;

public type io_k8s_apimachinery_pkg_api_resource_Quantity object {
    public any value;
};

public type io_k8s_api_autoscaling_v2beta1_ResourceMetricSource object {
    public string name;
    public int targetAverageUtilization;
    public io_k8s_apimachinery_pkg_api_resource_Quantity targetAverageValue;
};

public type io_k8s_api_core_v1_CSIPersistentVolumeSource object {
    public io_k8s_api_core_v1_SecretReference controllerPublishSecretRef;
    public string driver;
    public string fsType;
    public io_k8s_api_core_v1_SecretReference nodePublishSecretRef;
    public io_k8s_api_core_v1_SecretReference nodeStageSecretRef;
    public boolean readOnly;
    public any volumeAttributes;
    public string volumeHandle;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceSpec spec;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceStatus status;
};

public type io_k8s_api_core_v1_PersistentVolumeClaimCondition object {
    public time:Time? lastProbeTime;
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresources object {
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceScale scale;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceStatus status;
};

public type io_k8s_api_policy_v1beta1_PodSecurityPolicyList object {
    public string apiVersion;
    public io_k8s_api_policy_v1beta1_PodSecurityPolicy[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_authorization_v1beta1_LocalSubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_storage_v1beta1_VolumeAttachment object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentSpec spec;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentStatus status;
};

public type io_k8s_api_core_v1_RBDPersistentVolumeSource object {
    public string fsType;
    public string image;
    public string keyring;
    public string[] monitors;
    public string pool;
    public boolean readOnly;
    public io_k8s_api_core_v1_SecretReference secretRef;
    public string user;
};

public type io_k8s_api_apps_v1_ControllerRevisionList object {
    public string apiVersion;
    public io_k8s_api_apps_v1_ControllerRevision[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta2_Deployment object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta2_DeploymentSpec spec;
    public io_k8s_api_apps_v1beta2_DeploymentStatus status;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceStatus object {
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceCondition[] conditions;
};

public type io_k8s_api_autoscaling_v2beta1_ExternalMetricStatus object {
    public io_k8s_apimachinery_pkg_api_resource_Quantity currentAverageValue;
    public io_k8s_apimachinery_pkg_api_resource_Quantity currentValue;
    public string metricName;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector metricSelector;
};

public type io_k8s_api_apps_v1beta2_ScaleSpec object {
    public int replicas;
};

public type io_k8s_api_autoscaling_v2beta1_ExternalMetricSource object {
    public string metricName;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector metricSelector;
    public io_k8s_apimachinery_pkg_api_resource_Quantity targetAverageValue;
    public io_k8s_apimachinery_pkg_api_resource_Quantity targetValue;
};

public type io_k8s_api_apps_v1_DeploymentList object {
    public string apiVersion;
    public io_k8s_api_apps_v1_Deployment[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta2_ReplicaSetStatus object {
    public int availableReplicas;
    public io_k8s_api_apps_v1beta2_ReplicaSetCondition[] conditions;
    public int fullyLabeledReplicas;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
};

public type io_k8s_api_autoscaling_v2beta1_ObjectMetricSource object {
    public string metricName;
    public io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference target;
    public io_k8s_apimachinery_pkg_api_resource_Quantity targetValue;
};

public type io_k8s_api_autoscaling_v2beta1_ResourceMetricStatus object {
    public int currentAverageUtilization;
    public io_k8s_apimachinery_pkg_api_resource_Quantity currentAverageValue;
    public string name;
};

public type io_k8s_api_apps_v1_ReplicaSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1_DaemonSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1_DaemonSetSpec spec;
    public io_k8s_api_apps_v1_DaemonSetStatus status;
};

public type io_k8s_api_core_v1_VolumeDevice object {
    public string devicePath;
    public string name;
};

public type io_k8s_api_rbac_v1_Subject object {
    public string apiGroup;
    public string kind;
    public string name;
    public string namespace;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceList object {
    public string apiVersion;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIService[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_Patch object {
};

public type io_k8s_api_authorization_v1beta1_SubjectRulesReviewStatus object {
    public string evaluationError;
    public boolean incomplete;
    public io_k8s_api_authorization_v1beta1_NonResourceRule[] nonResourceRules;
    public io_k8s_api_authorization_v1beta1_ResourceRule[] resourceRules;
};

public type io_k8s_api_apps_v1_DeploymentCondition object {
    public time:Time? lastTransitionTime;
    public time:Time? lastUpdateTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_storage_v1beta1_VolumeAttachmentSpec object {
    public string attacher;
    public string nodeName;
    public io_k8s_api_storage_v1beta1_VolumeAttachmentSource source;
};

public type io_k8s_api_authorization_v1beta1_SelfSubjectRulesReviewSpec object {
    public string namespace;
};

public type io_k8s_api_autoscaling_v2beta1_ObjectMetricStatus object {
    public io_k8s_apimachinery_pkg_api_resource_Quantity currentValue;
    public string metricName;
    public io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference target;
};

public type io_k8s_api_apps_v1beta2_ControllerRevisionList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta2_ControllerRevision[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_autoscaling_v1_Scale object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_autoscaling_v1_ScaleSpec spec;
    public io_k8s_api_autoscaling_v1_ScaleStatus status;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrStringArray object {
    public string[] Property;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps Schema;
};

public type io_k8s_api_extensions_v1beta1_Scale object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_ScaleSpec spec;
    public io_k8s_api_extensions_v1beta1_ScaleStatus status;
};

public type io_k8s_api_apps_v1beta1_StatefulSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1beta2_ControllerRevision object {
    public string apiVersion;
    public io_k8s_apimachinery_pkg_runtime_RawExtension data;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public int revision;
};

public type io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_admissionregistration_v1beta1_Webhook[] webhooks;
};

public type io_k8s_api_rbac_v1_RoleList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1_Role[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ReplicationController object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_ReplicationControllerSpec spec;
    public io_k8s_api_core_v1_ReplicationControllerStatus status;
};

public type io_k8s_api_authorization_v1_SubjectRulesReviewStatus object {
    public string evaluationError;
    public boolean incomplete;
    public io_k8s_api_authorization_v1_NonResourceRule[] nonResourceRules;
    public io_k8s_api_authorization_v1_ResourceRule[] resourceRules;
};

public type io_k8s_api_core_v1_HostAlias object {
    public string[] hostnames;
    public string ip;
};

public type io_k8s_api_core_v1_PodSpec object {
    public int activeDeadlineSeconds;
    public io_k8s_api_core_v1_Affinity affinity;
    public boolean automountServiceAccountToken;
    public io_k8s_api_core_v1_Container[] containers;
    public io_k8s_api_core_v1_PodDNSConfig dnsConfig;
    public string dnsPolicy;
    public io_k8s_api_core_v1_HostAlias[] hostAliases;
    public boolean hostIPC;
    public boolean hostNetwork;
    public boolean hostPID;
    public string hostname;
    public io_k8s_api_core_v1_LocalObjectReference[] imagePullSecrets;
    public io_k8s_api_core_v1_Container[] initContainers;
    public string nodeName;
    public any nodeSelector;
    public int priority;
    public string priorityClassName;
    public string restartPolicy;
    public string schedulerName;
    public io_k8s_api_core_v1_PodSecurityContext securityContext;
    public string serviceAccount;
    public string serviceAccountName;
    public boolean shareProcessNamespace;
    public string subdomain;
    public int terminationGracePeriodSeconds;
    public io_k8s_api_core_v1_Toleration[] tolerations;
    public io_k8s_api_core_v1_Volume[] volumes;
};

public type io_k8s_api_apps_v1beta2_StatefulSetStatus object {
    public int collisionCount;
    public io_k8s_api_apps_v1beta2_StatefulSetCondition[] conditions;
    public int currentReplicas;
    public string currentRevision;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public string updateRevision;
    public int updatedReplicas;
};

public type io_k8s_api_core_v1_AzureFilePersistentVolumeSource object {
    public boolean readOnly;
    public string secretName;
    public string secretNamespace;
    public string shareName;
};

public type io_k8s_api_apps_v1_DaemonSetStatus object {
    public int collisionCount;
    public io_k8s_api_apps_v1_DaemonSetCondition[] conditions;
    public int currentNumberScheduled;
    public int desiredNumberScheduled;
    public int numberAvailable;
    public int numberMisscheduled;
    public int numberReady;
    public int numberUnavailable;
    public int observedGeneration;
    public int updatedNumberScheduled;
};

public type io_k8s_api_autoscaling_v2beta1_MetricStatus object {
    public io_k8s_api_autoscaling_v2beta1_ExternalMetricStatus external;
    public io_k8s_api_autoscaling_v2beta1_ObjectMetricStatus _object;
    public io_k8s_api_autoscaling_v2beta1_PodsMetricStatus pods;
    public io_k8s_api_autoscaling_v2beta1_ResourceMetricStatus _resource;
    public string _type;
};

public type io_k8s_api_core_v1_VolumeMount object {
    public string mountPath;
    public string mountPropagation;
    public string name;
    public boolean readOnly;
    public string subPath;
};

public type io_k8s_api_apps_v1beta2_DeploymentStatus object {
    public int availableReplicas;
    public int collisionCount;
    public io_k8s_api_apps_v1beta2_DeploymentCondition[] conditions;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public int unavailableReplicas;
    public int updatedReplicas;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceSpec object {
    public string caBundle;
    public string _group;
    public int groupPriorityMinimum;
    public boolean insecureSkipTLSVerify;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_ServiceReference serviceReference;
    public string _version;
    public int versionPriority;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_APIGroupList object {
    public string apiVersion;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIGroup[] groups;
    public string kind;
};

public type io_k8s_api_apps_v1beta2_DaemonSetUpdateStrategy object {
    public io_k8s_api_apps_v1beta2_RollingUpdateDaemonSet rollingUpdate;
    public string _type;
};

public type io_k8s_api_core_v1_EmptyDirVolumeSource object {
    public string medium;
    public io_k8s_apimachinery_pkg_api_resource_Quantity sizeLimit;
};

public type io_k8s_api_core_v1_EndpointSubset object {
    public io_k8s_api_core_v1_EndpointAddress[] addresses;
    public io_k8s_api_core_v1_EndpointAddress[] notReadyAddresses;
    public io_k8s_api_core_v1_EndpointPort[] ports;
};

public type io_k8s_api_core_v1_AWSElasticBlockStoreVolumeSource object {
    public string fsType;
    public int partition;
    public boolean readOnly;
    public string volumeID;
};

public type io_k8s_api_core_v1_ResourceRequirements object {
    public any limits;
    public any requests;
};

public type io_k8s_api_authorization_v1beta1_SubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_apps_v1_DaemonSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1_DaemonSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicySpec object {
    public io_k8s_api_extensions_v1beta1_NetworkPolicyEgressRule[] egress;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyIngressRule[] ingress;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector podSelector;
    public string[] policyTypes;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_StatusDetails object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_StatusCause[] causes;
    public string _group;
    public string kind;
    public string name;
    public int retryAfterSeconds;
    public string uid;
};

public type io_k8s_api_core_v1_ClientIPConfig object {
    public int timeoutSeconds;
};

public type io_k8s_api_policy_v1beta1_PodSecurityPolicySpec object {
    public boolean allowPrivilegeEscalation;
    public string[] allowedCapabilities;
    public io_k8s_api_policy_v1beta1_AllowedFlexVolume[] allowedFlexVolumes;
    public io_k8s_api_policy_v1beta1_AllowedHostPath[] allowedHostPaths;
    public string[] defaultAddCapabilities;
    public boolean defaultAllowPrivilegeEscalation;
    public io_k8s_api_policy_v1beta1_FSGroupStrategyOptions fsGroup;
    public boolean hostIPC;
    public boolean hostNetwork;
    public boolean hostPID;
    public io_k8s_api_policy_v1beta1_HostPortRange[] hostPorts;
    public boolean privileged;
    public boolean readOnlyRootFilesystem;
    public string[] requiredDropCapabilities;
    public io_k8s_api_policy_v1beta1_RunAsUserStrategyOptions runAsUser;
    public io_k8s_api_policy_v1beta1_SELinuxStrategyOptions seLinux;
    public io_k8s_api_policy_v1beta1_SupplementalGroupsStrategyOptions supplementalGroups;
    public string[] volumes;
};

public type io_k8s_api_rbac_v1beta1_ClusterRoleBindingList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1beta1_ClusterRoleBinding[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_Initializer object {
    public string name;
};

public type io_k8s_api_extensions_v1beta1_DeploymentCondition object {
    public time:Time? lastTransitionTime;
    public time:Time? lastUpdateTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_ServiceStatus object {
    public io_k8s_api_core_v1_LoadBalancerStatus loadBalancer;
};

public type io_k8s_api_apps_v1beta2_Scale object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta2_ScaleSpec spec;
    public io_k8s_api_apps_v1beta2_ScaleStatus status;
};

public type io_k8s_api_batch_v1_JobList object {
    public string apiVersion;
    public io_k8s_api_batch_v1_Job[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_authorization_v1beta1_SubjectAccessReviewSpec object {
    public any extra;
    public string[] _group;
    public io_k8s_api_authorization_v1beta1_NonResourceAttributes nonResourceAttributes;
    public io_k8s_api_authorization_v1beta1_ResourceAttributes resourceAttributes;
    public string uid;
    public string user;
};

public type io_k8s_api_authorization_v1beta1_ResourceRule object {
    public string[] apiGroups;
    public string[] resourceNames;
    public string[] resources;
    public string[] verbs;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_APIResourceList object {
    public string apiVersion;
    public string groupVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_APIResource[] resources;
};

public type io_k8s_api_apps_v1beta1_Scale object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta1_ScaleSpec spec;
    public io_k8s_api_apps_v1beta1_ScaleStatus status;
};

public type io_k8s_api_authorization_v1beta1_ResourceAttributes object {
    public string _group;
    public string name;
    public string namespace;
    public string _resource;
    public string subresource;
    public string verb;
    public string _version;
};

public type io_k8s_api_apps_v1beta2_StatefulSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta2_StatefulSetSpec spec;
    public io_k8s_api_apps_v1beta2_StatefulSetStatus status;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionSpec object {
    public string _group;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionNames names;
    public string _scope;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresources subresources;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceValidation validation;
    public string _version;
};

public type io_k8s_api_core_v1_ConfigMapKeySelector object {
    public string key;
    public string name;
    public boolean optional;
};

public type io_k8s_api_storage_v1beta1_VolumeAttachmentSource object {
    public string persistentVolumeName;
};

public type io_k8s_api_core_v1_ScaleIOPersistentVolumeSource object {
    public string fsType;
    public string gateway;
    public string protectionDomain;
    public boolean readOnly;
    public io_k8s_api_core_v1_SecretReference secretRef;
    public boolean sslEnabled;
    public string storageMode;
    public string storagePool;
    public string system;
    public string volumeName;
};

public type io_k8s_api_apps_v1beta2_StatefulSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta2_StatefulSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_APIResource object {
    public string[] categories;
    public string _group;
    public string kind;
    public string name;
    public boolean namespaced;
    public string[] shortNames;
    public string singularName;
    public string[] verbs;
    public string _version;
};

public type io_k8s_api_extensions_v1beta1_RollingUpdateDeployment object {
    public int|string maxSurge;
    public int|string maxUnavailable;
};

public type io_k8s_api_apps_v1_StatefulSetStatus object {
    public int collisionCount;
    public io_k8s_api_apps_v1_StatefulSetCondition[] conditions;
    public int currentReplicas;
    public string currentRevision;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public string updateRevision;
    public int updatedReplicas;
};

public type io_k8s_api_policy_v1beta1_PodDisruptionBudgetList object {
    public string apiVersion;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudget[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_NodeSpec object {
    public io_k8s_api_core_v1_NodeConfigSource configSource;
    public string externalID;
    public string podCIDR;
    public string providerID;
    public io_k8s_api_core_v1_Taint[] taints;
    public boolean unschedulable;
};

public type io_k8s_api_policy_v1beta1_SupplementalGroupsStrategyOptions object {
    public io_k8s_api_policy_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_core_v1_EnvVar object {
    public string name;
    public string value;
    public io_k8s_api_core_v1_EnvVarSource valueFrom;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1beta2_ScaleStatus object {
    public int replicas;
    public any selector;
    public string targetSelector;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_APIVersions object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ServerAddressByClientCIDR[] serverAddressByClientCIDRs;
    public string[] versions;
};

public type io_k8s_api_apps_v1_RollingUpdateDeployment object {
    public int|string maxSurge;
    public int|string maxUnavailable;
};

public type io_k8s_api_apps_v1_StatefulSetUpdateStrategy object {
    public io_k8s_api_apps_v1_RollingUpdateStatefulSetStrategy rollingUpdate;
    public string _type;
};

public type io_k8s_api_extensions_v1beta1_DaemonSetStatus object {
    public int collisionCount;
    public io_k8s_api_extensions_v1beta1_DaemonSetCondition[] conditions;
    public int currentNumberScheduled;
    public int desiredNumberScheduled;
    public int numberAvailable;
    public int numberMisscheduled;
    public int numberReady;
    public int numberUnavailable;
    public int observedGeneration;
    public int updatedNumberScheduled;
};

public type io_k8s_api_extensions_v1beta1_DaemonSetUpdateStrategy object {
    public io_k8s_api_extensions_v1beta1_RollingUpdateDaemonSet rollingUpdate;
    public string _type;
};

public type io_k8s_api_core_v1_ContainerStateWaiting object {
    public string message;
    public string reason;
};

public type io_k8s_api_core_v1_AttachedVolume object {
    public string devicePath;
    public string name;
};

public type io_k8s_api_extensions_v1beta1_Ingress object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_IngressSpec spec;
    public io_k8s_api_extensions_v1beta1_IngressStatus status;
};

public type io_k8s_api_authorization_v1beta1_SelfSubjectRulesReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1beta1_SelfSubjectRulesReviewSpec spec;
    public io_k8s_api_authorization_v1beta1_SubjectRulesReviewStatus status;
};

public type io_k8s_api_certificates_v1beta1_CertificateSigningRequestCondition object {
    public time:Time? lastUpdateTime;
    public string message;
    public string reason;
    public string _type;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_WatchEvent object {
    public io_k8s_apimachinery_pkg_runtime_RawExtension _object;
    public string _type;
};

public type io_k8s_api_core_v1_HostPathVolumeSource object {
    public string path;
    public string _type;
};

public type io_k8s_api_authorization_v1_SelfSubjectRulesReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1_SelfSubjectRulesReviewSpec spec;
    public io_k8s_api_authorization_v1_SubjectRulesReviewStatus status;
};

public type io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfigurationList object {
    public string apiVersion;
    public io_k8s_api_admissionregistration_v1beta1_MutatingWebhookConfiguration[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_batch_v1beta1_CronJob object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_batch_v1beta1_CronJobSpec spec;
    public io_k8s_api_batch_v1beta1_CronJobStatus status;
};

public type io_k8s_api_core_v1_ContainerPort object {
    public int containerPort;
    public string hostIP;
    public int hostPort;
    public string name;
    public string protocol;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicyList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_NetworkPolicy[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ContainerStateTerminated object {
    public string containerID;
    public int exitCode;
    public time:Time? finishedAt;
    public string message;
    public string reason;
    public int signal;
    public time:Time? startedAt;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta object {
    public map annotations;
    public string clusterName;
    public time:Time?? creationTimestamp;
    public int deletionGracePeriodSeconds;
    public time:Time?? deletionTimestamp;
    public string[] finalizers;
    public string generateName;
    public int generation;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Initializers initializers;
    public map labels;
    public string name;
    public string namespace;
    public io_k8s_apimachinery_pkg_apis_meta_v1_OwnerReference[] ownerReferences;
    public string resourceVersion;
    public string selfLink;
    public string uid;
};

public type io_k8s_api_extensions_v1beta1_DaemonSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1beta1_ControllerRevisionList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta1_ControllerRevision[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta2_DaemonSetStatus object {
    public int collisionCount;
    public io_k8s_api_apps_v1beta2_DaemonSetCondition[] conditions;
    public int currentNumberScheduled;
    public int desiredNumberScheduled;
    public int numberAvailable;
    public int numberMisscheduled;
    public int numberReady;
    public int numberUnavailable;
    public int observedGeneration;
    public int updatedNumberScheduled;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicyPort object {
    public int|string port;
    public string protocol;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_ExternalDocumentation object {
    public string description;
    public string url;
};

public type io_k8s_api_core_v1_FlexPersistentVolumeSource object {
    public string driver;
    public string fsType;
    public any options;
    public boolean readOnly;
    public io_k8s_api_core_v1_SecretReference secretRef;
};

public type io_k8s_api_rbac_v1_RoleBindingList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1_RoleBinding[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_storage_v1_StorageClass object {
    public boolean allowVolumeExpansion;
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public string[] mountOptions;
    public any parameters;
    public string provisioner;
    public string reclaimPolicy;
    public string volumeBindingMode;
};

public type io_k8s_api_core_v1_LimitRangeSpec object {
    public io_k8s_api_core_v1_LimitRangeItem[] limits;
};

public type io_k8s_api_extensions_v1beta1_ReplicaSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_PodList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Pod[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_AzureDiskVolumeSource object {
    public string cachingMode;
    public string diskName;
    public string diskURI;
    public string fsType;
    public string kind;
    public boolean readOnly;
};

public type io_k8s_api_policy_v1beta1_PodSecurityPolicy object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_policy_v1beta1_PodSecurityPolicySpec spec;
};

public type io_k8s_api_extensions_v1beta1_DeploymentRollback object {
    public string apiVersion;
    public string kind;
    public string name;
    public io_k8s_api_extensions_v1beta1_RollbackConfig rollbackTo;
    public any updatedAnnotations;
};

public type io_k8s_apimachinery_pkg_version_Info object {
    public string buildDate;
    public string compiler;
    public string gitCommit;
    public string gitTreeState;
    public string gitVersion;
    public string goVersion;
    public string major;
    public string minor;
    public string platform;
};

public type io_k8s_api_authorization_v1_ResourceAttributes object {
    public string _group;
    public string name;
    public string namespace;
    public string _resource;
    public string subresource;
    public string verb;
    public string _version;
};

public type io_k8s_api_core_v1_ReplicationControllerStatus object {
    public int availableReplicas;
    public io_k8s_api_core_v1_ReplicationControllerCondition[] conditions;
    public int fullyLabeledReplicas;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
};

public type io_k8s_api_apps_v1beta2_RollingUpdateStatefulSetStrategy object {
    public int partition;
};

public type io_k8s_api_core_v1_StorageOSPersistentVolumeSource object {
    public string fsType;
    public boolean readOnly;
    public io_k8s_api_core_v1_ObjectReference secretRef;
    public string volumeName;
    public string volumeNamespace;
};

public type io_k8s_api_apps_v1beta2_DaemonSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta2_DaemonSetSpec spec;
    public io_k8s_api_apps_v1beta2_DaemonSetStatus status;
};

public type io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerSpec spec;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerStatus status;
};

public type io_k8s_api_authentication_v1beta1_TokenReviewStatus object {
    public boolean authenticated;
    public string _error;
    public io_k8s_api_authentication_v1beta1_UserInfo user;
};

public type io_k8s_api_core_v1_CinderVolumeSource object {
    public string fsType;
    public boolean readOnly;
    public string volumeID;
};

public type io_k8s_api_core_v1_ConfigMapList object {
    public string apiVersion;
    public io_k8s_api_core_v1_ConfigMap[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_Event object {
    public string action;
    public string apiVersion;
    public int count;
    public time:Time? eventTime;
    public time:Time? firstTimestamp;
    public io_k8s_api_core_v1_ObjectReference involvedObject;
    public string kind;
    public time:Time? lastTimestamp;
    public string message;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public string reason;
    public io_k8s_api_core_v1_ObjectReference related;
    public string reportingComponent;
    public string reportingInstance;
    public io_k8s_api_core_v1_EventSeries series;
    public io_k8s_api_core_v1_EventSource source;
    public string _type;
};

public type io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_policy_v1beta1_AllowedHostPath object {
    public string pathPrefix;
};

public type io_k8s_api_core_v1_ISCSIPersistentVolumeSource object {
    public boolean chapAuthDiscovery;
    public boolean chapAuthSession;
    public string fsType;
    public string initiatorName;
    public string iqn;
    public string iscsiInterface;
    public int lun;
    public string[] portals;
    public boolean readOnly;
    public io_k8s_api_core_v1_SecretReference secretRef;
    public string targetPortal;
};

public type io_k8s_api_apps_v1_ReplicaSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1_ReplicaSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_OwnerReference object {
    public string apiVersion;
    public boolean blockOwnerDeletion;
    public boolean controller;
    public string kind;
    public string name;
    public string uid;
};

public type io_k8s_api_core_v1_ComponentStatusList object {
    public string apiVersion;
    public io_k8s_api_core_v1_ComponentStatus[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ContainerImage object {
    public string[] names;
    public int sizeBytes;
};

public type io_k8s_api_apps_v1beta2_StatefulSetSpec object {
    public string podManagementPolicy;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public string serviceName;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public io_k8s_api_apps_v1beta2_StatefulSetUpdateStrategy updateStrategy;
    public io_k8s_api_core_v1_PersistentVolumeClaim[] volumeClaimTemplates;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_Preconditions object {
    public string uid;
};

public type io_k8s_api_apps_v1_ReplicaSetSpec object {
    public int minReadySeconds;
    public int replicas;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_core_v1_AzureFileVolumeSource object {
    public boolean readOnly;
    public string secretName;
    public string shareName;
};

public type io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfigurationList object {
    public string apiVersion;
    public io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_RollbackConfig object {
    public int revision;
};

public type io_k8s_api_extensions_v1beta1_AllowedHostPath object {
    public string pathPrefix;
};

public type io_k8s_api_core_v1_LimitRangeList object {
    public string apiVersion;
    public io_k8s_api_core_v1_LimitRange[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_storage_v1beta1_VolumeAttachmentList object {
    public string apiVersion;
    public io_k8s_api_storage_v1beta1_VolumeAttachment[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta1_DeploymentStatus object {
    public int availableReplicas;
    public int collisionCount;
    public io_k8s_api_apps_v1beta1_DeploymentCondition[] conditions;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public int unavailableReplicas;
    public int updatedReplicas;
};

public type io_k8s_api_core_v1_NodeList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Node[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta1_StatefulSetSpec object {
    public string podManagementPolicy;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public string serviceName;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public io_k8s_api_apps_v1beta1_StatefulSetUpdateStrategy updateStrategy;
    public io_k8s_api_core_v1_PersistentVolumeClaim[] volumeClaimTemplates;
};

public type io_k8s_api_apps_v1_DeploymentSpec object {
    public int minReadySeconds;
    public boolean paused;
    public int progressDeadlineSeconds;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_apps_v1_DeploymentStrategy strategy;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_storage_v1beta1_VolumeAttachmentStatus object {
    public io_k8s_api_storage_v1beta1_VolumeError attachError;
    public boolean attached;
    public any attachmentMetadata;
    public io_k8s_api_storage_v1beta1_VolumeError detachError;
};

public type io_k8s_api_core_v1_GlusterfsVolumeSource object {
    public string endpoints;
    public string path;
    public boolean readOnly;
};

public type io_k8s_api_apps_v1_Deployment object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta? metadata;
    public io_k8s_api_apps_v1_DeploymentSpec? spec;
    public io_k8s_api_apps_v1_DeploymentStatus? status;
};

public type io_k8s_api_rbac_v1beta1_Role object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1beta1_PolicyRule[] rules;
};

public type io_k8s_api_core_v1_VolumeNodeAffinity object {
    public io_k8s_api_core_v1_NodeSelector required;
};

public type io_k8s_api_apps_v1_DaemonSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_authorization_v1_NonResourceAttributes object {
    public string path;
    public string verb;
};

public type io_k8s_api_core_v1_Volume object {
    public io_k8s_api_core_v1_AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
    public io_k8s_api_core_v1_AzureDiskVolumeSource azureDisk;
    public io_k8s_api_core_v1_AzureFileVolumeSource azureFile;
    public io_k8s_api_core_v1_CephFSVolumeSource cephfs;
    public io_k8s_api_core_v1_CinderVolumeSource cinder;
    public io_k8s_api_core_v1_ConfigMapVolumeSource configMap;
    public io_k8s_api_core_v1_DownwardAPIVolumeSource downwardAPI;
    public io_k8s_api_core_v1_EmptyDirVolumeSource emptyDir;
    public io_k8s_api_core_v1_FCVolumeSource fc;
    public io_k8s_api_core_v1_FlexVolumeSource flexVolume;
    public io_k8s_api_core_v1_FlockerVolumeSource flocker;
    public io_k8s_api_core_v1_GCEPersistentDiskVolumeSource gcePersistentDisk;
    public io_k8s_api_core_v1_GitRepoVolumeSource gitRepo;
    public io_k8s_api_core_v1_GlusterfsVolumeSource glusterfs;
    public io_k8s_api_core_v1_HostPathVolumeSource hostPath;
    public io_k8s_api_core_v1_ISCSIVolumeSource iscsi;
    public string name;
    public io_k8s_api_core_v1_NFSVolumeSource nfs;
    public io_k8s_api_core_v1_PersistentVolumeClaimVolumeSource persistentVolumeClaim;
    public io_k8s_api_core_v1_PhotonPersistentDiskVolumeSource photonPersistentDisk;
    public io_k8s_api_core_v1_PortworxVolumeSource portworxVolume;
    public io_k8s_api_core_v1_ProjectedVolumeSource projected;
    public io_k8s_api_core_v1_QuobyteVolumeSource quobyte;
    public io_k8s_api_core_v1_RBDVolumeSource rbd;
    public io_k8s_api_core_v1_ScaleIOVolumeSource scaleIO;
    public io_k8s_api_core_v1_SecretVolumeSource secret;
    public io_k8s_api_core_v1_StorageOSVolumeSource storageos;
    public io_k8s_api_core_v1_VsphereVirtualDiskVolumeSource vsphereVolume;
};

public type io_k8s_api_events_v1beta1_EventSeries object {
    public int count;
    public time:Time? lastObservedTime;
    public string state;
};

public type io_k8s_api_core_v1_SecretProjection object {
    public io_k8s_api_core_v1_KeyToPath[] items;
    public string name;
    public boolean optional;
};

public type io_k8s_api_rbac_v1beta1_Subject object {
    public string apiGroup;
    public string kind;
    public string name;
    public string namespace;
};

public type io_k8s_api_policy_v1beta1_Eviction object {
    public string apiVersion;
    public io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions deleteOptions;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_AllowedFlexVolume object {
    public string driver;
};

public type io_k8s_api_core_v1_ResourceQuota object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_ResourceQuotaSpec spec;
    public io_k8s_api_core_v1_ResourceQuotaStatus status;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_Initializers object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_Initializer[] pending;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Status result;
};

public type io_k8s_api_rbac_v1beta1_ClusterRole object {
    public io_k8s_api_rbac_v1beta1_AggregationRule aggregationRule;
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1beta1_PolicyRule[] rules;
};

public type io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerStatus object {
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerCondition[] conditions;
    public io_k8s_api_autoscaling_v2beta1_MetricStatus[] currentMetrics;
    public int currentReplicas;
    public int desiredReplicas;
    public time:Time? lastScaleTime;
    public int observedGeneration;
};

public type io_k8s_api_core_v1_HTTPGetAction object {
    public string host;
    public io_k8s_api_core_v1_HTTPHeader[] httpHeaders;
    public string path;
    public int|string port;
    public string scheme;
};

public type io_k8s_api_core_v1_NodeSelector object {
    public io_k8s_api_core_v1_NodeSelectorTerm[] nodeSelectorTerms;
};

public type io_k8s_api_events_v1beta1_EventList object {
    public string apiVersion;
    public io_k8s_api_events_v1beta1_Event[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_StorageOSVolumeSource object {
    public string fsType;
    public boolean readOnly;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
    public string volumeName;
    public string volumeNamespace;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelectorRequirement object {
    public string key;
    public string operator;
    public string[] values;
};

public type io_k8s_api_authorization_v1_ResourceRule object {
    public string[] apiGroups;
    public string[] resourceNames;
    public string[] resources;
    public string[] verbs;
};

public type io_k8s_api_core_v1_DownwardAPIProjection object {
    public io_k8s_api_core_v1_DownwardAPIVolumeFile[] items;
};

public type io_k8s_api_storage_v1_StorageClassList object {
    public string apiVersion;
    public io_k8s_api_storage_v1_StorageClass[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_rbac_v1beta1_RoleBinding object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1beta1_RoleRef roleRef;
    public io_k8s_api_rbac_v1beta1_Subject[] subjects;
};

public type io_k8s_api_apps_v1_DaemonSetUpdateStrategy object {
    public io_k8s_api_apps_v1_RollingUpdateDaemonSet rollingUpdate;
    public string _type;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicyIngressRule object {
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPeer[] _from;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPort[] ports;
};

public type io_k8s_api_authorization_v1beta1_SelfSubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1beta1_SelfSubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicy object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_NetworkPolicySpec spec;
};

public type io_k8s_api_rbac_v1beta1_RoleRef object {
    public string apiGroup;
    public string kind;
    public string name;
};

public type io_k8s_api_core_v1_NodeSystemInfo object {
    public string architecture;
    public string bootID;
    public string containerRuntimeVersion;
    public string kernelVersion;
    public string kubeProxyVersion;
    public string kubeletVersion;
    public string machineID;
    public string operatingSystem;
    public string osImage;
    public string systemUUID;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_ServerAddressByClientCIDR object {
    public string clientCIDR;
    public string serverAddress;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_Status object {
    public string apiVersion;
    public int code;
    public io_k8s_apimachinery_pkg_apis_meta_v1_StatusDetails details;
    public string kind;
    public string message;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
    public string reason;
    public string status;
};

public type io_k8s_api_autoscaling_v2beta1_MetricSpec object {
    public io_k8s_api_autoscaling_v2beta1_ExternalMetricSource external;
    public io_k8s_api_autoscaling_v2beta1_ObjectMetricSource _object;
    public io_k8s_api_autoscaling_v2beta1_PodsMetricSource pods;
    public io_k8s_api_autoscaling_v2beta1_ResourceMetricSource _resource;
    public string _type;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionSpec spec;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionStatus status;
};

public type io_k8s_api_apps_v1_StatefulSetSpec object {
    public string podManagementPolicy;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public string serviceName;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public io_k8s_api_apps_v1_StatefulSetUpdateStrategy updateStrategy;
    public io_k8s_api_core_v1_PersistentVolumeClaim[] volumeClaimTemplates;
};

public type io_k8s_api_core_v1_Probe object {
    public io_k8s_api_core_v1_ExecAction exec;
    public int failureThreshold;
    public io_k8s_api_core_v1_HTTPGetAction httpGet;
    public int initialDelaySeconds;
    public int periodSeconds;
    public int successThreshold;
    public io_k8s_api_core_v1_TCPSocketAction tcpSocket;
    public int timeoutSeconds;
};

public type io_k8s_api_core_v1_ScaleIOVolumeSource object {
    public string fsType;
    public string gateway;
    public string protectionDomain;
    public boolean readOnly;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
    public boolean sslEnabled;
    public string storageMode;
    public string storagePool;
    public string system;
    public string volumeName;
};

public type io_k8s_api_extensions_v1beta1_ReplicaSetStatus object {
    public int availableReplicas;
    public io_k8s_api_extensions_v1beta1_ReplicaSetCondition[] conditions;
    public int fullyLabeledReplicas;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
};

public type io_k8s_api_autoscaling_v2beta1_PodsMetricStatus object {
    public io_k8s_apimachinery_pkg_api_resource_Quantity currentAverageValue;
    public string metricName;
};

public type io_k8s_api_core_v1_LoadBalancerIngress object {
    public string hostname;
    public string ip;
};

public type io_k8s_api_extensions_v1beta1_DaemonSetSpec object {
    public int minReadySeconds;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public int templateGeneration;
    public io_k8s_api_extensions_v1beta1_DaemonSetUpdateStrategy updateStrategy;
};

public type io_k8s_api_policy_v1beta1_HostPortRange object {
    public int max;
    public int min;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_GroupVersionForDiscovery object {
    public string groupVersion;
    public string _version;
};

public type io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerSpec spec;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerStatus status;
};

public type io_k8s_api_autoscaling_v2beta1_PodsMetricSource object {
    public string metricName;
    public io_k8s_apimachinery_pkg_api_resource_Quantity targetAverageValue;
};

public type io_k8s_api_core_v1_GCEPersistentDiskVolumeSource object {
    public string fsType;
    public int partition;
    public string pdName;
    public boolean readOnly;
};

public type io_k8s_api_networking_v1_NetworkPolicyIngressRule object {
    public io_k8s_api_networking_v1_NetworkPolicyPeer[] _from;
    public io_k8s_api_networking_v1_NetworkPolicyPort[] ports;
};

public type io_k8s_api_apps_v1beta2_DaemonSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta2_DaemonSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_EnvVarSource object {
    public io_k8s_api_core_v1_ConfigMapKeySelector configMapKeyRef;
    public io_k8s_api_core_v1_ObjectFieldSelector fieldRef;
    public io_k8s_api_core_v1_ResourceFieldSelector resourceFieldRef;
    public io_k8s_api_core_v1_SecretKeySelector secretKeyRef;
};

public type io_k8s_api_apps_v1beta2_ReplicaSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta2_ReplicaSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_apimachinery_pkg_runtime_RawExtension object {
    public string Raw;
};

public type io_k8s_api_extensions_v1beta1_ReplicaSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_ReplicaSetSpec spec;
    public io_k8s_api_extensions_v1beta1_ReplicaSetStatus status;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrBool object {
    public boolean Allows;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps? Schema;
};

public type io_k8s_api_core_v1_NodeStatus object {
    public io_k8s_api_core_v1_NodeAddress[] addresses;
    public any allocatable;
    public any capacity;
    public io_k8s_api_core_v1_NodeCondition[] conditions;
    public io_k8s_api_core_v1_NodeDaemonEndpoints daemonEndpoints;
    public io_k8s_api_core_v1_ContainerImage[] images;
    public io_k8s_api_core_v1_NodeSystemInfo nodeInfo;
    public string phase;
    public io_k8s_api_core_v1_AttachedVolume[] volumesAttached;
    public string[] volumesInUse;
};

public type io_k8s_api_apps_v1beta2_ReplicaSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_EventSource object {
    public string component;
    public string host;
};

public type io_k8s_api_apps_v1beta1_StatefulSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta1_StatefulSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta1_Deployment object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta1_DeploymentSpec spec;
    public io_k8s_api_apps_v1beta1_DeploymentStatus status;
};

public type io_k8s_api_apps_v1beta1_DeploymentStrategy object {
    public io_k8s_api_apps_v1beta1_RollingUpdateDeployment rollingUpdate;
    public string _type;
};

public type io_k8s_api_core_v1_Namespace object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_NamespaceSpec spec;
    public io_k8s_api_core_v1_NamespaceStatus status;
};

public type io_k8s_api_apps_v1beta2_DeploymentSpec object {
    public int minReadySeconds;
    public boolean paused;
    public int progressDeadlineSeconds;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_apps_v1beta2_DeploymentStrategy strategy;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionNames object {
    public string[] categories;
    public string kind;
    public string listKind;
    public string plural;
    public string[] shortNames;
    public string singular;
};

public type io_k8s_api_extensions_v1beta1_DeploymentSpec object {
    public int minReadySeconds;
    public boolean paused;
    public int progressDeadlineSeconds;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_api_extensions_v1beta1_RollbackConfig rollbackTo;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_extensions_v1beta1_DeploymentStrategy strategy;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_core_v1_Capabilities object {
    public string[] add;
    public string[] drop;
};

public type io_k8s_api_core_v1_LimitRange object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_LimitRangeSpec spec;
};

public type io_k8s_api_extensions_v1beta1_ReplicaSetSpec object {
    public int minReadySeconds;
    public int replicas;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_apps_v1beta2_ReplicaSetSpec object {
    public int minReadySeconds;
    public int replicas;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicyEgressRule object {
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPort[] ports;
    public io_k8s_api_extensions_v1beta1_NetworkPolicyPeer[] to;
};

public type io_k8s_api_core_v1_PersistentVolumeClaimVolumeSource object {
    public string claimName;
    public boolean readOnly;
};

public type io_k8s_api_authorization_v1_SelfSubjectAccessReviewSpec object {
    public io_k8s_api_authorization_v1_NonResourceAttributes nonResourceAttributes;
    public io_k8s_api_authorization_v1_ResourceAttributes resourceAttributes;
};

public type io_k8s_api_core_v1_Affinity object {
    public io_k8s_api_core_v1_NodeAffinity nodeAffinity;
    public io_k8s_api_core_v1_PodAffinity podAffinity;
    public io_k8s_api_core_v1_PodAntiAffinity podAntiAffinity;
};

public type io_k8s_api_extensions_v1beta1_FSGroupStrategyOptions object {
    public io_k8s_api_extensions_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_storage_v1beta1_StorageClass object {
    public boolean allowVolumeExpansion;
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public string[] mountOptions;
    public any parameters;
    public string provisioner;
    public string reclaimPolicy;
    public string volumeBindingMode;
};

public type io_k8s_api_core_v1_PodTemplateSpec object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_PodSpec spec;
};

public type io_k8s_api_core_v1_ReplicationControllerList object {
    public string apiVersion;
    public io_k8s_api_core_v1_ReplicationController[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_NodeAddress object {
    public string address;
    public string _type;
};

public type io_k8s_api_apps_v1_RollingUpdateDaemonSet object {
    public int|string maxUnavailable;
};

public type io_k8s_api_extensions_v1beta1_PodSecurityPolicy object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_PodSecurityPolicySpec spec;
};

public type io_k8s_api_core_v1_RBDVolumeSource object {
    public string fsType;
    public string image;
    public string keyring;
    public string[] monitors;
    public string pool;
    public boolean readOnly;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
    public string user;
};

public type io_k8s_api_apps_v1_StatefulSetList object {
    public string apiVersion;
    public io_k8s_api_apps_v1_StatefulSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_PodDNSConfigOption object {
    public string name;
    public string value;
};

public type io_k8s_api_authorization_v1beta1_SelfSubjectAccessReviewSpec object {
    public io_k8s_api_authorization_v1beta1_NonResourceAttributes nonResourceAttributes;
    public io_k8s_api_authorization_v1beta1_ResourceAttributes resourceAttributes;
};

public type io_k8s_api_core_v1_PortworxVolumeSource object {
    public string fsType;
    public boolean readOnly;
    public string volumeID;
};

public type io_k8s_api_certificates_v1beta1_CertificateSigningRequestList object {
    public string apiVersion;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequest[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_NamespaceSpec object {
    public string[] finalizers;
};

public type io_k8s_api_apps_v1_DeploymentStrategy object {
    public io_k8s_api_apps_v1_RollingUpdateDeployment rollingUpdate;
    public string _type;
};

public type io_k8s_api_policy_v1beta1_FSGroupStrategyOptions object {
    public io_k8s_api_policy_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_rbac_v1_ClusterRoleList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1_ClusterRole[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_LocalVolumeSource object {
    public string path;
};

public type io_k8s_api_rbac_v1_ClusterRole object {
    public io_k8s_api_rbac_v1_AggregationRule aggregationRule;
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1_PolicyRule[] rules;
};

public type io_k8s_api_storage_v1beta1_StorageClassList object {
    public string apiVersion;
    public io_k8s_api_storage_v1beta1_StorageClass[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_PersistentVolumeList object {
    public string apiVersion;
    public io_k8s_api_core_v1_PersistentVolume[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ConfigMapEnvSource object {
    public string name;
    public boolean optional;
};

public type io_k8s_api_core_v1_EnvFromSource object {
    public io_k8s_api_core_v1_ConfigMapEnvSource configMapRef;
    public string prefix;
    public io_k8s_api_core_v1_SecretEnvSource secretRef;
};

public type io_k8s_api_core_v1_ComponentCondition object {
    public string _error;
    public string message;
    public string status;
    public string _type;
};

public type io_k8s_api_rbac_v1_RoleRef object {
    public string apiGroup;
    public string kind;
    public string name;
};

public type io_k8s_api_core_v1_ReplicationControllerCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_SessionAffinityConfig object {
    public io_k8s_api_core_v1_ClientIPConfig clientIP;
};

public type io_k8s_api_apps_v1beta2_StatefulSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_APIGroup object {
    public string apiVersion;
    public string kind;
    public string name;
    public io_k8s_apimachinery_pkg_apis_meta_v1_GroupVersionForDiscovery preferredVersion;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ServerAddressByClientCIDR[] serverAddressByClientCIDRs;
    public io_k8s_apimachinery_pkg_apis_meta_v1_GroupVersionForDiscovery[] versions;
};

public type io_k8s_api_extensions_v1beta1_ScaleStatus object {
    public int replicas;
    public any selector;
    public string targetSelector;
};

public type io_k8s_api_apps_v1beta1_StatefulSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta1_StatefulSetSpec spec;
    public io_k8s_api_apps_v1beta1_StatefulSetStatus status;
};

public type io_k8s_api_batch_v1_JobSpec object {
    public int activeDeadlineSeconds;
    public int backoffLimit;
    public int completions;
    public boolean manualSelector;
    public int parallelism;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_authentication_v1_TokenReviewStatus object {
    public boolean authenticated;
    public string _error;
    public io_k8s_api_authentication_v1_UserInfo user;
};

public type io_k8s_api_certificates_v1beta1_CertificateSigningRequestSpec object {
    public any extra;
    public string[] groups;
    public string request;
    public string uid;
    public string[] usages;
    public string username;
};

public type io_k8s_api_authorization_v1beta1_NonResourceRule object {
    public string[] nonResourceURLs;
    public string[] verbs;
};

public type io_k8s_api_core_v1_ContainerStateRunning object {
    public time:Time? startedAt;
};

public type io_k8s_api_networking_v1_NetworkPolicySpec object {
    public io_k8s_api_networking_v1_NetworkPolicyEgressRule[] egress;
    public io_k8s_api_networking_v1_NetworkPolicyIngressRule[] ingress;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector podSelector;
    public string[] policyTypes;
};

public type io_k8s_api_apps_v1_DeploymentStatus object {
    public int availableReplicas;
    public int collisionCount;
    public io_k8s_api_apps_v1_DeploymentCondition[] conditions;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public int unavailableReplicas;
    public int updatedReplicas;
};

public type io_k8s_api_core_v1_PhotonPersistentDiskVolumeSource object {
    public string fsType;
    public string pdID;
};

public type io_k8s_api_authentication_v1_TokenReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authentication_v1_TokenReviewSpec spec;
    public io_k8s_api_authentication_v1_TokenReviewStatus status;
};

public type io_k8s_api_authorization_v1_SubjectAccessReviewSpec object {
    public any extra;
    public string[] groups;
    public io_k8s_api_authorization_v1_NonResourceAttributes nonResourceAttributes;
    public io_k8s_api_authorization_v1_ResourceAttributes resourceAttributes;
    public string uid;
    public string user;
};

public type io_k8s_api_core_v1_PersistentVolumeClaim object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_PersistentVolumeClaimSpec spec;
    public io_k8s_api_core_v1_PersistentVolumeClaimStatus status;
};

public type io_k8s_api_core_v1_ServiceAccountList object {
    public string apiVersion;
    public io_k8s_api_core_v1_ServiceAccount[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_Secret object {
    public string apiVersion;
    public any data;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public any stringData;
    public string _type;
};

public type io_k8s_api_extensions_v1beta1_DaemonSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_DaemonSetSpec spec;
    public io_k8s_api_extensions_v1beta1_DaemonSetStatus status;
};

public type io_k8s_api_core_v1_FlockerVolumeSource object {
    public string datasetName;
    public string datasetUUID;
};

public type io_k8s_api_core_v1_PersistentVolumeClaimList object {
    public string apiVersion;
    public io_k8s_api_core_v1_PersistentVolumeClaim[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_IngressRule object {
    public string host;
    public io_k8s_api_extensions_v1beta1_HTTPIngressRuleValue http;
};

public type io_k8s_api_authorization_v1_NonResourceRule object {
    public string[] nonResourceURLs;
    public string[] verbs;
};

public type io_k8s_api_core_v1_ComponentStatus object {
    public string apiVersion;
    public io_k8s_api_core_v1_ComponentCondition[] conditions;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
};

public type io_k8s_api_certificates_v1beta1_CertificateSigningRequestStatus object {
    public string certificate;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestCondition[] conditions;
};

public type io_k8s_api_core_v1_SecretVolumeSource object {
    public int defaultMode;
    public io_k8s_api_core_v1_KeyToPath[] items;
    public boolean optional;
    public string secretName;
};

public type io_k8s_api_extensions_v1beta1_IngressTLS object {
    public string[] hosts;
    public string secretName;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionList object {
    public string apiVersion;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinition[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_GitRepoVolumeSource object {
    public string directory;
    public string repository;
    public string revision;
};

public type io_k8s_api_core_v1_Toleration object {
    public string effect;
    public string key;
    public string operator;
    public int tolerationSeconds;
    public string value;
};

public type io_k8s_api_core_v1_Lifecycle object {
    public io_k8s_api_core_v1_Handler postStart;
    public io_k8s_api_core_v1_Handler preStop;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_StatusCause object {
    public string field;
    public string message;
    public string reason;
};

public type io_k8s_api_core_v1_PodDNSConfig object {
    public string[] nameservers;
    public io_k8s_api_core_v1_PodDNSConfigOption[] options;
    public string[] searches;
};

public type io_k8s_api_extensions_v1beta1_HostPortRange object {
    public int max;
    public int min;
};

public type io_k8s_api_batch_v1_JobCondition object {
    public time:Time? lastProbeTime;
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_ExecAction object {
    public string[] command;
};

public type io_k8s_api_apps_v1_ReplicaSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1_ReplicaSetSpec spec;
    public io_k8s_api_apps_v1_ReplicaSetStatus status;
};

public type io_k8s_api_rbac_v1_AggregationRule object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector[] clusterRoleSelectors;
};

public type io_k8s_api_rbac_v1beta1_PolicyRule object {
    public string[] apiGroups;
    public string[] nonResourceURLs;
    public string[] resourceNames;
    public string[] resources;
    public string[] verbs;
};

public type io_k8s_api_policy_v1beta1_IDRange object {
    public int max;
    public int min;
};

public type io_k8s_api_apps_v1beta2_DaemonSetSpec object {
    public int minReadySeconds;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public io_k8s_api_apps_v1beta2_DaemonSetUpdateStrategy updateStrategy;
};

public type io_k8s_api_extensions_v1beta1_DeploymentList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_Deployment[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_SupplementalGroupsStrategyOptions object {
    public io_k8s_api_extensions_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_extensions_v1beta1_Deployment object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_extensions_v1beta1_DeploymentSpec spec;
    public io_k8s_api_extensions_v1beta1_DeploymentStatus status;
};

public type io_k8s_api_apps_v1beta2_DaemonSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_SecretList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Secret[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta1_StatefulSetStatus object {
    public int collisionCount;
    public io_k8s_api_apps_v1beta1_StatefulSetCondition[] conditions;
    public int currentReplicas;
    public string currentRevision;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public string updateRevision;
    public int updatedReplicas;
};

public type io_k8s_api_core_v1_HTTPHeader object {
    public string name;
    public string value;
};

public type io_k8s_api_apps_v1beta2_ReplicaSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1beta2_ReplicaSetSpec spec;
    public io_k8s_api_apps_v1beta2_ReplicaSetStatus status;
};

public type io_k8s_api_core_v1_PodSecurityContext object {
    public int fsGroup;
    public int runAsGroup;
    public boolean runAsNonRoot;
    public int runAsUser;
    public io_k8s_api_core_v1_SELinuxOptions seLinuxOptions;
    public int[] supplementalGroups;
};

public type io_k8s_api_extensions_v1beta1_IngressSpec object {
    public io_k8s_api_extensions_v1beta1_IngressBackend backend;
    public io_k8s_api_extensions_v1beta1_IngressRule[] rules;
    public io_k8s_api_extensions_v1beta1_IngressTLS[] tls;
};

public type io_k8s_api_batch_v1beta1_CronJobList object {
    public string apiVersion;
    public io_k8s_api_batch_v1beta1_CronJob[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_admissionregistration_v1beta1_ServiceReference object {
    public string name;
    public string namespace;
    public string path;
};

public type io_k8s_api_rbac_v1beta1_RoleList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1beta1_Role[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_apps_v1beta1_RollingUpdateDeployment object {
    public int|string maxSurge;
    public int|string maxUnavailable;
};

public type io_k8s_api_authentication_v1beta1_TokenReviewSpec object {
    public string token;
};

public type io_k8s_api_extensions_v1beta1_IDRange object {
    public int max;
    public int min;
};

public type io_k8s_api_core_v1_ServiceAccount object {
    public string apiVersion;
    public boolean automountServiceAccountToken;
    public io_k8s_api_core_v1_LocalObjectReference[] imagePullSecrets;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_ObjectReference[] secrets;
};

public type io_k8s_api_extensions_v1beta1_HTTPIngressRuleValue object {
    public io_k8s_api_extensions_v1beta1_HTTPIngressPath[] paths;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_ServiceReference object {
    public string name;
    public string namespace;
};

public type io_k8s_api_core_v1_ISCSIVolumeSource object {
    public boolean chapAuthDiscovery;
    public boolean chapAuthSession;
    public string fsType;
    public string initiatorName;
    public string iqn;
    public string iscsiInterface;
    public int lun;
    public string[] portals;
    public boolean readOnly;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
    public string targetPortal;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceValidation object {
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps openAPIV3Schema;
};

public type io_k8s_api_networking_v1_NetworkPolicyPort object {
    public int|string port;
    public string protocol;
};

public type io_k8s_api_rbac_v1_RoleBinding object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1_RoleRef roleRef;
    public io_k8s_api_rbac_v1_Subject[] subjects;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelectorRequirement[] matchExpressions;
    public any matchLabels;
};

public type io_k8s_api_core_v1_QuobyteVolumeSource object {
    public string _group;
    public boolean readOnly;
    public string registry;
    public string user;
    public string volume;
};

public type io_k8s_api_rbac_v1beta1_ClusterRoleList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1beta1_ClusterRole[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_admissionregistration_v1beta1_ValidatingWebhookConfiguration object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_admissionregistration_v1beta1_Webhook[] webhooks;
};

public type io_k8s_api_core_v1_PodAntiAffinity object {
    public io_k8s_api_core_v1_WeightedPodAffinityTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    public io_k8s_api_core_v1_PodAffinityTerm[] requiredDuringSchedulingIgnoredDuringExecution;
};

public type io_k8s_api_authentication_v1_UserInfo object {
    public any extra;
    public string[] groups;
    public string uid;
    public string username;
};

public type io_k8s_api_core_v1_ResourceFieldSelector object {
    public string containerName;
    public io_k8s_apimachinery_pkg_api_resource_Quantity divisor;
    public string _resource;
};

public type io_k8s_api_core_v1_DaemonEndpoint object {
    public int Port;
};

public type io_k8s_api_extensions_v1beta1_ReplicaSetList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_ReplicaSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_policy_v1beta1_AllowedFlexVolume object {
    public string driver;
};

public type io_k8s_api_networking_v1_IPBlock object {
    public string cidr;
    public string[] except;
};

public type io_k8s_api_apps_v1beta2_DeploymentCondition object {
    public time:Time? lastTransitionTime;
    public time:Time? lastUpdateTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_authentication_v1beta1_TokenReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authentication_v1beta1_TokenReviewSpec spec;
    public io_k8s_api_authentication_v1beta1_TokenReviewStatus status;
};

public type io_k8s_api_storage_v1beta1_VolumeError object {
    public string message;
    public time:Time? time;
};

public type io_k8s_api_apps_v1beta1_StatefulSetUpdateStrategy object {
    public io_k8s_api_apps_v1beta1_RollingUpdateStatefulSetStrategy rollingUpdate;
    public string _type;
};

public type io_k8s_api_networking_v1_NetworkPolicyEgressRule object {
    public io_k8s_api_networking_v1_NetworkPolicyPort[] ports;
    public io_k8s_api_networking_v1_NetworkPolicyPeer[] to;
};

public type io_k8s_api_batch_v1beta1_CronJobStatus object {
    public io_k8s_api_core_v1_ObjectReference[] active;
    public time:Time? lastScheduleTime;
};

public type io_k8s_api_apps_v1beta1_RollbackConfig object {
    public int revision;
};

public type io_k8s_api_admissionregistration_v1beta1_Webhook object {
    public io_k8s_api_admissionregistration_v1beta1_WebhookClientConfig clientConfig;
    public string failurePolicy;
    public string name;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector namespaceSelector;
    public io_k8s_api_admissionregistration_v1beta1_RuleWithOperations[] rules;
};

public type io_k8s_api_core_v1_LimitRangeItem object {
    public any default;
    public any defaultRequest;
    public any max;
    public any maxLimitRequestRatio;
    public any min;
    public string _type;
};

public type io_k8s_api_authentication_v1beta1_UserInfo object {
    public any extra;
    public string[] groups;
    public string uid;
    public string username;
};

public type io_k8s_api_core_v1_PodCondition object {
    public time:Time? lastProbeTime;
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_autoscaling_v1_ScaleSpec object {
    public int replicas;
};

public type io_k8s_api_authorization_v1_SubjectAccessReviewStatus object {
    public boolean allowed;
    public boolean denied;
    public string evaluationError;
    public string reason;
};

public type io_k8s_api_rbac_v1_ClusterRoleBinding object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1_RoleRef roleRef;
    public io_k8s_api_rbac_v1_Subject[] subjects;
};

public type io_k8s_api_networking_v1_NetworkPolicyList object {
    public string apiVersion;
    public io_k8s_api_networking_v1_NetworkPolicy[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_Container object {
    public string[] args;
    public string[] command;
    public io_k8s_api_core_v1_EnvVar[] env;
    public io_k8s_api_core_v1_EnvFromSource[] envFrom;
    public string image;
    public string imagePullPolicy;
    public io_k8s_api_core_v1_Lifecycle lifecycle;
    public io_k8s_api_core_v1_Probe livenessProbe;
    public string name;
    public io_k8s_api_core_v1_ContainerPort[] ports;
    public io_k8s_api_core_v1_Probe readinessProbe;
    public io_k8s_api_core_v1_ResourceRequirements resources;
    public io_k8s_api_core_v1_SecurityContext securityContext;
    public boolean stdin;
    public boolean stdinOnce;
    public string terminationMessagePath;
    public string terminationMessagePolicy;
    public boolean tty;
    public io_k8s_api_core_v1_VolumeDevice[] volumeDevices;
    public io_k8s_api_core_v1_VolumeMount[] volumeMounts;
    public string workingDir;
};

public type io_k8s_api_apps_v1beta2_DeploymentStrategy object {
    public io_k8s_api_apps_v1beta2_RollingUpdateDeployment rollingUpdate;
    public string _type;
};

public type io_k8s_api_batch_v1beta1_JobTemplateSpec object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_batch_v1_JobSpec spec;
};

public type io_k8s_api_apps_v1beta1_ControllerRevision object {
    public string apiVersion;
    public io_k8s_apimachinery_pkg_runtime_RawExtension data;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public int revision;
};

public type io_k8s_api_apps_v1beta1_DeploymentSpec object {
    public int minReadySeconds;
    public boolean paused;
    public int progressDeadlineSeconds;
    public int replicas;
    public int revisionHistoryLimit;
    public io_k8s_api_apps_v1beta1_RollbackConfig rollbackTo;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_apps_v1beta1_DeploymentStrategy strategy;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_core_v1_SELinuxOptions object {
    public string level;
    public string role;
    public string _type;
    public string user;
};

public type io_k8s_api_extensions_v1beta1_DeploymentStrategy object {
    public io_k8s_api_extensions_v1beta1_RollingUpdateDeployment rollingUpdate;
    public string _type;
};

public type io_k8s_api_core_v1_PersistentVolumeClaimSpec object {
    public string[] accessModes;
    public io_k8s_api_core_v1_ResourceRequirements resources;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public string storageClassName;
    public string volumeMode;
    public string volumeName;
};

public type io_k8s_api_apps_v1_ReplicaSetStatus object {
    public int availableReplicas;
    public io_k8s_api_apps_v1_ReplicaSetCondition[] conditions;
    public int fullyLabeledReplicas;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
};

public type io_k8s_api_policy_v1beta1_RunAsUserStrategyOptions object {
    public io_k8s_api_policy_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_authorization_v1beta1_NonResourceAttributes object {
    public string path;
    public string verb;
};

public type io_k8s_api_extensions_v1beta1_IngressBackend object {
    public string serviceName;
    public int|string servicePort;
};

public type io_k8s_api_policy_v1beta1_SELinuxStrategyOptions object {
    public string rule;
    public io_k8s_api_core_v1_SELinuxOptions seLinuxOptions;
};

public type io_k8s_api_core_v1_Endpoints object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_EndpointSubset[] subsets;
};

public type io_k8s_api_apps_v1_StatefulSetCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_authorization_v1beta1_SubjectAccessReviewStatus object {
    public boolean allowed;
    public boolean denied;
    public string evaluationError;
    public string reason;
};

public type io_k8s_api_core_v1_LocalObjectReference object {
    public string name;
};

public type io_k8s_api_core_v1_TCPSocketAction object {
    public string host;
    public int|string port;
};

public type io_k8s_api_core_v1_PodStatus object {
    public io_k8s_api_core_v1_PodCondition[] conditions;
    public io_k8s_api_core_v1_ContainerStatus[] containerStatuses;
    public string hostIP;
    public io_k8s_api_core_v1_ContainerStatus[] initContainerStatuses;
    public string message;
    public string nominatedNodeName;
    public string phase;
    public string podIP;
    public string qosClass;
    public string reason;
    public time:Time? startTime;
};

public type io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerList object {
    public string apiVersion;
    public io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscaler[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_EventList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Event[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_autoscaling_v1_CrossVersionObjectReference object {
    public string apiVersion;
    public string kind;
    public string name;
};

public type io_k8s_api_core_v1_CephFSVolumeSource object {
    public string[] monitors;
    public string path;
    public boolean readOnly;
    public string secretFile;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
    public string user;
};

public type io_k8s_api_core_v1_CephFSPersistentVolumeSource object {
    public string[] monitors;
    public string path;
    public boolean readOnly;
    public string secretFile;
    public io_k8s_api_core_v1_SecretReference secretRef;
    public string user;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrArray object {
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps[] JSONSchemas;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps Schema;
};

public type io_k8s_api_core_v1_Pod object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_PodSpec spec;
    public io_k8s_api_core_v1_PodStatus status;
};

public type io_k8s_api_rbac_v1beta1_ClusterRoleBinding object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1beta1_RoleRef roleRef;
    public io_k8s_api_rbac_v1beta1_Subject[] subjects;
};

public type io_k8s_api_policy_v1beta1_PodDisruptionBudgetStatus object {
    public int currentHealthy;
    public int desiredHealthy;
    public any disruptedPods;
    public int disruptionsAllowed;
    public int expectedPods;
    public int observedGeneration;
};

public type io_k8s_api_rbac_v1beta1_RoleBindingList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1beta1_RoleBinding[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_authorization_v1_LocalSubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1_SubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_core_v1_PodAffinity object {
    public io_k8s_api_core_v1_WeightedPodAffinityTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    public io_k8s_api_core_v1_PodAffinityTerm[] requiredDuringSchedulingIgnoredDuringExecution;
};

public type io_k8s_api_rbac_v1beta1_AggregationRule object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector[] clusterRoleSelectors;
};

public type io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference object {
    public string apiVersion;
    public string kind;
    public string name;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceList object {
    public string apiVersion;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_batch_v1beta1_CronJobSpec object {
    public string concurrencyPolicy;
    public int failedJobsHistoryLimit;
    public io_k8s_api_batch_v1beta1_JobTemplateSpec jobTemplate;
    public string schedule;
    public int startingDeadlineSeconds;
    public int successfulJobsHistoryLimit;
    public boolean suspend;
};

public type io_k8s_api_core_v1_FlexVolumeSource object {
    public string driver;
    public string fsType;
    public any options;
    public boolean readOnly;
    public io_k8s_api_core_v1_LocalObjectReference secretRef;
};

public type io_k8s_api_rbac_v1_PolicyRule object {
    public string[] apiGroups;
    public string[] nonResourceURLs;
    public string[] resourceNames;
    public string[] resources;
    public string[] verbs;
};

public type io_k8s_api_authentication_v1_TokenReviewSpec object {
    public string token;
};

public type io_k8s_api_core_v1_EndpointPort object {
    public string name;
    public int port;
    public string protocol;
};

public type io_k8s_api_core_v1_EventSeries object {
    public int count;
    public time:Time? lastObservedTime;
    public string state;
};

public type io_k8s_api_core_v1_PodTemplate object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_apps_v1_ControllerRevision object {
    public string apiVersion;
    public io_k8s_apimachinery_pkg_runtime_RawExtension data;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public int revision;
};

public type io_k8s_api_apps_v1_DaemonSetSpec object {
    public int minReadySeconds;
    public int revisionHistoryLimit;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
    public io_k8s_api_apps_v1_DaemonSetUpdateStrategy updateStrategy;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceCondition object {
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1beta1_ScaleStatus object {
    public int replicas;
    public any selector;
    public string targetSelector;
};

public type io_k8s_api_core_v1_DownwardAPIVolumeFile object {
    public io_k8s_api_core_v1_ObjectFieldSelector fieldRef;
    public int mode;
    public string path;
    public io_k8s_api_core_v1_ResourceFieldSelector resourceFieldRef;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionStatus object {
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionNames acceptedNames;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceDefinitionCondition[] conditions;
};

public type io_k8s_api_extensions_v1beta1_DeploymentStatus object {
    public int availableReplicas;
    public int collisionCount;
    public io_k8s_api_extensions_v1beta1_DeploymentCondition[] conditions;
    public int observedGeneration;
    public int readyReplicas;
    public int replicas;
    public int unavailableReplicas;
    public int updatedReplicas;
};

public type io_k8s_api_core_v1_ServiceSpec object {
    public string clusterIP;
    public string[] externalIPs;
    public string externalName;
    public string externalTrafficPolicy;
    public int healthCheckNodePort;
    public string loadBalancerIP;
    public string[] loadBalancerSourceRanges;
    public io_k8s_api_core_v1_ServicePort[] ports;
    public boolean publishNotReadyAddresses;
    public any selector;
    public string sessionAffinity;
    public io_k8s_api_core_v1_SessionAffinityConfig sessionAffinityConfig;
    public string _type;
};

public type io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerSpec object {
    public int maxReplicas;
    public int minReplicas;
    public io_k8s_api_autoscaling_v1_CrossVersionObjectReference scaleTargetRef;
    public int targetCPUUtilizationPercentage;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_DeleteOptions object {
    public string apiVersion;
    public int gracePeriodSeconds;
    public string kind;
    public boolean orphanDependents;
    public io_k8s_apimachinery_pkg_apis_meta_v1_Preconditions preconditions;
    public string propagationPolicy;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceStatus object {
};

public type io_k8s_api_rbac_v1_Role object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_rbac_v1_PolicyRule[] rules;
};

public type io_k8s_api_core_v1_PersistentVolume object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_PersistentVolumeSpec spec;
    public io_k8s_api_core_v1_PersistentVolumeStatus status;
};

public type io_k8s_api_core_v1_PersistentVolumeStatus object {
    public string message;
    public string phase;
    public string reason;
};

public type io_k8s_api_core_v1_ContainerState object {
    public io_k8s_api_core_v1_ContainerStateRunning running;
    public io_k8s_api_core_v1_ContainerStateTerminated terminated;
    public io_k8s_api_core_v1_ContainerStateWaiting waiting;
};

public type io_k8s_api_apps_v1_StatefulSet object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_apps_v1_StatefulSetSpec spec;
    public io_k8s_api_apps_v1_StatefulSetStatus status;
};

public type io_k8s_api_apps_v1beta1_ScaleSpec object {
    public int replicas;
};

public type io_k8s_api_networking_v1_NetworkPolicyPeer object {
    public io_k8s_api_networking_v1_IPBlock ipBlock;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector namespaceSelector;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector podSelector;
};

public type io_k8s_api_batch_v1_Job object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_batch_v1_JobSpec spec;
    public io_k8s_api_batch_v1_JobStatus status;
};

public type io_k8s_api_apps_v1beta2_RollingUpdateDeployment object {
    public int|string maxSurge;
    public int|string maxUnavailable;
};

public type io_k8s_api_core_v1_Service object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_ServiceSpec spec;
    public io_k8s_api_core_v1_ServiceStatus status;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIService object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceSpec spec;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_APIServiceStatus status;
};

public type io_k8s_api_core_v1_NodeCondition object {
    public time:Time? lastHeartbeatTime;
    public time:Time? lastTransitionTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_apps_v1beta1_DeploymentCondition object {
    public time:Time? lastTransitionTime;
    public time:Time? lastUpdateTime;
    public string message;
    public string reason;
    public string status;
    public string _type;
};

public type io_k8s_api_core_v1_ContainerStatus object {
    public string containerID;
    public string image;
    public string imageID;
    public io_k8s_api_core_v1_ContainerState lastState;
    public string name;
    public boolean ready;
    public int restartCount;
    public io_k8s_api_core_v1_ContainerState state;
};

public type io_k8s_api_core_v1_WeightedPodAffinityTerm object {
    public io_k8s_api_core_v1_PodAffinityTerm podAffinityTerm;
    public int weight;
};

public type io_k8s_api_extensions_v1beta1_IngressList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_Ingress[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ObjectReference object {
    public string apiVersion;
    public string fieldPath;
    public string kind;
    public string name;
    public string namespace;
    public string resourceVersion;
    public string uid;
};

public type io_k8s_api_extensions_v1beta1_PodSecurityPolicyList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_PodSecurityPolicy[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ServicePort object {
    public string name;
    public int nodePort;
    public int port;
    public string protocol;
    public int|string targetPort;
};

public type io_k8s_api_apps_v1beta1_RollingUpdateStatefulSetStrategy object {
    public int partition;
};

public type io_k8s_api_extensions_v1beta1_NetworkPolicyPeer object {
    public io_k8s_api_extensions_v1beta1_IPBlock ipBlock;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector namespaceSelector;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector podSelector;
};

public type io_k8s_api_core_v1_VsphereVirtualDiskVolumeSource object {
    public string fsType;
    public string storagePolicyID;
    public string storagePolicyName;
    public string volumePath;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON object {
    public string Raw;
};

public type io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta object {
    public string _continue;
    public string resourceVersion;
    public string selfLink;
};

public type io_k8s_api_core_v1_NodeSelectorRequirement object {
    public string key;
    public string operator;
    public string[] values;
};

public type io_k8s_api_core_v1_ServiceList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Service[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_ConfigMapProjection object {
    public io_k8s_api_core_v1_KeyToPath[] items;
    public string name;
    public boolean optional;
};

public type io_k8s_api_core_v1_ResourceQuotaStatus object {
    public any hard;
    public any used;
};

public type io_k8s_api_authorization_v1_SubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1_SubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_extensions_v1beta1_IngressStatus object {
    public io_k8s_api_core_v1_LoadBalancerStatus loadBalancer;
};

public type io_k8s_api_apps_v1beta1_DeploymentRollback object {
    public string apiVersion;
    public string kind;
    public string name;
    public io_k8s_api_apps_v1beta1_RollbackConfig rollbackTo;
    public any updatedAnnotations;
};

public type io_k8s_api_core_v1_EndpointsList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Endpoints[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_events_v1beta1_Event object {
    public string action;
    public string apiVersion;
    public int deprecatedCount;
    public time:Time? deprecatedFirstTimestamp;
    public time:Time? deprecatedLastTimestamp;
    public io_k8s_api_core_v1_EventSource deprecatedSource;
    public time:Time? eventTime;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public string note;
    public string reason;
    public io_k8s_api_core_v1_ObjectReference regarding;
    public io_k8s_api_core_v1_ObjectReference related;
    public string reportingController;
    public string reportingInstance;
    public io_k8s_api_events_v1beta1_EventSeries series;
    public string _type;
};

public type io_k8s_api_autoscaling_v2beta1_HorizontalPodAutoscalerSpec object {
    public int maxReplicas;
    public io_k8s_api_autoscaling_v2beta1_MetricSpec[] metrics;
    public int minReplicas;
    public io_k8s_api_autoscaling_v2beta1_CrossVersionObjectReference scaleTargetRef;
};

public type io_k8s_api_core_v1_FCVolumeSource object {
    public string fsType;
    public int lun;
    public boolean readOnly;
    public string[] targetWWNs;
    public string[] wwids;
};

public type io_k8s_api_authorization_v1_SelfSubjectRulesReviewSpec object {
    public string namespace;
};

public type io_k8s_api_core_v1_KeyToPath object {
    public string key;
    public int mode;
    public string path;
};

public type io_k8s_api_authorization_v1_SelfSubjectAccessReview object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_authorization_v1_SelfSubjectAccessReviewSpec spec;
    public io_k8s_api_authorization_v1_SubjectAccessReviewStatus status;
};

public type io_k8s_api_extensions_v1beta1_IPBlock object {
    public string cidr;
    public string[] except;
};

public type io_k8s_api_core_v1_ProjectedVolumeSource object {
    public int defaultMode;
    public io_k8s_api_core_v1_VolumeProjection[] sources;
};

public type io_k8s_api_core_v1_PersistentVolumeClaimStatus object {
    public string[] accessModes;
    public any capacity;
    public io_k8s_api_core_v1_PersistentVolumeClaimCondition[] conditions;
    public string phase;
};

public type io_k8s_api_core_v1_ResourceQuotaSpec object {
    public any hard;
    public string[] scopes;
};

public type io_k8s_api_core_v1_NodeAffinity object {
    public io_k8s_api_core_v1_PreferredSchedulingTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    public io_k8s_api_core_v1_NodeSelector requiredDuringSchedulingIgnoredDuringExecution;
};

public type io_k8s_api_extensions_v1beta1_RollingUpdateDaemonSet object {
    public int|string maxUnavailable;
};

public type io_k8s_api_core_v1_SecretReference object {
    public string name;
    public string namespace;
};

public type io_k8s_api_core_v1_EndpointAddress object {
    public string hostname;
    public string ip;
    public string nodeName;
    public io_k8s_api_core_v1_ObjectReference targetRef;
};

public type io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerStatus object {
    public int currentCPUUtilizationPercentage;
    public int currentReplicas;
    public int desiredReplicas;
    public time:Time? lastScaleTime;
    public int observedGeneration;
};

public type io_k8s_api_batch_v1_JobStatus object {
    public int active;
    public time:Time? completionTime;
    public io_k8s_api_batch_v1_JobCondition[] conditions;
    public int failed;
    public time:Time? startTime;
    public int succeeded;
};

public type io_k8s_api_core_v1_NodeSelectorTerm object {
    public io_k8s_api_core_v1_NodeSelectorRequirement[] matchExpressions;
};

public type io_k8s_api_core_v1_VolumeProjection object {
    public io_k8s_api_core_v1_ConfigMapProjection configMap;
    public io_k8s_api_core_v1_DownwardAPIProjection downwardAPI;
    public io_k8s_api_core_v1_SecretProjection secret;
};

public type io_k8s_api_extensions_v1beta1_DaemonSetList object {
    public string apiVersion;
    public io_k8s_api_extensions_v1beta1_DaemonSet[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_HTTPIngressPath object {
    public io_k8s_api_extensions_v1beta1_IngressBackend backend;
    public string path;
};

public type io_k8s_api_policy_v1beta1_PodDisruptionBudgetSpec object {
    public int|string maxUnavailable;
    public int|string minAvailable;
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector selector;
};

public type io_k8s_api_apps_v1beta1_DeploymentList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta1_Deployment[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_Node object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_NodeSpec spec;
    public io_k8s_api_core_v1_NodeStatus status;
};

public type io_k8s_api_core_v1_DownwardAPIVolumeSource object {
    public int defaultMode;
    public io_k8s_api_core_v1_DownwardAPIVolumeFile[] items;
};

public type io_k8s_api_autoscaling_v1_ScaleStatus object {
    public int replicas;
    public string selector;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps object {
    public string _ref;
    public string _schema;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrBool? additionalItems;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrBool? additionalProperties;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps[]? allOf;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps[]? anyOf;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON default;
    public any definitions;
    public any dependencies;
    public string description;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON[] enum;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSON example;
    public boolean exclusiveMaximum;
    public boolean exclusiveMinimum;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_ExternalDocumentation externalDocs;
    public string format;
    public string id;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaPropsOrArray? items;
    public int maxItems;
    public int maxLength;
    public int maxProperties;
    public float maximum;
    public int minItems;
    public int minLength;
    public int minProperties;
    public float minimum;
    public float multipleOf;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps? not;
    public io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_JSONSchemaProps[]? oneOf;
    public string pattern;
    public any patternProperties;
    public any properties;
    public string[] required;
    public string title;
    public string _type;
    public boolean uniqueItems;
};

public type io_k8s_api_apps_v1beta2_DeploymentList object {
    public string apiVersion;
    public io_k8s_api_apps_v1beta2_Deployment[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceStatus object {
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceCondition[] conditions;
};

public type io_k8s_api_core_v1_ObjectFieldSelector object {
    public string apiVersion;
    public string fieldPath;
};

public type io_k8s_api_core_v1_PodTemplateList object {
    public string apiVersion;
    public io_k8s_api_core_v1_PodTemplate[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_admissionregistration_v1beta1_RuleWithOperations object {
    public string[] apiGroups;
    public string[] apiVersions;
    public string[] operations;
    public string[] resources;
};

public type io_k8s_api_certificates_v1beta1_CertificateSigningRequest object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestSpec spec;
    public io_k8s_api_certificates_v1beta1_CertificateSigningRequestStatus status;
};

public type io_k8s_api_core_v1_Handler object {
    public io_k8s_api_core_v1_ExecAction exec;
    public io_k8s_api_core_v1_HTTPGetAction httpGet;
    public io_k8s_api_core_v1_TCPSocketAction tcpSocket;
};

public type io_k8s_api_core_v1_Binding object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_core_v1_ObjectReference target;
};

public type io_k8s_api_core_v1_PersistentVolumeSpec object {
    public string[] accessModes;
    public io_k8s_api_core_v1_AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
    public io_k8s_api_core_v1_AzureDiskVolumeSource azureDisk;
    public io_k8s_api_core_v1_AzureFilePersistentVolumeSource azureFile;
    public any capacity;
    public io_k8s_api_core_v1_CephFSPersistentVolumeSource cephfs;
    public io_k8s_api_core_v1_CinderVolumeSource cinder;
    public io_k8s_api_core_v1_ObjectReference claimRef;
    public io_k8s_api_core_v1_CSIPersistentVolumeSource csi;
    public io_k8s_api_core_v1_FCVolumeSource fc;
    public io_k8s_api_core_v1_FlexPersistentVolumeSource flexVolume;
    public io_k8s_api_core_v1_FlockerVolumeSource flocker;
    public io_k8s_api_core_v1_GCEPersistentDiskVolumeSource gcePersistentDisk;
    public io_k8s_api_core_v1_GlusterfsVolumeSource glusterfs;
    public io_k8s_api_core_v1_HostPathVolumeSource hostPath;
    public io_k8s_api_core_v1_ISCSIPersistentVolumeSource iscsi;
    public io_k8s_api_core_v1_LocalVolumeSource local;
    public string[] mountOptions;
    public io_k8s_api_core_v1_NFSVolumeSource nfs;
    public io_k8s_api_core_v1_VolumeNodeAffinity nodeAffinity;
    public string persistentVolumeReclaimPolicy;
    public io_k8s_api_core_v1_PhotonPersistentDiskVolumeSource photonPersistentDisk;
    public io_k8s_api_core_v1_PortworxVolumeSource portworxVolume;
    public io_k8s_api_core_v1_QuobyteVolumeSource quobyte;
    public io_k8s_api_core_v1_RBDPersistentVolumeSource rbd;
    public io_k8s_api_core_v1_ScaleIOPersistentVolumeSource scaleIO;
    public string storageClassName;
    public io_k8s_api_core_v1_StorageOSPersistentVolumeSource storageos;
    public string volumeMode;
    public io_k8s_api_core_v1_VsphereVirtualDiskVolumeSource vsphereVolume;
};

public type io_k8s_api_core_v1_LoadBalancerStatus object {
    public io_k8s_api_core_v1_LoadBalancerIngress[] ingress;
};

public type io_k8s_api_core_v1_SecretEnvSource object {
    public string name;
    public boolean optional;
};

public type io_k8s_api_extensions_v1beta1_SELinuxStrategyOptions object {
    public string rule;
    public io_k8s_api_core_v1_SELinuxOptions seLinuxOptions;
};

public type io_k8s_api_core_v1_NamespaceStatus object {
    public string phase;
};

public type io_k8s_api_core_v1_SecurityContext object {
    public boolean allowPrivilegeEscalation;
    public io_k8s_api_core_v1_Capabilities capabilities;
    public boolean privileged;
    public boolean readOnlyRootFilesystem;
    public int runAsGroup;
    public boolean runAsNonRoot;
    public int runAsUser;
    public io_k8s_api_core_v1_SELinuxOptions seLinuxOptions;
};

public type io_k8s_api_core_v1_SecretKeySelector object {
    public string key;
    public string name;
    public boolean optional;
};

public type io_k8s_api_apps_v1_RollingUpdateStatefulSetStrategy object {
    public int partition;
};

public type io_k8s_api_core_v1_NFSVolumeSource object {
    public string path;
    public boolean readOnly;
    public string server;
};

public type io_k8s_api_admissionregistration_v1beta1_WebhookClientConfig object {
    public string caBundle;
    public io_k8s_api_admissionregistration_v1beta1_ServiceReference _service;
    public string url;
};

public type io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1beta1_CustomResourceSubresourceScale object {
    public string labelSelectorPath;
    public string specReplicasPath;
    public string statusReplicasPath;
};

public type io_k8s_api_core_v1_ResourceQuotaList object {
    public string apiVersion;
    public io_k8s_api_core_v1_ResourceQuota[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_NodeDaemonEndpoints object {
    public io_k8s_api_core_v1_DaemonEndpoint kubeletEndpoint;
};

public type io_k8s_api_core_v1_Taint object {
    public string effect;
    public string key;
    public time:Time? timeAdded;
    public string value;
};

public type io_k8s_api_core_v1_ReplicationControllerSpec object {
    public int minReadySeconds;
    public int replicas;
    public any selector;
    public io_k8s_api_core_v1_PodTemplateSpec template;
};

public type io_k8s_api_core_v1_NamespaceList object {
    public string apiVersion;
    public io_k8s_api_core_v1_Namespace[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_extensions_v1beta1_RunAsUserStrategyOptions object {
    public io_k8s_api_extensions_v1beta1_IDRange[] ranges;
    public string rule;
};

public type io_k8s_api_core_v1_ConfigMap object {
    public string apiVersion;
    public any binaryData;
    public any data;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
};

public type io_k8s_api_rbac_v1_ClusterRoleBindingList object {
    public string apiVersion;
    public io_k8s_api_rbac_v1_ClusterRoleBinding[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_api_core_v1_PreferredSchedulingTerm object {
    public io_k8s_api_core_v1_NodeSelectorTerm preference;
    public int weight;
};

public type io_k8s_api_core_v1_PodAffinityTerm object {
    public io_k8s_apimachinery_pkg_apis_meta_v1_LabelSelector labelSelector;
    public string[] namespaces;
    public string topologyKey;
};

public type io_k8s_api_extensions_v1beta1_ScaleSpec object {
    public int replicas;
};

public type io_k8s_api_apps_v1beta2_StatefulSetUpdateStrategy object {
    public io_k8s_api_apps_v1beta2_RollingUpdateStatefulSetStrategy rollingUpdate;
    public string _type;
};

public type io_k8s_api_policy_v1beta1_PodDisruptionBudget object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudgetSpec spec;
    public io_k8s_api_policy_v1beta1_PodDisruptionBudgetStatus status;
};

public type io_k8s_api_core_v1_NodeConfigSource object {
    public string apiVersion;
    public io_k8s_api_core_v1_ObjectReference configMapRef;
    public string kind;
};

public type io_k8s_api_core_v1_ConfigMapVolumeSource object {
    public int defaultMode;
    public io_k8s_api_core_v1_KeyToPath[] items;
    public string name;
    public boolean optional;
};

public type io_k8s_api_extensions_v1beta1_PodSecurityPolicySpec object {
    public boolean allowPrivilegeEscalation;
    public string[] allowedCapabilities;
    public io_k8s_api_extensions_v1beta1_AllowedFlexVolume[] allowedFlexVolumes;
    public io_k8s_api_extensions_v1beta1_AllowedHostPath[] allowedHostPaths;
    public string[] defaultAddCapabilities;
    public boolean defaultAllowPrivilegeEscalation;
    public io_k8s_api_extensions_v1beta1_FSGroupStrategyOptions fsGroup;
    public boolean hostIPC;
    public boolean hostNetwork;
    public boolean hostPID;
    public io_k8s_api_extensions_v1beta1_HostPortRange[] hostPorts;
    public boolean privileged;
    public boolean readOnlyRootFilesystem;
    public string[] requiredDropCapabilities;
    public io_k8s_api_extensions_v1beta1_RunAsUserStrategyOptions runAsUser;
    public io_k8s_api_extensions_v1beta1_SELinuxStrategyOptions seLinux;
    public io_k8s_api_extensions_v1beta1_SupplementalGroupsStrategyOptions supplementalGroups;
    public string[] volumes;
};

public type io_k8s_api_apps_v1beta2_RollingUpdateDaemonSet object {
    public int|string maxUnavailable;
};

public type io_k8s_api_autoscaling_v1_HorizontalPodAutoscalerList object {
    public string apiVersion;
    public io_k8s_api_autoscaling_v1_HorizontalPodAutoscaler[] items;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ListMeta metadata;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_ServiceReference object {
    public string name;
    public string namespace;
};

public type io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_APIServiceSpec object {
    public string caBundle;
    public string _group;
    public int groupPriorityMinimum;
    public boolean insecureSkipTLSVerify;
    public io_k8s_kube_aggregator_pkg_apis_apiregistration_v1beta1_ServiceReference _service;
    public string _version;
    public int versionPriority;
};

public type io_k8s_api_networking_v1_NetworkPolicy object {
    public string apiVersion;
    public string kind;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;
    public io_k8s_api_networking_v1_NetworkPolicySpec spec;
};

