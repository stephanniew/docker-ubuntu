# docker ce
apt-get update && apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update && apt-get install docker-ce docker-ce-cli containerd.io

# test docker network
docker create network --driver=bridge --subnet=172.30.0.0/16 test
ip a
