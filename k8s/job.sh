#!/usr/bin/env bash

caller_dir=${dir}
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/../log/log.sh

dir=${caller_dir}

k8s.job.run() {
  log.info k8s.job.run "${@}"
}
