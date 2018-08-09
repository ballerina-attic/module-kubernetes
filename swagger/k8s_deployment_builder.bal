import ballerina/io;

public type k8sDeployment object{
    string name;
};

public type k8sDeploymentSpec object{
    int replicas;
};

public type DeploymentBuilder object {
    public k8sDeployment deployment;
    public MetadataBuilder metaBuilder;
    public SpecBuilder specBuilder;

    public new() {
        self.deployment = new;
        self.deployment.apiVersion = "apps/v1";
    }

    public function setVersion(string _version) returns DeploymentBuilder {
        self.deployment.apiVersion = _version;
        return self;
    }

    public function build() returns GenericObject {
        self.deployment.metadata = self.metaBuilder.build();
        return deployment;
    }

    public function withMetaDataDeploymentAppsV1() returns MetadataBuilder {
        metaBuilder = new MetadataBuilder();
        metaBuilder.init(self);
        return metaBuilder;
    }

    public function withSpecDeploymentAppsV1() returns SpecBuilder {
        specBuilder = new SpecBuilder();
        specBuilder.init(self);
        return specBuilder;
    }

};

public type SpecBuilder object {
    public k8sDeploymentSpec spec;
    public GenericBuilder? parentBuilder;

    public new() {
        self.spec = new;
    }

    public function init(GenericBuilder builder) {
        parentBuilder = builder;
    }

    public function endSpecDeploymentAppsV1() returns DeploymentBuilder {
        match (parentBuilder) {
            GenericBuilder vv => {
                return check <DeploymentBuilder>vv;
            }
            () v => {
                error e = {};
                throw e;
            }
        }
    }

    public function build() returns io_k8s_api_apps_v1_DeploymentSpec {
        return self.spec;
    }

    public function setReplicas(int _replicas) returns (SpecBuilder) {
        self.spec.replicas = _replicas;
        return self;
    }

};

public type MetadataBuilder object {
    public GenericBuilder? parentBuilder;
    public io_k8s_apimachinery_pkg_apis_meta_v1_ObjectMeta metadata;

    public new() {
        metadata = new;
    }

    public function init(GenericBuilder builder) {
        parentBuilder = builder;
    }

    public function endMetaDataDeploymentAppsV1() returns DeploymentBuilder {
        match (parentBuilder) {
            GenericBuilder vv => {
                return check <DeploymentBuilder>vv;
            }
            () v => {
                error e = {};
                throw e;
            }
        }
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
    public function build() returns GenericObject;
};

public type GenericObject object {
};

function main(string...args) {
    //DeploymentBuilder deployment = new;
    //
    //DeploymentBuilder deployment2 = new;
    //
    //var v = <io_k8s_api_apps_v1_Deployment> deployment
    //.withMetaData()
    //.setName("hello")
    //.end()
    //.withSpec()
    //.setReplicas(1)
    //.end()
    //.build();
    //
    //io:println(v);

    DeploymentBuilderAppsV1 de = new;
    io_k8s_api_apps_v1_Deployment dep = <io_k8s_api_apps_v1_Deployment>de
    .withMetadataDeploymentAppsV1()
        .addLabel("app", "sss")
        .setName("MyDeployment")
    .endMetadataDeploymentAppsV1()
    .withSpecDeploymentAppsV1()
        .setReplicas(1)
        .withTemplateDeploymentSpecAppsV1()
            .withSpecPodTemplateSpecCoreV1()
                .withContainersPodSpecCoreV1()
                    .setImage("abc:1.0")
                    .withPortsContainerCoreV1()
                        .setContainerPort(9090)
                        .setName("http")
                    .endPortsContainerCoreV1()
                .endContainersPodSpecCoreV1()
            .endSpecPodTemplateSpecCoreV1()
        .endTemplateDeploymentSpecAppsV1()
    .endSpecDeploymentAppsV1()
    .build();

    io:println(<json>dep);

    //MetadataBuilder v = deployment.withMetaData();
    //v = v.setName("hello");
    //GenericBuilder ff = v.endMetadata();
    //var g = deployment.build();

    //DeploymentBuilderAppsV1  builder = new;
    //var v = builder.withSpec().end()
    //.withMetadata()
    //.end();
    //io:println(<json> builder.build());

    //K8SHolder holder = new;
    //io:println(<json>holder.withDeployment().end().build());
}