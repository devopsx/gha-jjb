#!/bin/bash

set -xeu -o pipefail

jenkins-jobs --conf "$INPUT_CONF_FILE" -p "$INPUT_TOKEN" update "$INPUT_JOBS_FILE"
