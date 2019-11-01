FROM tomcat:8
WORKDIR /Users/swamy/jenkins_home
RUN useradd -ms /bin/bash admin
USER admin
# Create a user group 'docker'
RUN addgroup -S docker
# Create a user 'appuser' under 'xyzgroup'
RUN admin -S -D -h /Users/swamy/jenkins_home appuser docker
# Chown all the files to the app user.
RUN chown -R appuser:docker /Users/swamy/jenkins_home
# Switch to 'appuser'
USER admin

# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/