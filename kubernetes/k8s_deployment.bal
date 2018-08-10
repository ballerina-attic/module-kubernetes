import ballerina/time;

public type Deployment object {
    public string apiVersion = "apps/v1";
    private string kind = "Deployment";
    public ObjectMeta metadata;
    public DeploymentSpec spec;

    public function build() returns (Deployment) {
        //TODO: Do validation here.
        return self;
    }

    public function addContainer(Container container) returns (Deployment) {
        self.spec.containers[lengthof spec.containers] = container;
        return self;
    }

    public function setReplicaCount(int count) returns (Deployment) {
        self.spec.replicas = count;
        return self;
    }

    public function setMetaData(ObjectMeta pmetadata) returns (Deployment) {
        self.metadata = pmetadata;
        return self;
    }

    public function addMatchLabels(string key, string value) returns (Deployment) {
        self.spec.selector[key] = value;
        return self;
    }

    public function toJSON() returns (json) {
        json deployment = {
            "apiVersion": self.apiVersion,
            "kind": self.kind,
            "metadata": check <json>self.metadata,
            "spec": {
                "replicas": self.spec.replicas,
                "selector": {
                    "matchLabels": check <json>self.spec.selector
                },
                "template": {
                    "metadata": {
                        "labels": check <json>self.metadata.labels
                    },
                    "spec": {
                        "containers": check <json>self.spec.containers
                    }
                }
            }
        };
        return deployment;
    }
};

public type ObjectMeta record {
    map labels;
    map annotations;
    string[] finalizers;
    string[] ownerReferences;
    string name;
    string namespace = "default";
    time:Time? creationTimestamp;
    string selfLink;
};

public type DeploymentSpec record {
    int replicas;
    map selector;
    Container[] containers;
};

public type ContainerPort record{
    string name;
    int containerPort;
    string protocol;

};

public type Container record {
    string image;
    string name;
    ContainerPort[] ports;
};



