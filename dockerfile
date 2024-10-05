FROM openjdk:17-oracle
COPY ./target/service-register-0.0.1-SNAPSHOT.jar service-register.jar
CMD ["java","-jar","service-register.jar"]
