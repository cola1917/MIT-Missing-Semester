#!/bin/bash
# 2>/dev/null 丢弃默认错误输出
# 放弃了 默认错误输出的重定向 输出错误
pidwait()
{
   while kill -0 $1 #循环直到进程结束
   do
   sleep 1
   echo "$1 still exists" 
   done
   ls
}
# test command
# sleep 60 & pidwait $(pgrep -f 'sleep 60')

