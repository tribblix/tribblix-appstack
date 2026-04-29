#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Copyright 2026 Peter Tribble
#
# launch etcd
#
# an appstack zone doesn't have the loopback
# so we need to explicitly listen on the configured network
#
ZNAME=$(/sbin/zonename)
ZIP=$(/sbin/ipadm show-addr -p -o addr)
ZIP=${ZIP%%/*}
PCLIENT=2379
PSERVER=2380
C_URL="http://${ZIP}:${PCLIENT}"
S_URL="http://${ZIP}:${PSERVER}"

/opt/tribblix/etcd/bin/etcd --name "${ZNAME}" \
	--listen-client-urls "${C_URL}" \
	--advertise-client-urls "${C_URL}" \
	--listen-peer-urls "${S_URL}" \
	--initial-advertise-peer-urls "${S_URL}" \
	--initial-cluster "${ZNAME}=${S_URL}"
