FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
RUN useradd -u 8877 test-user
USER test-user
