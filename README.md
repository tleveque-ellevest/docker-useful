# Docker build & Docker-compose common error

## Introduction

All operations ran during a Docker build that produces files are override by
volumes files in case of conflict.

## Illustration
```bash
docker build -t test .
docker run test cat testong.yml
# Will echo: wrong

docker-compose build
docker-compose run test cat testong.yml
# Will echo: Right
```
