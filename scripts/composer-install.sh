#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

DOCKER_COMPOSE_INSTALL="docker run -it --rm \
  -v $(pwd):/app \
  --workdir /app \
  composer:1.10.7 \
  install"

echo "${GREEN}Running ${RED}Composer Installer ${GREEN}:${NC}"
eval "$DOCKER_COMPOSE_INSTALL"
