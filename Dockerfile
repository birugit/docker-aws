FROM tomcat:8
# Take the war and copy to webapps of tomcat
ADD target/docker-aws-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 9091
CMD ["catalina.sh", "run"]
