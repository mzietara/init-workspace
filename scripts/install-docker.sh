#!/bin/bash
set -e

./check-root.sh

curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh

echo "Cleaning..."
rm get-docker.sh

echo "Done!"
