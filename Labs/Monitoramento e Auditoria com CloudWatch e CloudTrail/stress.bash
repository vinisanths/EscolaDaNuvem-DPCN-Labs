sudo yum update -y
sudo amazon-linux-extras install epel -y # Amazon Linux 2
sudo yum install stress -y
stress --cpu 8 --timeout 600