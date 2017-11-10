#!/bin/bash

oc delete secret hawkular-metrics-account
oc delete secret hawkular-metrics-certificate
oc delete secret hawkular-metrics-secrets
oc delete secret hawkular-cassandra-certificate
oc delete secret hawkular-cassandra-secrets
oc delete secret heapster-secrets
oc delete template hawkular-cassandra-node-dynamic-pv
oc delete template hawkular-cassandra-node-emptydir
oc delete template hawkular-cassandra-node-pv
oc delete template hawkular-cassandra-services
oc delete template hawkular-heapster
oc delete template hawkular-metrics
oc delete template hawkular-support
oc delete sa hawkular
oc delete sa cassandra
oc delete sa heapster
oc delete all --all
