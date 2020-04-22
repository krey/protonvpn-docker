# protonvpn-docker
Setup for running protonvpn inside a docker container

To build image, edit the configuration in `config.sh` and then run
```sh
docker image build . -t protonvpn-docker
```

To run image, run
```sh
docker-compose run --service-ports protonvpn-docker
```
If it complains about iptables, you should do
```sh
sudo modprobe ip6table_filter
```
on the host
(see https://ilhicas.com/2018/04/08/Fixing-do-you-need-insmod.html)

To test, run
```sh
curl -x socks5h://127.0.0.1:1080 https://www.youtube.com
```
