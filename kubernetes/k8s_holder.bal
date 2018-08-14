public type K8SHolder object {
    Deployment[] deployments;
    Service[] services;
    Ingress[] ingresses;

    public function addDeployment(Deployment deployment) {
        self.deployments[lengthof deployments] = deployment;
    }

    public function addService(Service serviceDef) {
        self.services[lengthof services] = serviceDef;
    }

    public function addIngress(Ingress ingressDef) {
        self.ingresses[lengthof ingresses] = ingressDef;
    }
};

