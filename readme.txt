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

Important Docker Commands
-------------------------------
docker pull nginx
docker ps -a
docker run -p 8080:80 nginx
docker build -t myapp .
docker logs container
docker exec -it container bash
