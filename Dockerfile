FROM archlinux:latest

# install required packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm which expect openvpn dialog python-pip python-setuptools git dante && \
    pip install protonvpn-cli

COPY ./vpn-setup-main.exp ./vpn-setup-dns.exp ./vpn-setup-dns-custom.exp ./vpn-setup-killswitch.exp ./setup.sh ./config.sh /tmp/

# protonvpn-cli needs access to width
ENV COLUMNS 80

RUN /bin/bash /tmp/setup.sh
    
COPY ./sockd.conf /etc/
