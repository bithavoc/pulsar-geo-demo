#!/bin/bash
MSG="hello from b $(date)"
echo "producing message: $MSG"
./ctrl exec pulsar-b bin/pulsar-client produce geotent/geons/geotopic -m "$MSG"
