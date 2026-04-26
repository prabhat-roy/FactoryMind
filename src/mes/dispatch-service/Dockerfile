FROM eclipse-temurin:21-jdk AS build
WORKDIR /src
COPY . .
RUN ./gradlew bootJar --no-daemon -x test
FROM eclipse-temurin:21-jre
COPY --from=build /src/build/libs/*.jar /app.jar
USER 10001
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
