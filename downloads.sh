#!/usr/bin/env bash

set -e

OUT_DIR="indictts_latest_models"
URL_FILE="urls.txt"

mkdir -p "$OUT_DIR"

echo "Starting download..."

wget -c -i "$URL_FILE" -P "$OUT_DIR"

echo "Download complete."
