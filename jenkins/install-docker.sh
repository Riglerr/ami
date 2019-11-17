curl https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.1~3-0~ubuntu-xenial_amd64.deb -o /tmp/docker-ce.deb
curl https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb -o /tmp/containerd.deb
curl https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.1~3-0~ubuntu-xenial_amd64.deb -o /tmp/docker-cli.deb
sudo dpkg -i /tmp/containerd.deb
sudo dpkg -i /tmp/docker-cli.deb
sudo dpkg -i /tmp/docker-ce.deb
sudo docker run hello-world
sudo docker rm $(sudo docker ps -a -f status=exited -f status=created -q)
sudo docker rmi $(sudo docker images -a -q)
sudo usermod -aG docker ubuntu
sudo rm -rf /tmp/docker-ce.deb /tmp/containerd.deb /tmp/docker-cli.deb