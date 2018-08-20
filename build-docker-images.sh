#!/usr/bin/env bash

# Get lintreview
git clone https://github.com/markstory/lint-review /tmp/lint-review

# Build docker images.
cd /tmp/lint-review && make images
