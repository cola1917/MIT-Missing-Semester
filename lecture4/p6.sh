#!/bin/bash
# ignore
curl 'https://stats.wikimedia.org/EN/TablesWikipediaZZ.htm#wikipedians' \
    |sed -n "/table1/,/<\/table>/p" \
    |grep "<tr" | sed "1,12d"|head -n -3 \
    |sed -E 's/(<[^>]*>)+/ /g' \
    |sed 's/ &nbsp;/ -/g' \
    |sed 's/&nbsp;//g' > data