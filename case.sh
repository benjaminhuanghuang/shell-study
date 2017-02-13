#!/bin/bash

echo "Press a key"
read key
case "$key" in
    [A-Z]) echo "Uppercase letter";;
    [a-z]) echo "Lowercase letter";;
    [0-9]) echo "Digit";;
    *) echo "Punctuation, whitespace or other";;
esac
    