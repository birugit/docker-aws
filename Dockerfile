FROM tomcat:8
RUN useradd -ms /bin/bash admin
USER admin
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/