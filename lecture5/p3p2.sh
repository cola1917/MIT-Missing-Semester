#!/bin/bash
# 获取最常用的十条命令
history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10
# 没去修起别名
