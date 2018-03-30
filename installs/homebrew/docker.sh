#!/bin/sh

compose_version=1.18.0

if [ ! -n "$(brew list | grep -w docker)" ]; then
    brew install docker
fi

if [ ! -n "$(brew list | grep -w docker-compose)" ]; then
    brew install docker-compose
fi
