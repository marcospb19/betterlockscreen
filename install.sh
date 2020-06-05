#!/usr/bin/env bash

if [[ "$USER" != 'root' ]]; then
	echo "Permission denied." >&2
	exit 1
fi

set -ex
cp betterlockscreen /usr/bin
set +ex

echo "Done!"
