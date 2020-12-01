#!/usr/bin/env bash

NAMESPACE=${NAMESPACE:-test-integration}

echo "Running integration tests on wire-server"

CHART=wire-server-integration
helm test --logs -n "${NAMESPACE}" "${NAMESPACE}-${CHART}" --timeout 600s
