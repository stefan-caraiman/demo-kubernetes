# Kubernetes demo

Small demo application deployed within GKE(Google Kubernetes Engine) with Terraform and Helm.

# Prerequisites:

* preferably a Linux distro(Ubuntu has been used for the deploy of this app)
* Google Cloud account (https://console.cloud.google.com/)
* Terraform installed (https://www.terraform.io/downloads.html)
* Google cloud SDK, gcloud (https://cloud.google.com/sdk/)
* kubectl installed (https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* helm installed (https://github.com/kubernetes/helm/blob/master/docs/install.md)
* Consul installed, if you prefer having the Terraform state saved in it, rather than in a Google bucket.

# Setting up the Google Cloud account

# Setup of the repository

```
# Clone the repository
git clone https://github.com/stefan-caraiman/demo-kubernetes
# Change working directory
cd demo-kubernetes
# Fetch the submodules code
git submodule update --init --recursive
```

# Creating the Kubernetes cluster

1. Setup all the required variables and account details in the terraform-gke repository as shown below:

![](./images/terraform-1.png)

2. Check the terraform plan

![](./images/terraform-plan.png)

3. If all seems to be in check, run the apply command ```terraform apply```

![](./images/terraform-apply.png)

# Useful resources found during the implentation of this demo:

* https://www.youtube.com/watch?v=9Wzw84Q-8yc
* https://itnext.io/kubernetes-monitoring-with-prometheus-in-15-minutes-8e54d1de2e13
* https://dzone.com/articles/build-a-kubernetes-cluster-on-gcp-with-terraform
* https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/k8s-cluster-gke
* https://nickcharlton.net/posts/kubernetes-terraform-google-cloud.html
* https://akomljen.com/get-kubernetes-cluster-metrics-with-prometheus-in-5-minutes/