FROM ubuntu:latest

#RUN apt-get install -y gpgv
#RUN echo "deb http://archive.ubuntu.com/ubuntu/ bionic multiverse" >> /etc/apt/sources.list.d/multiverse.list
#RUN echo "deb http://ppa.launchpad.net/obsproject/obs-studio/ubuntu bionic main" >> /etc/apt/sources.list.d/obs.list

#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BC7345F522079769F5BBE987EFC71127F425E228
RUN apt-get update 
RUN apt-get install -y libfdk-aac0 ffmpeg obs-studio --no-install-recommends 
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/obs"]
