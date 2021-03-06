#!/usr/bin/env bash
set -ex

# preinstall
if [ -x "$(command -v apk)" ]; then
	apk add --update curl
fi

# install
echo
echo 'Install Fargate'
curl -L -o /usr/local/bin/fargate https://github.com/cloudposse/fargate/releases/download/0.1.0/fargate_linux_386
chmod +x /usr/local/bin/fargate

echo
echo 'Fargate Command'
command -v fargate
fargate --version

