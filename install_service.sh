#!/usr/bin/env bash

set -ex

if [[ "$USER" != 'root' ]]; then
	echo "User is not root, exiting." >&2
	exit 1
fi

cp system/betterlockscreen.service /usr/lib/systemd/system/

sudo systemctl start  betterlockscreen.service
sudo systemctl enable betterlockscreen.service

echo "Done!"
