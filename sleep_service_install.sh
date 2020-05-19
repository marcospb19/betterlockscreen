#!/usr/bin/env bash

echo 'This script installs the service that launches betterlockscreen when the system sleeps'
echo ''

read -p 'Proceed? [Y/n] ' yn

if ! ( [ "$yn" = '' ] || [ "$yn" = 'Y' ] || [ "$yn" = 'y' ] ); then
	echo "Exiting."
	exit 0
fi


if [[ "$USER" != 'root' ]]; then
	echo "User is not root, exiting." >&2
	exit 1
fi

set -ex
cp system/betterlockscreen.service /usr/lib/systemd/system/
sudo systemctl start  betterlockscreen.service
sudo systemctl enable betterlockscreen.service
set +ex

echo "Done!"
