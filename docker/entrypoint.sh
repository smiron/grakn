#!/bin/bash

./grakn "$@"

while sleep 60; do
  ps aux |grep grakn |grep -q -v grep
  PROCESS_1_STATUS=$?
  # If the greps above find anything, they exit with 0 status
  # If they are not both 0, then something is wrong
  if [ $PROCESS_1_STATUS -ne 0 ]; then
    echo "GRAKN exited."
    exit -1
  fi

  echo "GRAKN still running"
done