#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

REGEN_KEY_CACHE="php artisan key:generate && \
php artisan config:cache && \
php artisan view:cache"

echo "${GREEN}Running ${RED}KEY AND CACHE REGENERATION ${GREEN}:${NC}"
eval "$REGEN_KEY_CACHE"
