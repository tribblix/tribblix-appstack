#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Copyright 2026 Peter Tribble
#
# appstack config
#

#
# 3 subcommands:
#
# verify - run before any work, check all arguments are provided
# and are valid
#
# create - run once verified, builds a zone configuration
#
# configure - run once the zone has been installed, allows manipulation
# of the installed image
#

bail() {
    echo "ERROR: $1"
    exit 1
}

case $1 in
    verify|create|configure)
	:
	;;
    *)
	bail "invalid subcommand"
	;;
esac
