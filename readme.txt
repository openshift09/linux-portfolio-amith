#############################
Linux command
____________________________

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

tar -cvf logs.tar /var/log ---> create tar files
tar -xvf logs.tar --> extracts tar file
zip -r archive.zip folder --> zip

SSH commands:

ssh user@ip --> connect to server
scp file.txt user@ip:/tmp/ --> copy file to server


Linux commands--> Log Analysis, Service Management, Debugging container issues, checking network ports and writing automation scripts.

Categorized as per Uses:


User Management

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
11.	ls: List directory contents.
12.	cd: Change directory.
13.	pwd: Print working directory.
14.	mkdir: Create a directory.
15.	rmdir: Remove an empty directory.
16.	rm: Remove files or directories.
17.	cp: Copy files or directories.
18.	mv: Move or rename files and directories.
19.	touch: Update file timestamps.
20.	chmod: Change file permissions.
21.	chown: Change file ownership.
22.	chattr: Change file attributes.
23.	ln: Create symbolic links.
24.	find: Find files based on criteria.
25.	locate: Find files using a database.
26.	grep: Search for patterns in files.
27.	sed: Stream editor for text manipulation.
28.	awk: Text processing language.
29.	cut: Extract columns from text.
30.	paste: Merge lines of text files.
31.	sort: Sort lines of text.
32.	uniq: Filter out repeated lines.
33.	wc: Count words, lines, and characters in a file.
34.	diff: Compare files line by line.
35.	patch: Apply patches to files.
36.	head: Display the first few lines of a file.
37.	tail: Display the last few lines of a file.
38.	less: View files one page at a time.
39.	more: Similar to less, but with fewer features.
40.	cat: Concatenate and display files.
41.	tac: Concatenate and display files in reverse order.
Text Editing
42.	vi/vim: Powerful text editor.
43.	nano: Simple text editor.
44.	emacs: Advanced text editor.
System Information and Monitoring
45.	top: Display system processes.
46.	htop: Interactive process viewer.
47.	vmstat: Show system memory, processes, interrupts, paging, block I/O, and CPU info.
48.	mpstat: Monitor per-processor statistics.
49.	iostat: Monitor block I/O statistics.
50.	netstat: Show network statistics.
51.	ifconfig: Configure network interfaces.
52.	ip: Advanced network configuration tool.
53.	ss: Show socket statistics.
54.	lsof: List open files.
55.	free: Display system memory usage.
56.	df: Display disk usage.
57.	du: Estimate disk space usage.
58.	uptime: Show system uptime and load average.
59.	date: Display or set system date and time.
60.	cal: Display a calendar.
System Administration
61.	lspci:  List all PCI devices.
62.	lsusb: List USB devices.
63.	passwd: Change passwords.
64.	systemctl: Control systemd services.
65.	journalctl: View systemd journal logs.
66.	crontab: Schedule tasks to run periodically.
67.	at: Schedule one-time commands to run at a specific time.
68.	dmesg: Print kernel ring buffer.
69.	mkfs: Create a filesystem.
70.	fsck: Check and repair a filesystem.
71.	mount: Mount a filesystem.
72.	umount: Unmount a filesystem.
73.	fdisk: Partition disk drives.
74.	parted: Partition disk drives (more advanced).
75.	blkid: Print block device information.
76.	dd: Copy and convert files.
77.	tar: Archive and compress files.
78.	gzip/gunzip: Compress and decompress files.
79.	bzip2/bunzip2: Another compression utility.
80.	xz/unxz: Another compression utility.
81.	zip/unzip: Zip and unzip files.
82.	unrar: Extract RAR archives.
83.	7z: 7-Zip file archiver.
84.	screen: Terminal multiplexer.
85.	tmux: Terminal multiplexer.
86.	nohup: Run commands in the background.
87.	nice/renice: Change process priority.
88.	sleep: Pause execution for a specified time.
89.	wait: Wait for background jobs to finish.
90.	kill: Send signals to processes.
91.	killall: Kill all processes matching a name.
92.	pkill: Kill processes based on a pattern.
93.	bg: Send a job to the background.
94.	fg: Bring a job to the foreground.
95.	jobs: List background jobs.
96.	nc: Netcat, a network utility for reading from and writing to network connections.
97.	ping: Check network connectivity.
98.	traceroute: Trace the route packets take to a destination.
99.	nslookup: Query Domain Name System (DNS) servers.
100.	dig: DNS lookup utility.
101.	xargs – Build and execute commands from standard input (eg: pipe find results into other commands).


102.	watch – Run a command repeatedly and display its changing output over time.


103.	alias – Create a shortcut for a longer command.


104.	unalias – Remove a previously defined alias.


105.	whereis – Locate the binary, source and manual page for a command.


106.	strace – Trace system calls and signals used by a process (good for debugging).


107.	jq – Process JSON data on the command line.


108.	tcpdump – Capture and display network packets for troubleshooting network issues.


109.	iftop – Monitor real-time bandwidth usage per interface/host.


110.	rsync – Sync files/directories locally or over network (efficient for backups).


111.	umask – Set default file creation permissions for new files/directories.


112.	chroot – Change the root directory for a process (useful for rescue & isolation).


113.	trap – Define shell script actions when signals are received (for cleanup, etc).


114.	tee – Read from standard input and write to standard output and to files.


115.	disown – Remove a job from shell’s job-control so it won’t receive SIGHUP after logout.


116.	env – Run a command in a modified environment or display environment variables.


117.	export – Set environment variables for current session or children processes.


118.	unset – Remove environment variables from current shell.


119.	sysctl – Modify kernel parameters at runtime.


120.	xfs_growfs / resize2fs / lvextend – Expand filesystems or LVM volumes online (depending on file system type).


121.	lsof +D <dir> – List open files under a directory tree (helps find what’s blocking unmount, etc).


122.	ncdu – Interactive disk usage explorer (useful on head-less servers).


123.	vgdisplay / pvdisplay / lvdisplay – Display LVM volume group / physical volume / logical volume details.


124.	ss -tunlp – Show listening sockets with process names (modern replacement/enhancement for netstat).


125.	nmcli – Command-line tool to manage network settings via NetworkManager.


126.	hdparm – Show or set SATA/IDE drive parameters (for hardware/IO tuning).


127.	smartctl – Monitor SMART status of drives (for early detection of disk failure).


128.	pgrep: Pattern match to find process IDs


129.	apropos – Search the manual page names & descriptions for keywords.

130.	ipcrm – Remove System V interprocess communication objects (shared memory, message queues, semaphores).











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



