#!/bin/bash

set -xeu -o pipefail

if [[ "$INPUT_JENKINS_CERT" != 'false' ]]; then
  export REQUESTS_CA_BUNDLE="$INPUT_JENKINS_CERT"
fi

jenkins-jobs --conf "$INPUT_INI_FILE" -p "$INPUT_JENKINS_TOKEN" update -r "$INPUT_JOBS_DIR"
