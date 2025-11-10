#!/bin/bash
set -e

N8N_ROOT="/n8n"
N8N_DATA="${N8N_ROOT}/files"

echo "[i] creating n8n directories..."
mkdir -p "$N8N_DATA"

echo "[i] copying docker-compose to n8n root..."
cp /app/docker-compose.yml "$N8N_ROOT/docker-compose.yml"

cd "$N8N_ROOT"

echo "[i] pulling images"
docker-compose pull
echo "[i] starting n8n proxy docker..."
docker-compose up
