#!/usr/bin/env bash

echo "Installing LocalStack CLI."

curl --output localstack-cli-4.0.0-linux-amd64-onefile.tar.gz \
    --location https://github.com/localstack/localstack-cli/releases/download/v4.0.0/localstack-cli-4.0.0-linux-amd64-onefile.tar.gz

sudo tar -xvf localstack-cli-4.0.0-linux-amd64-onefile.tar.gz -C /usr/local/bin

rm localstack-cli-4.0.0-linux-amd64-onefile.tar.gz

echo "LocalStack CLI installed."
