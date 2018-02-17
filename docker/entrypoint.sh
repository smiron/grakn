#!/bin/bash

if [ "$1" != "./grakn" ]; then
  exec "$@"
fi

trap _term SIGTERM

function _term() {
  echo "GRAKN service stopping"
  ./grakn server stop
}

./grakn "${@:2}"

while sleep 1; do
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

echo "GRAKN service stopped"