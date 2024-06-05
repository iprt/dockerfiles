#!/bin/bash
# shellcheck disable=SC2164 disable=SC1090
SHELL_FOLDER=$(cd "$(dirname "$0")" && pwd)
cd "$SHELL_FOLDER"

source <(curl -sSL https://code.kubectl.net/devops/build-project/raw/branch/main/func/log.sh)

log "build&push" "openjdk:17-jdk"

image_name="registry.cn-shanghai.aliyuncs.com/iproute/openjdk"

bash <(curl https://code.kubectl.net/devops/build-project/raw/branch/main/docker/build.sh) \
  -i "$image_name" \
  -v "17-jdk-update" \
  -r "false" \
  -p "true"
