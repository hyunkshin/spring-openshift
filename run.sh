#!/bin/sh - 

set -x
export KUBERNETES_NAMESPACE=myproject
export KUBERNETES_MASTER=https://okd:8443
export DOCKER_HOST=tcp://okd:2375

mvn package fabric8:deploy -Popenshift -DskipTests
