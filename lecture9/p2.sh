#!/bin/bash
curl -O -L -C - http://debian.xfree.com.ar/debian-cd/current/amd64/iso-cd/debian-mac-10.9.0-amd64-netinst.iso
curl -O https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/SHA256SUMS
cat SHA256SUMS | grep debian-10.9.0-amd64-netinst.iso
shasum -a 256 debian-10.9.0-amd64-netinst.iso
diff <(cat SHA256SUMS |grep debian-10.9.0-amd64-netinst.iso) <(shasum -a 256 debian-10.9.0-amd64-netinst.iso)


