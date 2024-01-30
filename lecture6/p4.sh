#!/bin/bash
# git stash
# doc link https://git-scm.com/docs/git-stash/zh_HANS-CN
# 1 当pull冲突时，将工作存到脏目录中，然后pull，在git stash pop
# 2 类似 存到脏目录后，可以进行其他工作，再pop
# 3 可以将工作分为两部分进行提交，先将准备提交的工作add到暂存，再将第二部分工作git stash 再编辑第一部分 后提交 然后放出第二部分 进行编辑
