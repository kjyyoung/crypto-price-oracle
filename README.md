# Crypto Price Oracle Demo

A standalone price oracle provider designed to be integrated with the HighStation Gatekeeper.

## Features
- Provides live spot prices for BTC, ETH, CRO, etc. via Coinbase Public API.
- Designed for easy OpenSeal v2.0 integration.
- Default Port: 4000

## Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Run in Development Mode
```bash
npm run dev
```

### 3. Build & Run as API Server
```bash
# Build TypeScript to JavaScript
npm run build

# Start the production server
npm start
```

### 4. Test the API
```bash
curl http://localhost:4000/api/v1/price/btc
```

## Integrating with HighStation
1. Deploy this project to a public URL (e.g. n100, Vercel, or a VPS).
2. Register the service in your HighStation dashboard.
3. Use `http://<your-url>/api/v1/price` as the Upstream URL.
4. (Optional) Wrap the response with OpenSeal CLI for full integrity verification.

## 🔒 OpenSeal Integration

To seal this service, follow these steps to avoid conflict with the Project's `dist` folder:

```bash
# 1. Build the project normally
npm run build

# 2. Seal with a custom output directory (to preserve the dist folder)
openseal build --exec "node dist/index.js" --output sealed_dist

# 3. Run the protected service
openseal run --app sealed_dist --port 4000
```
