# mersocarlin/docker-node

Base docker image for all of my NodeJS apps.

## 📖 How to

In `Dockerfile`:

```
FROM mersocarlin/docker-node

# create app directory in container
RUN mkdir -p /app

# set /app directory as default working directory
WORKDIR /app

# copy package.json, yarn.lock (or package-lock.json) and install dependencies
ADD package.json yarn.lock /app/

# --pure-lockfile: Don’t generate a yarn.lock lockfile
RUN yarn --pure-lockfile

COPY . /app/

# expose container port
EXPOSE 3001

CMD [ "yarn", "test" ]
```

## Publishing a new version to Docker registry

```bash
docker build -t mersocarlin/docker-node:20-alpine
git tag v20-alpine
docker tag mersocarlin/docker-node:20-alpine mersocarlin/docker-node:latest
docker push mersocarlin/docker-node:latest
git push origin --tags
```
