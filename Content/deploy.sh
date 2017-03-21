#!/bin/bash
netlify deploy -s sofia-perm -p build -t $(cat ~/.netlify/access.token)
