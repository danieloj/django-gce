# Django stack on Google Container Engine

## Compute cluster

- gcloud config set project PROJECT_ID
- gcloud config set compute/zone europe-west2-a
- gcloud container clusters create django-cluster --num-nodes=2

## Nginx

- kubectl create -f nginx-deployment.yaml
- kubectl create -f nginx-service.yaml
- kubectl get service nginx

## Ingress

- kubectl create -f ingress.yaml
- kubectl get ingress

## Database

- gcloud compute disks create --size 200GB postgres-disk
- kubectl create secret generic postgres --from-literal=password=PASSWORD
- kubectl create -f postgres-deployment.yaml
- kubectl create -f postgres-service.yaml

## Django

- kubectl create -f django-deployment.yaml
- kubectl get pods -l app=django -l tier=frontend
- kubectl create -f django-service.yaml
- kubectl get service django

## Image

- cd app
- PROJECT_ID="$(gcloud config get-value project)"
- docker build -t gcr.io/${PROJECT_ID}/djangodocker:latest .
- gcloud docker -- push gcr.io/${PROJECT_ID}/djangodocker:latest

## SSH

- kubectl exec -it django-3101373686-37skm -- /bin/bash
- python manage.py migrate
- python manage.py createsuperuser
- kubectl exec -it postgres-3101373686-37skm -- /bin/bash
- psql -Upostgres

## MAKEFILE
