# protonvpn-docker
Setup for running protonvpn inside a docker container

To build image, run
```
docker image build . -t protonvpn-docker
```

To run image, run
```
docker-compose run --service-ports protonvpn-docker
```
