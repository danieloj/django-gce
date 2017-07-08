# Process for creating a staging and prod environment in 30 mins

## Creating Google account

## Creating clusters

## Creating git repo

## Setting up CircleCI

## Setting up MinKube

## Building docker images with SHA

## Kubernetes config files

## Database setup

## Staging prod difference

## Autoscaling

## Credentials

## Static files

## React

What happens:

- Clone base django repo
- Edit settings specific to project
- Commit and push to your own repo
- Build django docker image
- Set gcloud parameters (zone, credentials, project-id)
- Push django docker image to your google container engine
- Create compute cluster
- Create secrets
- Create disks
- Run deployments
- Run services
- Repeat for production project
- Set up CircleCI project with credentials
- Run MiniKube
