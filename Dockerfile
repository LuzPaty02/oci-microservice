FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-<your student id>
COPY /target/*.jar oci-microservice-<your student id>.jar
COPY /src/main/resources/Wallet_javadev101 /oci-microservice-<your student
id>/Wallet_javadev101
ENV TNS_ADMIN=/oci-microservice-<your student id>/Wallet_javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-<your student id>.jar" ]
