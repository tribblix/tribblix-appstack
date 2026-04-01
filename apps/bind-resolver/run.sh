#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Copyright 2026 Peter Tribble
#
# launch named
#
# the TRIBsvc-bind9 package puts in a sample configuration file
# but doesn't make it active, so do that here
#
if [ ! -f /etc/named.conf ]; then
    cp /etc/named-cache.conf /etc/named.conf
fi
/usr/sbin/named
