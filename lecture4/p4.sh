#!/bin/bash
# sed  不能用 \d
# 用时最多的
cat starttime.txt | grep "systemd\[1\]" | sed -E "s/.* in ([0-9]+\.[0-9]+)s\.$/\1/" | sort -nr | head -1
# 用时最少的
cat starttime.txt | grep "systemd\[1\]" | sed -E "s/.* in ([0-9]+\.[0-9]+)s\.$/\1/" | sort | head -1
# 平均值
cat starttime.txt | grep "systemd\[1\]" | sed -E "s/.* in ([0-9]+\.[0-9]+)s\.$/\1/" | awk '{sum += $1} END {print sum/NR}'
# 中位数
cat starttime.txt | grep "systemd\[1\]" | sed -E "s/.* in ([0-9]+\.[0-9]+)s\.$/\1/" | sort | paste -sd' ' | awk '{print ($5+$6)/2}'