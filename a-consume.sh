#!/bin/bash
forever=0
./ctrl exec pulsar-a bin/pulsar-client consume geotent/geons/geotopic -s "a-consumer" -p Earliest -n $forever
