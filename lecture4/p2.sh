#!/bin/bash
# 第一步
cat /usr/share/dict/words
# 过滤单词
cat /usr/share/dict/words | grep -E "^([^a]*a){3}.*[^'s]$"
# 统计
wc -l
# 转换大小写 
tr "[:lower:]" "[:upper:]"
# 统计结尾单词, 这里统计少的可以用head 看开头  或者 最后一个sort 可以 -nr 降序排列
cat /usr/share/dict/words | grep -E "^([^a]*a){3}.*[^'s]$" | tr "[:upper:]" "[:lower:]" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq -c | sort | tail -n3
# 存在多少种结尾
cat /usr/share/dict/words | grep -E "^([^a]*a){3}.*[^'s]$" | tr "[:upper:]" "[:lower:]" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq | wc -l
# 生成所有组合
./script.sh > all.txt
# 生成words中所有结尾
cat /usr/share/dict/words | grep -E "^([^a]*a){3}.*[^'s]$" | tr "[:upper:]" "[:lower:]" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq > occurance.txt
# 对比  <() 命令输出作为文件输入  给diff
diff --unchanged-group-format='' <(cat occurance.txt) <(cat all.txt) | wc -l