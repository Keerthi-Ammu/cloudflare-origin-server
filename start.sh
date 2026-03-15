#!/bin/bash
curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o cloudflared
chmod +x cloudflared
gunicorn app:app --bind 0.0.0.0:$PORT &
./cloudflared tunnel --no-autoupdate run --token "${TUNNEL_TOKEN}"
