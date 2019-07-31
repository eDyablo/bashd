#!/usr/bin/env bash

caller_dir="${dir}"
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/../assert/assert.sh
. ${dir}/wait.sh

dir="${caller_dir}"

wait_until 'test 0 -eq 0'
