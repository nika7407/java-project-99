FROM gradle:8.8.0-jdk22

WORKDIR /app

COPY . .

COPY src/main/resources/certs /app/src/main/resources/certs

RUN chmod +x ./gradlew

RUN ./gradlew installDist

CMD ["./build/install/app/bin/app"]


