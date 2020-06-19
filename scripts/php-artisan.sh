#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

PHP_ARTISAN="docker run -it --rm \
  -v $(pwd):/app \
  --workdir /app \
  composer:1.10.7 \
  php artisan $@"

echo "${GREEN}Running ${RED}php artisan $@ ${GREEN}:${NC}"
eval "$PHP_ARTISAN"
