#!/bin/bash
set -e

echo "🚀 Starting HighStation Oracle Build..."
echo "🐳 Building Docker Image..."

# No manual binary copy needed anymore implies implicit "Public" build
docker build -t crypto-price-oracle:latest .

echo "✅ Build Complete!"
echo "   Run with: docker run -d --name crypto-price-oracle --network highstation_network -p 1999:1999 crypto-price-oracle:latest"
