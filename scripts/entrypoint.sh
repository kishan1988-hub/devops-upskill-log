#!/bin/bash

set -e

if [[ -z "$GH_REPO_URL" || -z "$GH_RUNNER_TOKEN" || -z "$GH_RUNNER_NAME" ]]; then
  echo "Missing required environment variables."
  exit 1
fi

./config.sh --url "$GH_REPO_URL" \
            --token "$GH_RUNNER_TOKEN" \
            --name "$GH_RUNNER_NAME" \
            --work "_work" \
            --unattended \
            --replace

trap './config.sh remove --unattended --token $GH_RUNNER_TOKEN' EXIT

./run.sh
