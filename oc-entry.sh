#!/bin/bash

#set -e

function trace() {
  local -r EYECATCHER="[Container Build]"
  local TIMESTAMP
  TIMESTAMP="$(date +"%Y-%m-%d %H:%M:%S,%3N")"
  readonly TIMESTAMP
  echo -e "${TIMESTAMP} ${EYECATCHER} $*"
}
while true; do
  trace "Running test"
  #buildah unshare /test.sh
  sleep 60
done
