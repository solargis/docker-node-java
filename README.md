# docker-node-java
Docker image with env for automatic testing in CI/CD. \
Hithub: [https://hub.docker.com/r/solargis/node-java]

## build
```
docker build -t solargis/node-java:dev .
```

## run
```
docker run --rm -it solargis/node-java:dev bash
```

## inspect versions
```bash
# of java
docker run --rm solargis/node-java:dev java -version
# of node
docker run --rm solargis/node-java:dev node --version
# of npm
docker run --rm solargis/node-java:dev npm --version
```

# runing some test of any project inside container
```bash
echo "npm i && npm run test" | docker run --rm solargis/node-java:dev -v </full/path/to/project>:/root/workdir bash
```


# Tips for using docker
```bash
# inspect history command
docker history solargis/node-java:dev
# set enviroment property to container
docker run --rm -e DISABLE_CACHE=true solargis/node-java:dev env

``` 