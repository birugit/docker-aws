FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
USER admin
WORKDIR /home/admin
