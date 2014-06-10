#!/bin/bash

for i in {1..$2}
do
        wget -qO - "https://www.youtube.com/results?search_query=$1&page=$2" | grep "a href=\"/watch" | tr -d " " | cut -c 18-28 | xargs youtube-dl
done
