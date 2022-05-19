sudo apt-get update
sudo apt install -y unzip wget

# Installing Terraform  -  collecting its binary to /usr/local/bin
wget https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip


# Install Docker
sudo apt-get update
sudo apt install curl -y
curl https://get.docker.com | sudo bash


# Install Docker-compose
udo apt update
sudo apt install -y jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# Installing eksctl
sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz"
sudo mv /tmp/eksctl /usr/local/bin


# Setting cluster API 
echo "Setting up cluster API through kubectl"
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl 


# Installing CLI
sudo apt install awscli

