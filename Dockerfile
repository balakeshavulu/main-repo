# Use the official Tomcat image as the base
FROM tomcat:9

# Remove the default Tomcat webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory
COPY /var/lib/jenkins/workspace/DockerPipeline/target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
