# protonvpn-docker
Setup for running protonvpn inside a docker container

To build image, run
```sh
docker image build . -t protonvpn-docker
```

To run image, run
```sh
docker-compose run --service-ports protonvpn-docker
```

To test, run
```sh
curl -x socks5h://127.0.0.1:1080 https://www.youtube.com
```
