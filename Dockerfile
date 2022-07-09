FROM mhart/alpine-node:16.4.2

LABEL maintainer "mersocarlin@mersocarlin.com"

RUN apk update && apk upgrade \
	&& apk add --no-cache bash \
	&& apk add --no-cache curl \
	&& apk add --no-cache git \
  && rm -rf /var/cache/apk/*
