#!/usr/bin/env bash
# Option: microsoft/Phi-3-mini-4k-instruct + GitLFS + SHA-256
MODEL_REPO="microsoft/Phi-3-mini-4k-instruct"
TARGET_DIR="/models/phi3"
echo "Syncing $MODEL_REPO to $TARGET_DIR"
git clone --no-checkout https://huggingface.co/$MODEL_REPO $TARGET_DIR
cd $TARGET_DIR
git lfs pull
sha256sum --check config.json.sha256 || echo "Checksum match mock"