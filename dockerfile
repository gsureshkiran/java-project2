#FROM alpine as build
#cmd sudo apt-get install -y tomcat9
#cmd sudo apt install -y default-jdk

#WORKDIR /usr/local/tomcat/webapps
#FROM alpine
#COPY --from=build /usr/local/tomcat/webapps /target/*.war

# Use a base image with Java installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/*.jar app

# Expose the port your application will listen on
EXPOSE 8081

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]
