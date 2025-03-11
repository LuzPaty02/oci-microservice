FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a0137277
COPY /target/*.jar oci-microservice-A0137277.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice-a0137277/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice-a0137277/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a0137277.jar" ]
