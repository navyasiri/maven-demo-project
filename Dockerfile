FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get -y install ansible

RUN apt-get update && \
apt-get install \ 
apt-transport-https \
ca-certificates \
curl \
gnupg \
lsb-release && \
 curl -fsSL https://download.docker.com/linux/debian/gpg |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null && \
apt-get update && \
apt-get -y install docker-ce 	

RUN curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins
