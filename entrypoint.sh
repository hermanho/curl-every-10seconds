#!/bin/sh

# Prepend "curl" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- curl "$@"
fi

for run in $(seq 1 5)
do
  "$@"
  echo
  sleep 10s
done

exit 0