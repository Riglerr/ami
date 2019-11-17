sudo useradd -U -u 2000 jenkins
sudo mv /tmp/ssl/rigler.jks /var/ssl/rigler.jks

sudo apt-get -y install openjdk-8-jre
sudo curl http://mirror.serverion.com/jenkins/war-stable/2.176.2/jenkins.war -o /opt/jenkins.war
