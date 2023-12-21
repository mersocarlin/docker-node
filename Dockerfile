FROM node:20-alpine

LABEL maintainer "mersocarlin@mersocarlin.com"

RUN apk update && apk upgrade \
	&& apk add --no-cache bash \
	&& apk add --no-cache curl \
	&& apk add --no-cache git \
  && rm -rf /var/cache/apk/*
