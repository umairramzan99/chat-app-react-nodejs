#!/bin/bash
set -e
cd /home/ubuntu/chatapp/server

# If you want to create a basic .env on deploy (NOT recommended for secrets):
if [ ! -f .env ]; then
  cat > .env <<'ENV'
MONGO_URI=mongodb://localhost:27017/chat
JWT_SECRET=change_this_in_prod
PORT=3000
ENV
  chown ubuntu:ubuntu .env
fi

# Install production dependencies
npm ci --production
