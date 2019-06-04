#!/bin/bash

user="$1"
user="${user:=pontifex_pl}"

last_status_url=$(lynx -dump https://twitter.com/$user \
    | grep -i "$user/status/" \
    | head -1 \
    | awk '{print $2}')

lynx -dump "$last_status_url" \
    | grep 'Twitter:' -m1 -A4 \
    | tr -d '\n' \
    | sed -e 's/[^"]*"//' -e 's/".*//' \
    | tr -s ' '

echo