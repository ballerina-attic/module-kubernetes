public type Ingress object {
    public string apiVersion = "extensions/v1beta1";
    private string kind = "Ingress";
    public ObjectMeta metadata;
    public IngressSpec spec;

    public function setMetaData(ObjectMeta pmetadata) returns (Ingress) {
        self.metadata = pmetadata;
        return self;
    }

    public function setSpec(IngressSpec pspec) returns (Ingress) {
        self.spec = pspec;
        return self;
    }


    public function addIngressRule(IngressRule ingressRule) returns (Ingress) {
        spec.rules[lengthof spec.rules] = ingressRule;
        return self;
    }

    public function toJSON() returns (json) {
        json ingress = {
            "apiVersion": self.apiVersion,
            "kind": self.kind,
            "metadata": check <json>self.metadata,
            "spec": check <json> self.spec
        };
        return ingress;
    }
};


public type IngressSpec record {
    IngressRule[] rules;
    IngressTLS? tls;
};

public type IngressRule record{
    string host;
    IngressHttp http;
};

public type IngressHttp record{
    IngressPath[] paths;
};

public type IngressPath record{
    string path;
    IngressBackend backend;
};

public type IngressBackend record{
    string serviceName;
    int servicePort;
};

public type IngressTLS record{
    string[] hosts;
};