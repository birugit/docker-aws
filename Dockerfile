FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
RUN useradd -rm -d /home/admin -s /bin/bash -g root -G sudo -u 1000 admin
USER admin
WORKDIR /home/admin
