FROM ubuntu:18.04

RUN apt-get update --yes \
    && apt-get upgrade --yes \
    && apt install software-properties-common --yes \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt install ansible --yes \
    && apt clean autoclean --yes \
    && apt autoremove --yes

RUN useradd -ms /bin/bash ansible

USER ansible
WORKDIR /home/ansible

CMD ["ansible", "--version"]
