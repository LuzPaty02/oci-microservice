FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-A0137277
COPY /target/*.jar oci-microservice-A0137277.jar
COPY /src/main/resources/Wallet_javadev101 /oci-microservice-A0137277/Wallet_javadev101
ENV TNS_ADMIN=/oci-microservice-A0137277/Wallet_javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-A0137277.jar" ]
