FROM eclipse-temurin:8
ADD /target/test1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]