#!/bin/bash
lektor="/usr/bin/lektor"
netlify="/usr/bin/netlify"
${lektor} build -O ../_Build
${netlify} deploy -s sofia-perm -p ../_Build -t $(cat ~/.netlify/access.token)
