# Kubernetes

- Pod: runs and executes a container or network/group of containers
  - When a pod is created, that means the container is executed (the pod runs `docker run` for the container underneath the hood)
- Node: A physical or virtual machine where Pods reside.

  - Worker Node: Contains pods, has Kubelet software for communicating with Master Node
  - Master Node: Manages the Worker Nodes, with Kube Control

- Cluster: The group of Nodes - Master Node with Worker Nodes
