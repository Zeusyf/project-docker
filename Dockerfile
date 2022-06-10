FROM ubuntu:xenial
LABEL maintainer="zeusyf <r.zeusyf@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget && apt-get -y install libxcb-xinput0 && apt-get -y install libegl1

RUN mkdir build
WORKDIR build

RUN wget https://update.u.is/downloads/linux/utopia-latest.amd64.deb
RUN wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
RUN apt-get install -y ./utopia-latest.amd64.deb ./uam-latest_amd64.deb

WORKDIR /opt/uam

CMD /opt/uam/uam --pk E8B8118BDD82954C27A56D31FEAFDA455E123EB4DC8F4299C2CA0E7ADB5CC03F --no-ui
