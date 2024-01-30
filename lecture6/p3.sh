#!/bin/bash
# 当添加大文件或密码并提交够，如何从历史中彻底删除
#  git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch ./lecture6/my_password' --prune-empty --tag-name-filter cat -- --all
#  'git rm --cached --ignore-unmatch ./lecture6/my_password' 这里会删除 匹配文件 并且处理 commit 记录， 也会rm了本地文件
