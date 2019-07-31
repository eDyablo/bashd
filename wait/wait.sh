#!/usr/bin/env bash

wait_until() {
  local predicate="${1}"
  local timeout="${2:-60}"
  local sleep_interval=1
  local spent=0
  until eval "${predicate}" || [ ${spent} -ge ${timeout} ]
  do
    sleep ${sleep_interval}
    spent=$((spent + 1))
  done
}
