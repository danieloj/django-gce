# Django stack on Google Container Engine

## Django

- gcloud config set project PROJECT_ID
- gcloud container clusters create django --num-nodes=3
- gcloud container clusters list
- kubectl create -f django-deployment.yaml
- kubectl get pods -l app=django -l tier=frontend
- kubectl create -f django-service.yaml
- kubectl get service django

## Database

- gcloud compute disks create --size 200GB mysql-disk
- kubectl create secret generic postgres --from-literal=password=PASSWORD
- 
