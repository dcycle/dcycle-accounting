#!/bin/bash
#
# Continuous integration script run on CircleCI, see ./.circleci/config.yml.
#
set -e

./scripts/deploy.sh
./scripts/check-broken-links.sh
./scripts/destroy.sh
