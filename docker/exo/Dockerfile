FROM ubuntu:latest

RUN apt-get update && apt-get upgrade 
RUN apt-get install -y python3 python3-pip

WORKDIR / 

EXPOSE 5000

CMD python3 -m http.server 5000