
# Kubernetes complete ecosystem

### Complete stack to running Kubernetes Cluster without any vendor lock-in


## Project Stack 

| Component                 | Project / Technology                  |
| --------------------------|---------------------------------------|
| Container runtime         | [Docker](https://www.docker.com)      |
| Container orchestration   | [Kubernetes](https://kubernetes.io)   |
| Service Mesh              | [LinkerD](https://linkerd.io)         |
| Registry                  | [Harbor](https://goharbor.io)         |
| Integration               | [Drone CI](https://drone.io)          |
| Delivery                  | [ArgoCD](https://argoproj.github.io)  |
| Git Server                | [Gitea](https://gitea.io/en-us/)      |


## Kubernetes Cluster Deployment (master and nodes)

This resources will be deployed: 

* Kubernetes masters
* Kubernetes nodes 
* Istio 

```bash
ansible-playbook --private-key configs/example.pem  kubernetes.yml
```

## Harbor Deployment 

```bash
ansible-playbook --private-key configs/example.pem  harbor-playbook.yml
```

## Gitea Deployment 

```bash
ansible-playbook --private-key configs/example.pem  gitea-playbook.yml
```