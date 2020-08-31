FROM ubuntu

#RUN apt-get update && \
#    apt-get upgrade -y && \
#    apt-get install -y git

#RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

COPY . /app

RUN bash /app/init.sh

ENV USER=mzietara
ENV REPO=dotfiles
ADD https://api.github.com/repos/$USER/$REPO/git/refs/heads/master version.json

RUN bash /app/init-dotfiles.sh
ENTRYPOINT /bin/bash
