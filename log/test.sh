#!/usr/bin/env bash

parent=${dir}
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/../assert/assert.sh
. ${dir}/log.sh

dir=${parent}

log_logger='log.logger.NULL'
assert -z "$(log.info 'info')"

log_logger='log.logger.STDOUT'
assert "$(log.info 'info')" == "info"

file="$(mktemp)"
trap "rm ${file}" EXIT INT TERM
log_logger="log.logger.FILES ${file}"
assert -z "$(log.info 'info')"
assert -f "${file}"
