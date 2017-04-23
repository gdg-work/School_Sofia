#!/bin/bash
lektor="/usr/bin/lektor"
netlify="/usr/bin/netlify"

rm -r ../_Build/*
${lektor} clean -O ../_Build
${lektor} build -O ../_Build
${netlify} deploy -s sofia-perm -p ../_Build -t $(cat ~/.netlify/access.token)
