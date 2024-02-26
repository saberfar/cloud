 #!/bin/bash
echo "Esto es un mensaje" > ~/mensaje.txt
yum update -y
yum install httpd -y
systemctl enable httpd
service httpd start
