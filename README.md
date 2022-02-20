Simple project to highlight cohesion between open source tools to stand up a python application

Components used:

1. Terraform - AWS EC2 Instance provisioning 
2. AWS-Vault - Key management
3. Ansible - EC2 Instance configuration 
4. Jenkins - Web Server configuration to deploy docker container 
5. Docker - Container built as a POC Python web server


High level overview of project build:

1. Create AWS user account with full permissions to interact with EC2 
2. Import access and secret keys in the aws-vault
3. Use Terraform to provision two instances - jenkins and web
4. Create a key pair for SSH access to the two instances
5. Ansible playbook to configure and install required components on each instance. Jenkins on jenkins instance and docker on web instance
6. Open required ports using security groups - 8080 for web access to jenkins, 8000 for web server
7. Build a docker file locally and push it to docker hub
8. Access jenkins instance, go through the setup process, and add web instance's private IP and ssh key to jenkins as a remote host
9. Create a build for web instance on Jenkins to effectively download and run the hosted docker image
10. Navigate to 8000 to review the web application 