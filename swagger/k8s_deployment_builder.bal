import ballerina/io;

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
                    .withPortsContainerCoreV1()
                        .setContainerPort(9091)
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