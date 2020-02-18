FROM archlinux

ENV COLUMNS 80
ENV LINES 24
# get these from https://protonvpn.com/support/vpn-login/
ENV PROTONVPN_USER foo
ENV PROTONVPN_PASSWORD bar

COPY ./vpn-setup.exp /tmp/vpn-setup.exp

RUN pacman -Sy && \
    pacman -S --noconfirm which expect openvpn dialog python-pip python-setuptools git dante && \
    pip install git+https://github.com/krey/protonvpn-cli-ng.git && \
    expect /tmp/vpn-setup.exp && \
    rm /tmp/vpn-setup.exp
    
COPY ./sockd.conf /etc/sockd.conf
