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

file1="$(mktemp)"
file2="$(mktemp)"
trap "rm ${file1} ${file2}" EXIT INT TERM
log_logger="log.logger.FILES ${file1} ${file2}"
assert -z "$(log.info 'info')"
assert "$(cat "${file1}")" == 'info'
assert "$(cat "${file2}")" == 'info'
assert -f "${file1}"
assert -f "${file2}"
