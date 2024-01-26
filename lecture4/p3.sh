#!/bin/bash
# sed s/REGEX/SUBSTITUTION/ input.txt > input.txt 原地替换
# 风险，sed命令读取完内容后会直接清空 input 文件
# -i.bak 备份
sed -i.bak s/REGEX/SUBSTITUTION/ input.txt