# x-ops-helm-final

This repository contains 2 helm charts which are listed below. <br/>
- ALB Ingress Controller Helm Chart <br/>
- Xeneta Application Helm Chart <br/>

Helm charts are deployed into AWS EKS Cluster through Terraform using github ci actions.

## Repository Information

```
- .github/workflows/* - github CI workflow to deploy infra in AWS.

- helm-charts/charts 
    - k8s-alb-ingress-controller/* - Helm chart to deploy ALB Ingress Controller in K8s. 
    - xeneta-rates/* - Helm chart to deploy xeneta-rates application in K8s.

- helm-terraform/* - Creation of Helm release to deploy helm charts into AWS EKS Cluster through terraform.
```