#!/usr/bin/env bash

assert() {
  local condition=${@}
  if test ${condition[*]}
  then
    return
  else
    echo "Assertion failed: ${condition@Q}"
    echo "$(caller)"
    exit 1
  fi
}
