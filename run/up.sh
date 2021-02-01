#!/usr/bin/env sh
NAMESPACE=$1
if [ -z "${NAMESPACE}" ]; then
  printf "%s\n" "NAMESPACE variable is not given. Please set provide before using this script"
else
  helm install ingress-controller ingress-nginx/ingress-nginx
  helm install ingress-resource ingress-resource
  helm install ${NAMESPACE}-web web
  helm install ${NAMESPACE}-api api
  helm install ${NAMESPACE}-rep rep
  helm install ${NAMESPACE}-mdm mdm
  helm install ${NAMESPACE}-cat cat
  helm install ${NAMESPACE}-vpn vpn
  helm install ${NAMESPACE}-wrk wrk
fi