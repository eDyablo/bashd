#!/usr/bin/env bash

parent=${dir}
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${dir}/assert/test.sh
. ${dir}/options/test.sh
. ${dir}/wait/test.sh

dir=${parent}
