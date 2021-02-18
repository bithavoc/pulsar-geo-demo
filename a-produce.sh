#!/bin/bash
MSG="hello from a $(date)"
echo "producing message: $MSG"
./ctrl exec pulsar-a bin/pulsar-client produce geotent/geons/geotopic -m "$MSG"