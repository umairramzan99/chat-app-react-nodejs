#!/bin/bash
set -e
# stop the pm2 process if exists
pm2 stop chat-backend || true
pm2 delete chat-backend || true
