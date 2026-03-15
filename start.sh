#!/bin/bash

# Download cloudflared
curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o cloudflared
chmod +x cloudflared

# Start Flask app in background
gunicorn app:app --bind 0.0.0.0:$PORT &

# Start Cloudflare Tunnel
./cloudflared tunnel run --token $TUNNEL_TOKEN
