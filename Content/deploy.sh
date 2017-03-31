#!/bin/bash
lektor="/usr/bin/lektor"
netlify="/usr/bin/netlify"

${lektor} clean -O build
${lektor} build -O build
${netlify} deploy -s sofia-perm -p build -t $(cat ~/.netlify/access.token)
