import ballerina/time;

public type K8SHolder object {
    Deployment[] deployments;

    public function addDeployment(Deployment deployment) {
        self.deployments[lengthof deployments] = deployment;
    }
};

public type Deployment object {
    public string apiVersion = "apps/v1";
    private string kind = "Deployment";
    public ObjectMeta metadata;
    public DeploymentSpec spec;

    public function addContainer(Container container) {
        self.spec.containers[lengthof spec.containers] = container;
    }

    public function setReplicaCount(int count) {
        self.spec.replicas = count;
    }

    public function addMatchLabels(string key, string value) {
        self.spec.selector[key] = value;
    }

    public function toJSON() returns (json) {
        json deployment = {
            "apiVersion": self.apiVersion,
            "kind": self.kind,
            "metadata": check <json>self.metadata,
            "spec": {
                "replicas": self.spec.replicas,
                "selector": {
                    "matchLabels": check <json> self.spec.selector
                },
                "template": {
                    "metadata": {
                        "labels":check <json> self.metadata.labels
                    },
                    "spec": {
                        "containers":check <json> self.spec.containers
                    }
                }
            }
        };
        return deployment;
    }
};

public type ObjectMeta record {
    map labels;
    string name;
    string namespace = "default";
};

public type DeploymentSpec record {
    int replicas;
    map selector;
    Container[] containers;
};

public type Port record{
    string name;
    int containerPort;
    string protocol;

};

public type Container record {
    string image;
    string name;
    Port[] ports;
};


