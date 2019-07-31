#!/usr/bin/env bash

caller_dir="${dir}"
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/assert.sh

dir="${caller_dir}"

assert 0 -eq 0
assert 0 -lt 1
assert 0 -gt -1
assert 0 -le 1
assert 0 -ge -1

assert 'a' == 'a'
assert 'a' != 'b'

assert ! 'a' != 'a'
assert ! 'a' == 'b'
