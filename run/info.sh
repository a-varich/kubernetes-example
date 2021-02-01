#!/usr/bin/env sh

watch -n1 "printf '%s' 'CONTEXT: ';
kubectl config current-context;printf '\n';
printf '%s\n' 'NAMESPACES'
kubectl get namespace;printf '\n';
printf '%s\n' 'NODES'
kubectl get node -o wide;printf '\n';
printf '%s\n' 'PODS'
kubectl get pod -o wide;printf '\n';
printf '%s\n' 'SERVICES AND INGRESS'
kubectl get svc,ingress -o wide;printf '\n';
printf '%s\n' 'SECRETS AND CONFIGMAPS'
kubectl get secret,configmap -o wide;printf '\n';
printf '%s\n' 'ETC.'
kubectl get job,cronjob,deployment,rs,pv,pvc -o wide"


