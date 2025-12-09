#############################
Linux command (A-Z)
---------------------

ls
cd
pwd
mkdir test
rm -rf folder
top - system montioring commands
htop - 
vmstat - system performance(shows memory, IO, CPU every 1 sec)
iostat - disk I/o
netstat -tulnp --> show ports and connections
ss -tullnp -> modern netstat
curl http://localhost:8080 -> check if service is responding
telnet 10.0.0.0 3300 -> test port connectivity
dig google.com -> DNS lookup
tail -f /var/log/messages  -> live logs
journalctl -u docker --> systemd logs docker service logs
dmesg | tail --> kernel logs
find / -name "*.log" --> locate files
grep "error" app.log --> search inside files
grep -iR "failed" /var/log/ --> recursive search
awk '{print $1, $3}' file.txt  --> extract fields
sed -i 's/nginx/apache/g' config.txt --> edit text inside files
df -h --> disk usage
du -sh --> find folder size
lsblk --> list disks
sudo apt install nginx --> Install a package
sudo apt update && sudo apt upgrade -y --> updates all packages
sudo apt remove nginx --> remove
sudo systemctl start docker --> start services
sudo systemctl stop docker --> stop services
sudo systemctl status docker --> check status
sudo systemctl enable docker --> enable on boot
chmod 755 script.sh --> change permission
sudo chown user:group file.txt --> change owner
chmod +x script.sh ---> Add executable
sudo useradd ---> add users
sudo usermod -aG docker amit --> add user to group
su - amit --> switch user
#############################################
BASH Scripting:
---------------
#! /bin/bash
echo "Backup started"
cp /var/log/messages /tmp/backup.log
echo "Backup completed"

bash script.sh --> Run above bash script
chmod +x script.sh --> make executable

compress: 
--------
tar -cvf logs.tar /var/log ---> create tar files
tar -xvf logs.tar --> extracts tar file
zip -r archive.zip folder --> zip

SSH commands:
-------------

ssh user@ip --> connect to server
scp file.txt user@ip:/tmp/ --> copy file to server


Linux commands--> Log Analysis, Service Management, Debugging container issues, checking network ports and writing automation scripts.

Categorized as per Uses:
----------------------

User Management
---------------
useradd: Create a new user account.
userdel: Delete a user account.
usermod: Modify user account information.
passwd: Change a user's password.
groupadd: Add a new group.
groupdel: Delete a group.
groupmod: Modify group information.
id: Print user and group information.
su: Switch user.
sudo: Execute commands with elevated privileges.


File and Directory Management
----------------------------
ls: List directory contents.
cd: Change directory.
pwd: Print working directory.
mkdir: Create a directory.
rmdir: Remove an empty directory.
rm: Remove files or directories.
cp: Copy files or directories.
mv: Move or rename files and directories.
touch: Update file timestamps.
chmod: Change file permissions.
chown: Change file ownership.
chattr: Change file attributes.
ln: Create symbolic links.
find: Find files based on criteria.
locate: Find files using a database.
grep: Search for patterns in files.
sed: Stream editor for text manipulation.
awk: Text processing language.
cut: Extract columns from text.
paste: Merge lines of text files.
sort: Sort lines of text.
uniq: Filter out repeated lines.
wc: Count words, lines, and characters in a file.
diff: Compare files line by line.
patch: Apply patches to files.
head: Display the first few lines of a file.
tail: Display the last few lines of a file.
less: View files one page at a time.
more: Similar to less, but with fewer features.
cat: Concatenate and display files.
tac: Concatenate and display files in reverse order.

Text Editing
-----------
vi/vim: Powerful text editor.
nano: Simple text editor.
emacs: Advanced text editor.

System Information and Monitoring
--------------------------------
top: Display system processes.
htop: Interactive process viewer.
vmstat: Show system memory, processes, interrupts, paging, block I/O, and CPU info.
mpstat: Monitor per-processor statistics.
iostat: Monitor block I/O statistics.
netstat: Show network statistics.
ifconfig: Configure network interfaces.
ip: Advanced network configuration tool.
ss: Show socket statistics.
lsof: List open files.
free: Display system memory usage.
df: Display disk usage.
du: Estimate disk space usage.
uptime: Show system uptime and load average.
date: Display or set system date and time.
cal: Display a calendar.

