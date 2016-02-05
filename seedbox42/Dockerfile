FROM debian:jessie
MAINTAINER Stephane Bres <sbres@student.42.fr>

RUN apt-get update && \
    apt-get install -y curl git make transmission-cli transmission-common transmission-daemon g++ gyp
RUN apt-get install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash

RUN apt-get install -y nodejs


RUN git clone https://github.com/johnduro/seedbox42.git /seedbox42_git
WORKDIR /seedbox42_git
RUN npm i -g node-gyp && node-gyp clean
RUN npm install bcrypt
RUN npm install

RUN mkdir /seedbox42
RUN chmod 333 /seedbox42
COPY config.json /seedbox42_git/config.json
COPY settings.json /etc/transmission-daemon/settings.json
COPY run.sh /seedbox42_git/run.sh

RUN chmod +x /seedbox42_git/run.sh

EXPOSE 9091

ENTRYPOINT ["/seedbox42_git/run.sh"]

#CMD ["node", "app.js"]