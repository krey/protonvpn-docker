# protonvpn-docker
Setup script to run `protonvpn` inside a docker container.

# Installation
To build image, set your credentials in `config.sh` first. (Template: `config.sh.sample`)

Then build the image using Docker BuildKit.
The easiest way is to set `DOCKER_BUILDKIT=1`, or use `docker buildx build` with docker >= 19.03.

```sh
DOCKER_BUILDKIT=1 docker image build . --secret id=configs,src=./config.sh -t protonvpn-docker
```

# Usage
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
