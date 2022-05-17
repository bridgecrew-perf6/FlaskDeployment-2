sudo apt-get update
sudo apt install -y unzip wget

# Installing Terraform  -  collecting its binary to /usr/local/bin
wget https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip

# Installing Ansible  -  with pip3
sudo apt install python3-pip -y
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible
ansible --version

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

