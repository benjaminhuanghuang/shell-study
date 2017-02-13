#!/bin/bash
#file name: printf.sh

# -5s : left align, 5 char width, string type
printf "%-5s %-10s %-4s\n" No Name Mark
# float, 2 decimal
printf "%-5s %-10s %-4.2f\n" 1 Sarath 80.3456
printf "%-5s %-10s %-4.2f\n" 2 James 90.9989
printf "%-5s %-10s %-4.2f\n" 3 Jeff 77.564