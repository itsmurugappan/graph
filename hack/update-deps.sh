#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Ensure we have everything we need under vendor/
go mod tidy
go mod vendor

# Clean up the vendor area to remove OWNERS and tests.
rm -rf $(find vendor/ -name 'OWNERS')
rm -rf $(find vendor/ -name '*_test.go')

