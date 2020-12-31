FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install default-jre -y

WORKDIR /app

ADD . .

RUN chmod +x ./run.sh

EXPOSE 8080 8081

ENTRYPOINT [ "./run.sh" ]