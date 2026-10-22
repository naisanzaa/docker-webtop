FROM lscr.io/linuxserver/webtop:ubuntu-i3

RUN apt update 
RUN apt install -y git vim tmux

RUN \
    cd / && \
    git clone https://github.com/TheShellLand/antsable && \
    cd /antsable && \
    bash install-ansible.sh && \
    bash ansible-local.sh playbooks/readyup-docker-gui.yml && \
    cd /antsable
