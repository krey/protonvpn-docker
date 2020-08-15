# syntax = docker/dockerfile:experimental
FROM archlinux:latest

# install required packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm which expect openvpn dialog python-pip python-setuptools git dante && \
    pip install protonvpn-cli

COPY ./vpn-setup.exp /tmp/

# protonvpn-cli needs access to width
ENV COLUMNS 80

RUN --mount=type=secret,id=configs,dst=/tmp/config.sh \
    source /tmp/config.sh && \
    expect /tmp/vpn-setup.exp && \
    rm /tmp/vpn-setup.exp
    
COPY ./sockd.conf /etc/
