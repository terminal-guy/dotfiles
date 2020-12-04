#!/usr/bin/env bash
cmd="dmenu"

while [ -z "$query" ]; do
query=$(echo "" | $cmd -p "  $engine") || exit
done

firefox --newtab --search "$query"
