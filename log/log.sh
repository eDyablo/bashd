#!/usr/bin/env bash

log_logger='log.logger.NULL'

log.logger.NULL() {
  return
}

log.logger.STDOUT() {
  read input
  echo "${input}"
}

log.info() {
  echo "${@}" | "${log_logger}"
}
