#!/bin/bash
DEPLOY_ACCESS_KEY=$1
DEPLOY_API_URL=$2
DEPLOY_VERSION=$3
PROJECT_NAME=amis-editor
curl -X PUT \
    -H "content-type: application/json" \
    -H "Cookie: KuboardUsername=wertycn; KuboardAccessKey=${DEPLOY_ACCESS_KEY}" \
    -d '{"kind":"deployments","namespace":"debug-app","name":"'${PROJECT_NAME}'","images":{"hkccr.ccs.tencentyun.com/debug.icu/'${PROJECT_NAME}'":"hkccr.ccs.tencentyun.com/debug.icu/'${PROJECT_NAME}':'${DEPLOY_VERSION}'"}}' \
    "${DEPLOY_API_URL}"