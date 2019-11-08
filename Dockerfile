FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/
//RUN useradd -rm -d /home/admin -s /bin/bash -g root -G sudo -u 1000 admin
//USER admin
WORKDIR /home/admin

# Create a user group 'xyzgroup'
//RUN addgroup -S xyzgroup

# Create a user 'appuser' under 'xyzgroup'
RUN useradd -S -D -h /home/admin admin docker

# Chown all the files to the app user.
RUN chown -R admin:docker /home/admin

# Switch to 'appuser'
USER admin
