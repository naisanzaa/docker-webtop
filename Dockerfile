FROM lscr.io/linuxserver/webtop:ubuntu-i3

RUN apt update 
RUN apt install -y git vim tmux

RUN \
    cd / && \
    git clone https://github.com/TheShellLand/antsable

RUN \
    cd /antsable && \
    bash install-ansible.sh

RUN \
    cd /antsable && \
    bash ansible-local.sh playbooks/readyup.yml
