#############################
Linux command
____________________________

ls
cd
pwd
mkdir test
rm -rf folder

**************
File
**************
bash
Copy code
touch file.txt
cp file1 file2
mv a b
cat file.txt
tail -f logfile.log
****************
Permissions
****************
csharp
Copy code
chmod 755 file
chown user:group file
********************
System/Process
*******************
powershell
Copy code
top
ps -ef
kill -9 <pid>
**************
Networking
**************
nginx
Copy code
ping google.com
curl http://localhost:8080
netstat -tulnp
######################################
Git and GitHub
---------------------
git init
git clone repo-url
git status
git add .
git commit -m "Msg"
git push
git pull
git checkout -b feature-branch
git merge
git branch
git remote -v

Imp Concepts

Branch
Merge
Pull Request
Conflict
Commit
Github Actions

Git -> Used to version control code. In Devops work, every change must go through Git. CI/CD is triggered from Git commits.

#####################################################
Docker:

Images
Containers
Dockerfile
Ports
Networks

Important Docker Commands
-------------------------------
docker pull nginx
docker ps -a
docker run -p 8080:80 nginx
docker build -t myapp .
docker logs container
docker exec -it container bash

Docker : Packages applications with dependencies so deployments
are consistent across all environments

#########################################
Docker file

FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]

######################################
Imp Objects:
----------------
Pods - smallest unit
Deployment - manages Pods
Services - exposes Pods
Configmaps - configs
Secret- sensitive values
Ingress or Route - external access


Impt Kubectl command:
------------------------
kubectl get pods
kubectl get deployments
kubectl describe pod <name>
kubectl logs <pod>
kubectl apply -f deployment.yaml
kubectl delete -f deployment.yaml

K8s schedules containers, ensures self-healing, scaling and
manages deployments using YAML files.

######################################
Jenkins Declarative pipeline skeleton:
------------------------------
pipeline {
agent any 
stages {
stage ('Build') { steps { sh 'mvn package' } }
stage ('Test') { steps { sh 'pytest' } }
stage('Deploy') { steps { sh 'kubectl apply -f deployment.yaml' } }
} }

Jenkins -> Declarative pipelines to automate build, test,
scan and deploy steps for each commit.
#################################################

Iac (Terraform)
---------------------------
Main files:
main.tf -> resources
variables.tf
outputs.tf

terraform init
terraform plan
terraform apply
terraform destroy

Terraform creates infrastructure using code.It keeps all environments consistent and version controlled.
########################################################















