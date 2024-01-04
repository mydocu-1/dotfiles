#!/bin/bash

readonly DIR="$(realpath $(dirname $0))"

go install github.com/mydocu-1/installer@latest

$(go env GOPATH)/bin/installer --config="${DIR}/config.yaml"

