# docker-node-java
Docker image with env for automatic testing in CI/CD. \
Docker Hub: [https://hub.docker.com/r/solargis/node-java-docker]

## build
```
docker build --platform linux/amd64 -t solargis/node-java-docker:dev .
```

## run
```
docker run --rm -it solargis/node-java-docker:dev bash
```

## inspect versions
```bash
# of java
docker run --rm solargis/node-java-docker:dev java -version
# of node
docker run --rm solargis/node-java-docker:dev node --version
# of npm
docker run --rm solargis/node-java-docker:dev npm --version
```

# runing some test of any project inside container
```bash
echo "npm i && npm run test" | docker run --rm solargis/node-java-docker:dev -v </full/path/to/project>:/root/workdir bash
```


# Tips for using docker
```bash
# inspect history command
docker history solargis/node-java-docker:dev
# set enviroment property to container
docker run --rm -e DISABLE_CACHE=true solargis/node-java-docker:dev env
``` 