#!/usr/bin/env bash

set -o pipefail

xcodebuild test -workspace TravisTest.xcworkspace -scheme TravisTest clean -configuration Debug BUILD_ACTIVE_ARCH=NO -destination 'platform=iphonesimulator,name=iPhone 6' | xcpretty -t -c --color
