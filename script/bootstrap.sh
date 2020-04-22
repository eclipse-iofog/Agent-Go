#!/usr/bin/env bash
#
# bootstrap.sh will check for and install any dependencies we have for building and using Agent-Go
#
# Usage: ./bootstrap.sh
#


set -e

# Import our helper functions
. script/utils.sh

prettyTitle "Installing Agent-Go Dependencies"
echo

# What platform are we on?
OS=$(uname -s | tr A-Z a-z)
K8S_VERSION=1.13.4

#
# All our Go related stuff
#

# Is go installed?
if ! checkForInstallation "go"; then
    echoNotify "\nYou do not have Go installed. Please install and re-run bootstrap."
    exit 1
fi

# Is go-junit-report installed?
if ! checkForInstallation "go-junit-report"; then
    echoInfo " Attempting to install 'go-junit-report'"
    go install -mod=vendor github.com/jstemmer/go-junit-report
fi

# Is bats installed?
if ! checkForInstallation "bats"; then
    echoInfo " Attempting to install 'bats'"
    git clone https://github.com/bats-core/bats-core.git && cd bats-core && git checkout tags/v1.1.0 && sudo ./install.sh /usr/local
fi

# Is jq installed?
if ! checkForInstallation "jq"; then
    echoInfo " Attempting to install 'jq'"
    if [ "$(uname -s)" = "Darwin" ]; then
        brew install jq
    else
        sudo apt install jq
    fi
fi
