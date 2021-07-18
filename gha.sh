#!/bin/bash

set -xeu -o pipefail

pwd
ls -la
git status
ls -la "$INPUT_CONF_FILE"

if [[ "$INPUT_JENKINS_CERT" != 'false' ]]; then
  export REQUESTS_CA_BUNDLE="$INPUT_JENKINS_CERT"
fi

jenkins-jobs --conf "$INPUT_CONF_FILE" -p "$INPUT_JENKINS_TOKEN" update "$INPUT_JOBS_FILE"
