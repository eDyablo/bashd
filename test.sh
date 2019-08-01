#!/usr/bin/env bash

parent=${dir}
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

declare -a tests=($(find */ -regex '.*test.sh'))

for test in "${tests[@]}"
do
  . "${dir}/${test}"
done

dir=${parent}
