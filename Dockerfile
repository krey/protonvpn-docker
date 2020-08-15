FROM archlinux:latest

# install required packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm which expect openvpn dialog python-pip python-setuptools git dante && \
    pip install protonvpn-cli

COPY ./vpn-setup.exp /tmp/

# protonvpn-cli needs access to width
ENV COLUMNS 80

COPY ./sockd.conf /etc/
