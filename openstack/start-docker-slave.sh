#!/bin/bash
set -x

trap "exit 1" TERM
export TOP_PID=$$

terminate() {
  echo $1 && kill -s TERM $TOP_PID
}
