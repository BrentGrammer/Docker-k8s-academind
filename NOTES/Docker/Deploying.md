# Deploying to Production

- Can use your own data center (need to know how to configure everything)
- Use a managed Service

  - [kops](https://github.com/kubernetes/kops) is a tool used to install k8s software needed (ssh into your virtual machine instance)
  - Managed Services also offer full auto configuration for you to use k8s (example: AWS EKS)

  # Using AWS EKS

  - AWS Elastic Kubernetes Service
    - different from AWS ECS (Elastic Container Service) is general for deployments not specific to k8s