System Administration
--------------------
lspci:  List all PCI devices.
lsusb: List USB devices.
passwd: Change passwords.
systemctl: Control systemd services.
journalctl: View systemd journal logs.
crontab: Schedule tasks to run periodically.
at: Schedule one-time commands to run at a specific time.
dmesg: Print kernel ring buffer.
mkfs: Create a filesystem.
fsck: Check and repair a filesystem.
mount: Mount a filesystem.
umount: Unmount a filesystem.
fdisk: Partition disk drives.
parted: Partition disk drives (more advanced).
blkid: Print block device information.
dd: Copy and convert files.
tar: Archive and compress files.
gzip/gunzip: Compress and decompress files.
bzip2/bunzip2: Another compression utility.
xz/unxz: Another compression utility.
zip/unzip: Zip and unzip files.
unrar: Extract RAR archives.
7z: 7-Zip file archiver.
screen: Terminal multiplexer.
tmux: Terminal multiplexer.
nohup: Run commands in the background.
nice/renice: Change process priority.
sleep: Pause execution for a specified time.
wait: Wait for background jobs to finish.
kill: Send signals to processes.
killall: Kill all processes matching a name.
pkill: Kill processes based on a pattern.
bg: Send a job to the background.
fg: Bring a job to the foreground.
jobs: List background jobs.
nc: Netcat, a network utility for reading from and writing to network connections.
ping: Check network connectivity.
traceroute: Trace the route packets take to a destination.
nslookup: Query Domain Name System (DNS) servers.
dig: DNS lookup utility.
xargs – Build and execute commands from standard input (eg: pipe find results into other commands).

Other Misc Command
-------------------
watch – Run a command repeatedly and display its changing output over time.
alias – Create a shortcut for a longer command.
unalias – Remove a previously defined alias.
whereis – Locate the binary, source and manual page for a command.
strace – Trace system calls and signals used by a process (good for debugging).
jq – Process JSON data on the command line.
tcpdump – Capture and display network packets for troubleshooting network issues.
iftop – Monitor real-time bandwidth usage per interface/host.
rsync – Sync files/directories locally or over network (efficient for backups).
umask – Set default file creation permissions for new files/directories.
chroot – Change the root directory for a process (useful for rescue & isolation).
trap – Define shell script actions when signals are received (for cleanup, etc).
tee – Read from standard input and write to standard output and to files.
disown – Remove a job from shell’s job-control so it won’t receive SIGHUP after logout.
env – Run a command in a modified environment or display environment variables.
export – Set environment variables for current session or children processes.
unset – Remove environment variables from current shell.
sysctl – Modify kernel parameters at runtime.
xfs_growfs / resize2fs / lvextend – Expand filesystems or LVM volumes online (depending on file system type).
lsof +D <dir> – List open files under a directory tree (helps find what’s blocking unmount, etc).
ncdu – Interactive disk usage explorer (useful on head-less servers).
vgdisplay / pvdisplay / lvdisplay – Display LVM volume group / physical volume / logical volume details.
ss -tunlp – Show listening sockets with process names (modern replacement/enhancement for netstat).
nmcli – Command-line tool to manage network settings via NetworkManager.
hdparm – Show or set SATA/IDE drive parameters (for hardware/IO tuning).
smartctl – Monitor SMART status of drives (for early detection of disk failure).
pgrep: Pattern match to find process IDs
apropos – Search the manual page names & descriptions for keywords.
ipcrm – Remove System V interprocess communication objects (shared memory, message queues, semaphores).

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
Ansible:
----------

YAML Playbook structure:
-------------------------

- hosts: all
  tasks:
   -  name: install package
      yum:
         name: httpd
         state: present

Cmd:
ansible-playbook -i inventory playbook.yml

Ansible: Automates configurations, package installation and 
deployments without requiring an agent
####################################################

CP4i
-----------------
Componets:
Ace 
MQ
APIC
DataPower

Deploy and manage CP4I components(ACE,MQ,APIC) on Openshift 
using Operators and Helm. I build CI/CD automation for API deployments, queue manager configs, and ACE applications

#########################################################

Monitoring 
Prometheus
Grafana

Metrics 
Dashboards
Alerts
Pod resource usage

Monitor pods, deployments, ACE servers, MQ metrics and create 
alerts for failures or high CPU/memory

####################################################

Security (Trivy, Secrets, PSP)

Enforce container scanning, RBAC, Secrets ecyption, image polocoes and Pod Security standards for secure workloads



