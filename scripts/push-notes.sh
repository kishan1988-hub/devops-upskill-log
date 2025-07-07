#!/bin/bash

# Default message is today's date unless passed as an argument
msg=${1:-"update notes for $(date +%F)"}

# Run from root of your repo
cd "$(dirname "$0")"

git add .
git commit -m "$msg"
git push origin main

echo "✅ Notes pushed to GitHub with message: $msg"
