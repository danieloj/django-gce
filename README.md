# Django stack on Google Container Engine

## Compute cluster

- gcloud container clusters create django-cluster --num-nodes=2

## Nginx

- kubectl create -f nginx-deployment.yaml
- kubectl create -f nginx-service.yaml
- kubectl get service nginx

## Ingress

- kubectl create -f ingress.yaml
- kubectl get service ingress

## Database

- gcloud compute disks create --size 200GB mysql-disk
- kubectl create secret generic postgres --from-literal=password=PASSWORD
- kubectl create -f postgres-deployment.yaml
- kubectl create -f postgres-service.yaml

## Django

- gcloud config set project PROJECT_ID
- gcloud container clusters create django --num-nodes=3
- gcloud container clusters list
- kubectl create -f django-deployment.yaml
- kubectl get pods -l app=django -l tier=frontend
- kubectl create -f django-service.yaml
- kubectl get service django
