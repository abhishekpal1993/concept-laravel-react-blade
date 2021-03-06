#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

REACT_WATCH_POLL="docker run -it --rm \
  -v $(pwd):/app \
  --workdir /app \
  --env DEBUG='*,-babel,-eslint:*,-babel:config:config-chain,-eslint-module-utils:*' \
  mhart/alpine-node:12 \
  sh scripts/npm-watch-poll.sh"

echo "${GREEN}Running ${RED}REACT watch-poll ${GREEN}:${NC}"
eval "$REACT_WATCH_POLL"
