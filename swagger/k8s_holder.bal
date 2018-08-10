public type K8SHolder object {
    public io_k8s_api_apps_v1_Deployment[] deployments;

    public function addDeployment(io_k8s_api_apps_v1_Deployment deployment) {
        self.deployments[lengthof deployments] = deployment;
    }

    //public function withDeployment() returns DeploymentBuilderAppsV1 {
    //    self.deploymentBuilder = new DeploymentBuilderAppsV1(self);
    //    match (self.deploymentBuilder) {
    //        DeploymentBuilderAppsV1 builder => {
    //            return builder;
    //        }
    //        () err => {
    //            error e = {};
    //            throw e;
    //        }
    //    }
    //}
    //
    //public function endDeployment() returns K8SHolder {
    //    match (self.deploymentBuilder.build()){
    //        io_k8s_api_apps_v1_Deployment deployment => {
    //            self.addDeployment(deployment);
    //        }
    //        () err => {
    //            error e = {};
    //            throw e;
    //        }
    //    }
    //    return self;
    //}

    public function build() returns K8SHolder {
        return self;
    }

};

