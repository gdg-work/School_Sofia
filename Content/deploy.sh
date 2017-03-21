#!/bin/bash
lektor build -O build
netlify deploy -s sofia-perm -p build -t $(cat ~/.netlify/access.token)
