#!/bin/bash
#
#  This script creates copies of Package.swift for versions of Swift 5.9+.
#

set -e  # Exit on error

DIR_PATH=$(dirname "$0")

clone()
{
    sed "s/swift-tools-version: 6.0/swift-tools-version: $1/" "$DIR_PATH/Package.swift" > "$DIR_PATH/Package@swift-$1.swift"
}

clone "5.10"
clone "5.9"
