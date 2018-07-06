#!/usr/bin/env bash
# gcloud beta container --project "sigma-sunlight-209414" clusters create "cluster-1" --zone "europe-west1-c" --username "admin" --cluster-version "1.10.4-gke.2" --machine-type "f1-micro" --image-type "UBUNTU" --disk-type "pd-standard" --disk-size "100" --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --num-nodes "3" --enable-cloud-logging --enable-cloud-monitoring --network "default" --subnetwork "default" --enable-legacy-authorization --addons HorizontalPodAutoscaling,HttpLoadBalancing --no-enable-autoupgrade --no-enable-autorepair

terraform_version="0.11.7"

sudo apt-get update && sudo apt-get install -y apt-transport-https wget unzip;
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

wget https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip;
unzip terraform_${terraform_version}_linux_amd64.zip;
sudo mv terraform /usr/local/bin;

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash