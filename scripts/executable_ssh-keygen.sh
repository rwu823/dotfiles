#!/usr/bin/env bash

# 1. 用 printf/echo 印出提示（跨 Shell 100% 相容，且不換行）
printf "Enter SSH Key Name/Comment (e.g. rocky_ibm_mac): "
read -r KEY_NAME

# 防呆檢查
if [ -z "$KEY_NAME" ]; then
  echo "Error: Key name cannot be empty."
  exit 1
fi

KEY_PATH="$HOME/.ssh/$KEY_NAME"

if [ -f "$KEY_PATH" ]; then
  echo "Error: File $KEY_PATH already exists!"
  exit 1
fi

# 2. 執行生成
ssh-keygen -t ed25519 -f "$KEY_PATH" -C "$KEY_NAME"

echo ""
echo "✅ Key created at $KEY_PATH"
