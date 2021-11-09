swapoff -a


sed -i -r 's/(.+swap.+)/#\1/' /etc/fstab

ufw status

echo "192.168.95.10 k8s-m" >> /etc/hosts

for i in 1 2 
do
	echo "192.168.95.1$i" k8s-w$i >> /etc/hosts
done

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"
apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
