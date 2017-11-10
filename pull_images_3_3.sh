#!/bin/bash

# script to import all images needed during the install when ansible fails to pull

docker pull registry.access.redhat.com/openshift3/ose-haproxy-router:v3.3.1.14
docker pull registry.access.redhat.com/openshift3/ose-deployer:v3.3.1.14
docker pull registry.access.redhat.com/openshift3/ose-sti-builder:v3.3.1.14
docker pull registry.access.redhat.com/openshift3/ose-docker-builder:v3.3.1.14
docker pull registry.access.redhat.com/openshift3/ose-pod:v3.3.1.14
docker pull registry.access.redhat.com/openshift3/ose-docker-registry:v3.3.1.14

docker pull registry.access.redhat.com/openshift3/logging-deployer:3.3.1
docker pull registry.access.redhat.com/openshift3/logging-elasticsearch:3.3.1
docker pull registry.access.redhat.com/openshift3/logging-kibana:3.3.1
docker pull registry.access.redhat.com/openshift3/logging-fluentd:3.3.1
docker pull registry.access.redhat.com/openshift3/logging-curator:3.3.1
docker pull registry.access.redhat.com/openshift3/logging-auth-proxy:3.3.1
docker pull registry.access.redhat.com/openshift3/metrics-deployer:3.3.1
docker pull registry.access.redhat.com/openshift3/metrics-hawkular-metrics:3.3.1
docker pull registry.access.redhat.com/openshift3/metrics-cassandra:3.3.1
docker pull registry.access.redhat.com/openshift3/metrics-heapster:3.3.1
