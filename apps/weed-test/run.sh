#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Copyright 2026 Peter Tribble
#
# launch SeaweedFS
#
mkdir -p /var/weed-data
env /opt/tribblix/seaweedfs/bin/weed mini -dir=/var/weed-data
