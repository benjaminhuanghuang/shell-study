#!/bin/bash
#
# Positional arguments
#
# $@ vs $* : http://c.biancheng.net/view/807.html
#
# run arguments.sh cat dog book

echo '$0 is' "$0"
echo '$1 is' "$1"
echo '$2 is' "$2"
echo '$@ is' "$@"
echo '$* is' "$*"
