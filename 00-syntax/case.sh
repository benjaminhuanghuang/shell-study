#!/bin/bash

echo "Press a key"
read key
case "$key" in
    [A-Z]) echo "Uppercase letter";;
    [a-z]) echo "Lowercase letter";;
    [0-9]) echo "Digit";;
    *) echo "Punctuation, whitespace or other";;
esac
    

case "$AGE" in
    [1-9]) echo "You are quite young";;
    [5-9]) echo "Time for elementary school";;
    1[0-9]) echo "Time of for middle school";;
    [2-9][0-9]) echo "You are an adult";;
    *) echo "That doesn't seem to be an age";;
esac
        