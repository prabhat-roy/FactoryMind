FROM eclipse-temurin:21-jdk AS build
WORKDIR /src
COPY . .
RUN ./gradlew bootJar --no-daemon -x test

FROM eclipse-temurin:21-jre
COPY --from=build /src/build/libs/*.jar /app.jar
EXPOSE 8080 9090
USER 10001
ENTRYPOINT ["java","-jar","/app.jar"]
