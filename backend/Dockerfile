
# Build Jar
FROM maven:3.6.3-jdk-8 AS builder

LABEL maintainer=Thomas\ Eberle
LABEL last_updated=21/03/2020

WORKDIR /coronatracker

COPY ./ /coronatracker

RUN mvn clean install

# Build Executable Image

FROM openjdk:8-jdk

LABEL maintainer=Thomas\ Eberle
LABEL last_updated=21/03/2020

WORKDIR /coronatracker

COPY --from=builder /coronatracker ./

EXPOSE 8080

RUN ls  corona-server/target && \
    mv corona-server/target/wvsvcoronatracker-${VERSION}-server.jar /tmp/corona-server.jar && \
    rm -R /coronatracker/* && \
    mv /tmp/corona-server.jar ./ && \
    chmod 755 corona-server.jar

CMD java -jar corona-server.jar