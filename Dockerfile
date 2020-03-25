FROM debian:10

RUN apt-get update -y
RUN apt-get install xvfb -y

RUN apt-get install x11vnc -y

RUN apt-get install mate-desktop -y && \
    apt-get install mate-desktop-common -y && \ 
    apt-get install mate-desktop-environment -y && \
    apt-get install mate-desktop-environment-core -y

RUN apt-get install firefox-esr -y

RUN apt-get install telnet -y
RUN apt-get install less -y
RUN apt-get install procps -y

RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

COPY entrypoint.sh /entrypoint.sh

EXPOSE 5900

ENTRYPOINT [ "/entrypoint.sh" ]