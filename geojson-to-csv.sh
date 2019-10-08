#!/usr/bin/env bash

# Convert one of the files in data/output/analysis_out/final to a CSV
# Requires: jq, csvkit

jq < "$1" -c .features[].properties | in2csv -f ndjson

