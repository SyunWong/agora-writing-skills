#!/usr/bin/env bash
# Builds one zip per skill in dist/, ready to upload in Claude under Customize > Skills.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir dist
for dir in skills/*/; do
  name=$(basename "$dir")
  (cd skills && zip -qr "../dist/$name.zip" "$name")
  echo "dist/$name.zip"
done
