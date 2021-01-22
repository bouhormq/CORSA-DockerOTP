FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt-get install openjdk-8-jdk

WORKDIR /app

ADD . .

RUN chmod +x ./run.sh

EXPOSE 8080 8081

ENTRYPOINT [ "./run.sh" ]