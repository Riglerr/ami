curl https://dl.google.com/go/go1.12.9.linux-amd64.tar.gz -o /tmp/go1.12.9.linux-amd64.tar.gz
sudo tar -C /usr/local -zxf /tmp/go1.12.9.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
sudo echo "PATH=$PATH:/usr/local/go/bin" > /etc/environment
sudo echo "PATH=$PATH:/usr/local/go/bin" > /etc/profile
sudo echo "PATH=$PATH:/root/go/bin" > /etc/profile
go get github.com/riglerr/victor
