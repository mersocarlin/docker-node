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
