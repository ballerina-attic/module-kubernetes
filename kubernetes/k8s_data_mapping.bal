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

    foreach key in deploymentJSON.spec.selector {
        deployment = deployment.addMatchLabels(check <map>key);
    }

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