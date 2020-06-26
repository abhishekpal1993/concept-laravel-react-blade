#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

DOCKER_COMPOSE_INSTALL="docker run -it --rm \
  -v $(pwd):/app \
  --workdir /app \
  composer:1.10.7 \
  require $@"

CHOWN_VENDOR="sudo chown -Rf $USER:$USER ./vendor"

echo "${GREEN}Running ${RED}Composer Installing $@ ${GREEN}:${NC}"
eval "$DOCKER_COMPOSE_INSTALL"
echo "${GREEN}Running ${RED}Chown on vendor folder ${GREEN}:${NC}"
eval "$CHOWN_VENDOR"
