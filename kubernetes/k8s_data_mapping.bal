import ballerina/io;

public function convertToDeployments(json deploymentsJSON) returns Deployment[] {
    Deployment[] deployments;
    foreach deploymentJSON in deploymentsJSON.items{
        Deployment deployment = convertToDeployment(deploymentJSON);
        deployments[lengthof deployments] = deployment;
    }
    return deployments;
}


public function convertToDeployment(json deploymentJSON) returns Deployment {
    Deployment deployment = new;
    deployment = deployment
    .setMetaData({
            name: check <string>deploymentJSON.metadata.name,
            labels: check <map>deploymentJSON.metadata.labels
        })
    .setReplicaCount(check <int>deploymentJSON.spec.replicas);

    foreach container in deploymentJSON.spec.template.spec.containers {
        Container tempContainer = {
            image: check <string>container.image,
            name: check <string>container.name
        };
        foreach port in container.ports{
            tempContainer.ports[lengthof tempContainer.ports] = {
                name: check <string>port.name,
                containerPort: check <int>port.containerPort,
                protocol: check <string>port.protocol

            };
        }
        deployment = deployment.addContainer(tempContainer);
    }
    return deployment;
}

public function convertToServices(json serviceResponseJSON) returns Service[] {
    Service[] services;
    foreach serviceResponse in serviceResponseJSON.items{
        services[lengthof services] = convertToService(serviceResponse);
    }
    return services;
}

public function convertToService(json serviceJSON) returns Service {
    Service k8sService = new;

    k8sService = k8sService
    .setMetaData({
            name: check <string>serviceJSON.metadata.name,
            labels: check <map>serviceJSON.metadata.labels,
            namespace: check <string>serviceJSON.metadata.namespace,
            selfLink: check <string>serviceJSON.metadata.selfLink
        });

    ServiceSpec spec = {
        selector: check <map>serviceJSON.spec.selector,
        clusterIp: check <string>serviceJSON.spec["clusterIP"],
        serviceType: check <string>serviceJSON.spec["type"],
        sessionAffinity: check <string>serviceJSON.spec.sessionAffinity
    };

    foreach servicePort in serviceJSON.spec.ports {
        spec.ports[lengthof spec.ports] = {
            port: check <int>servicePort["port"],
            name: check <string>servicePort["name"],
            protocol: check <string>servicePort["protocol"],
            targetPort: check <int>servicePort["targetPort"]
        };
    }

    k8sService = k8sService.setSpec(spec);
    return k8sService;
}