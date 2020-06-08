#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

REACT_BUNDLE="docker run -it --rm \
  -v $(pwd):/app \
  --workdir /app \
  --env DEBUG='*,-babel,-eslint:*,-babel:config:config-chain,-eslint-module-utils:*' \
  mhart/alpine-node:12 \
  npm ci && \
  npm run prod"

echo "${GREEN}Running ${RED}REACT Bundler ${GREEN}:${NC}"
eval "$REACT_BUNDLE"
