#!/usr/bin/env sh
NAMESPACE=$1

if [ -z "${NAMESPACE}" ]; then
  printf "%s\n" "NAMESPACE variable is not given. Please set provide before using this script"
else
  helm uninstall ${NAMESPACE}-web ${NAMESPACE}-api ${NAMESPACE}-rep ${NAMESPACE}-mdm ${NAMESPACE}-cat ${NAMESPACE}-vpn ${NAMESPACE}-wrk ingress-controller
fi
