# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the project’s jar file into the container at /app
# add your jar name in to the pom.xml file like this
# <finalName>spring-boot-docker-demo-0.0.1-SNAPSHOT</finalName>
COPY target/spring-boot-docker-demo-0.0.1-SNAPSHOT.jar /app/spring-boot-docker-demo.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "spring-boot-docker-demo.jar"]




#docker login

# adding tag for image
#docker tag spring-boot-docker-demo your-username/spring-boot-docker-demo:latest

# pushing image to the docker hub
#docker push your-username/spring-boot-docker-demo:latest

# pulling from docker hub
#your-username/spring-boot-docker-demo:latest

# starting docker image
#docker run -p 9090:8080 your-username/spring-boot-docker-demo:latest
