#!/bin/bash
# show
pgrep -af 'sleep 10000'
# kill
pkill -f 'sleep 10000'