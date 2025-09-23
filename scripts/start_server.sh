#!/bin/bash
set -e
cd /home/ubuntu/chatapp/server

# ensure pm2 is available
if ! command -v pm2 >/dev/null 2>&1; then
  sudo npm install -g pm2
fi

# start using npm start (adjust if repo uses index.js directly)
pm2 start npm --name chat-backend -- start || pm2 restart chat-backend
pm2 save
