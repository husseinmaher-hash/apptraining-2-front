#!/bin/bash
# Pull latest frontend code from master
git pull origin main

# Go to local compose folder
cd ../compose

# Build and start frontend container
docker compose build frontend
docker compose up -d frontend
