FROM centos:latest

COPY summon_retrieve.sh /opt/scripts/

RUN chmod +x /opt/scripts/summon_retrieve.sh &&\
    curl -sSL https://raw.githubusercontent.com/cyberark/summon/master/install.sh | bash &&\
    curl -sSL https://raw.githubusercontent.com/cyberark/summon-conjur/master/install.sh | bash

WORKDIR /opt/scripts

CMD summon sh summon_retrieve.sh