FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /home/admin
