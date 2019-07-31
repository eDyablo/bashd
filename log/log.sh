#!/usr/bin/env bash

log_logger='log.logger.NULL'

log.logger.NULL() {
  return
}

log.logger.STDOUT() {
  read input
  echo "${input}"
}

log.logger.FILES() {
  read input
  output=$(echo "${input}" | tee -a "${@}")
}

log.info() {
  echo "${@}" | ${log_logger}
}
