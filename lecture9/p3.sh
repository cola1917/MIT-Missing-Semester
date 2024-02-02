#!/bin/bash
echo "hello world" > afile #创建一个文件
openssl aes-256-cbc -salt -in afile -out secfile #加密文件
enter aes-256-cbc encryption password:***
Verifying - enter aes-256-cbc encryption password:***
diff <(hexdump afile) <(hexdump secfile)
cat afile
# hello world
cat secfile
# Salted__|O      !Vw/-25R#.%
openssl aes-256-cbc -d -in secfile -out notsafefile
cmp afile notsafefile
echo $?
