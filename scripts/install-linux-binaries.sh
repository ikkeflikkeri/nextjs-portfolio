#!/usr/bin/env bash
# Force-install linux x64 native binaries that npm's optional-dependency resolver
# skips when the build platform differs from the dev platform (Windows -> Linux on Vercel).
set -e
cd "$(dirname "$0")/../apps/web"
npm install --force --include=optional \
  @tailwindcss/oxide-linux-x64-gnu@4.3.3 \
  lightningcss-linux-x64-gnu@1.33.0 \
  @typescript/typescript-linux-x64@7.0.2 \
  @next/swc-linux-x64-gnu@16.3.0
