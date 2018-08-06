public type DeploymentBuilder object {
    public io_k8s_api_apps_v1_Deployment deployment;
    public MetadataBuilder? metaBuilder;

    public new() {
        self.deployment.apiVersion = "apps/v1";
    }

    public function setVersion(string _version) returns DeploymentBuilder {
        self.deployment.apiVersion = _version;
        return self;
    }

    public function build() returns io_k8s_api_apps_v1_Deployment {
        self.deployment.metadata = self.metaBuilder.build();
        return deployment;
    }


    public function withMetaData() returns MetadataBuilder {
        self.metaBuilder = new MetadataBuilder(self);
        match (self.metaBuilder) {
            MetadataBuilder a => {
                return a;
            }
            () v => {
                error e = {};
                throw e;
            }
        }
    }

    public function endMetaData() returns (io_k8s_api_apps_v1_Deployment) {
        return self.deployment;
    }
};




public type MetadataBuilder object {
    public GenericBuilder dBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;

    public new(dBuilder) {
        metadata = new;
    }

    public function endMetadata() returns (GenericBuilder) {
        return dBuilder;
    }

    public function build() returns io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta {
        return self.metadata;
    }

    public function setName(string _name) returns (MetadataBuilder) {
        self.metadata.name = _name;
        return self;
    }

};

public type GenericBuilder object {
    public function build() returns (GenericObject);
};

public type GenericObject object {

};

function main(string...args) {
    DeploymentBuilder deployment = new;


    io:println(<json>deployment.withMetaData()
        .setName("hello")
        .endMetadata()
        .build());
}