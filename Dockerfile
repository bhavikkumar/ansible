FROM ubuntu:20.04

RUN apt update --yes \
    && apt upgrade --yes \
    && apt install ansible --yes \
    && apt clean autoclean --yes \
    && apt autoremove --yes

RUN useradd -ms /bin/bash ansible

USER ansible
WORKDIR /home/ansible

CMD ["ansible", "--version"]
