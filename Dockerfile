FROM openjdk:17-jdk-slim
EXPOSE 8080
ADD target/lab2p.jar lab2p.jar
ENTRYPOINT ["java","-jar","/lab2p.jar"]

