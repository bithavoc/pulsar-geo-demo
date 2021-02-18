#!/bin/bash

./ctrl exec pulsar-a bin/pulsar-admin clusters create pulsar-b --url http://pulsar-b:8080 --broker-url pulsar://pulsar-b:6650
./ctrl exec pulsar-a bin/pulsar-admin tenants create geotent -c pulsar-a,pulsar-b
./ctrl exec pulsar-a bin/pulsar-admin namespaces create geotent/geons
./ctrl exec pulsar-a bin/pulsar-admin namespaces set-clusters geotent/geons --clusters pulsar-a,pulsar-b
./ctrl exec pulsar-a bin/pulsar-admin topics create persistent://geotent/geons/geotopic

./ctrl exec pulsar-b bin/pulsar-admin clusters create pulsar-a --url http://pulsar-a:8080 --broker-url pulsar://pulsar-a:6650
./ctrl exec pulsar-b bin/pulsar-admin tenants create geotent -c pulsar-b,pulsar-a
./ctrl exec pulsar-b bin/pulsar-admin namespaces create geotent/geons
./ctrl exec pulsar-b bin/pulsar-admin namespaces set-clusters geotent/geons --clusters pulsar-b,pulsar-a
