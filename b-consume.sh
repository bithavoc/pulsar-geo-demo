#!/bin/bash
forever=0
./ctrl exec pulsar-b bin/pulsar-client consume geotent/geons/geotopic -s "b-consumer" -p Earliest -n $forever
