public type Service object {
    public string apiVersion = "v1";
    private string kind = "Service";
    public ObjectMeta metadata;
    public ServiceSpec spec;

    public function build() returns (Service) {
        return self;
    }

    public function setMetaData(ObjectMeta pmetadata) returns (Service) {
        self.metadata = pmetadata;
        return self;
    }

    public function setSpec(ServiceSpec serviceSpec) returns (Service) {
        self.spec = serviceSpec;
        return self;
    }

    public function addMatchLabels(string key, string value) returns (Service) {
        self.spec.selector[key] = value;
        return self;
    }

    public function toJSON() returns (json) {
        json serviceJSON = {
            "apiVersion": self.apiVersion,
            "kind": self.kind,
            "metadata": check <json>self.metadata,
            "spec": check <json>self.spec
        };
        return serviceJSON;
    }
};


public type ServiceSpec record {
    map selector;
    string sessionAffinity;
    string serviceType;
    string clusterIp;
    string[] externalIPs;
    string[] loadBalancerSourceRanges;
    ServicePort[] ports;
};

public type ServicePort record{
    string name;
    int port;
    int targetPort;
    string protocol;
};
