#!/bin/bash
find . -type f -mmin -60 -print0 | xargs -0 ls -lt