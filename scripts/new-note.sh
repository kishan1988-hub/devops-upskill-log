#!/bin/bash

# Prompt for topic
read -p "Enter topic (e.g., linux-permissions, bash, terraform): " topic
date_today=$(date +%F)
filename="notes/${date_today}-${topic}.md"

# Create note with template
mkdir -p notes
cat > "$filename" <<EOF
# ${topic^} Notes  
**Date:** $date_today

## ✅ What I Practiced
- 

## 💡 Key Commands
- 

## 🤔 Things to Review
- 

## 📎 References
- 
EOF

echo "✅ Created: $filename"
code "$filename"
