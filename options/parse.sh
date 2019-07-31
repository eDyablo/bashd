#!/usr/bin/env bash

parse_options() {
  while [ ${#} -gt 0 ]
  do
    case "${1}" in
      --*=true)
        local flag=${1%=*}
        local name=${flag#--*}
        eval "opt_${name}="
        ;;
      --*=false)
        local flag=${1%=*}
        local name=${flag#--*}
        eval "opt_${name}=()"
        ;;
      --*=*)
        local flag=${1%%=*}
        local name=${flag#--*}
        local value=${1#*=}
        eval "opt_${name}+=("${value@Q}")"
        ;;
      --*)
        local flag=${1%=*}
        local name=${flag#--*}
        eval "opt_${name}="
        ;;
      *)
        eval "args+=(${1@Q})"
        ;;
    esac
    shift
  done
}
