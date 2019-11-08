FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
RUN usermod -a -G docker admin
USER admin
