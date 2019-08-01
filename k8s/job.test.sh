#!/usr/bin/env bash

parent=${dir}
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/../assert/assert.sh
. ${dir}/../log/log.sh
. ${dir}/job.sh

dir=${parent}

log_logger='log.logger.STDOUT'

k8s.job.run 1 2
