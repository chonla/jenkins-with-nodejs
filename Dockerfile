FROM jenkins/jenkins:latest

ADD . /opt
WORKDIR /opt

RUN /usr/local/bin/install-plugins.sh < /opt/plugins.txt

USER root

# Install node
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - \
    && apt-get install -y nodejs

USER jenkins
