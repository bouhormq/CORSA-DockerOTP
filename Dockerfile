FROM openjdk:8-jre

WORKDIR /app

ADD . .

RUN chmod +x ./run.sh

EXPOSE 8080 8081

ENTRYPOINT [ "./run.sh" ]
