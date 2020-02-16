# master node

# disable cache
vi /etc/fstab

kubeadm init --pod-network-cidr 172.16.0.0/24

# copy config
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


# child nodes:
# (on master:)
kubeadm token create

# (on child:)
kubeadm join 192.168.188.49:6443 --token xdzis7.qnbvo49kco5m8lel \
    --discovery-token-ca-cert-hash sha256:43ae7872f62beb18c16f5a227dddf04fac06f4a0758efa2042ce40361a6133ea 
