FROM debian:latest

RUN apt-get update && apt-get install -y openssh-client zip

RUN mkdir -p ~/.ssh && \
      eval $(ssh-agent -s) && \
      echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
     
