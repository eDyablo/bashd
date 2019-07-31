#!/usr/bin/env bash

caller_dir="${dir}"
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/../assert/assert.sh
. ${dir}/parse.sh

dir="${caller_dir}"

parse_options --env=a --env=b

assert "${opt_env[0]}" == "a"
