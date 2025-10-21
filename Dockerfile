FROM openjdk:11
EXPOSE 8080
ADD target/lab2p.jar lab2p.jar
ENTRYPOINT ["java","-jar","/labcicd-0.0.1-SNAPSHOT.jar"]
