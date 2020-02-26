FROM jenkins/jenkins:2.222

ADD ./data /opt
WORKDIR /opt

# Install plugins
RUN /usr/local/bin/install-plugins.sh < /opt/plugins.txt

USER root

RUN apt-get -y update -y \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends apt-utils

# Install node
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash - \
    && apt-get install -y nodejs

# Install vue cli
RUN npm install -g @vue/cli

USER jenkins
