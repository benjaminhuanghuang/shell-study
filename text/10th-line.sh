awk 'NR == 10' file.txt

# print 10th line
sed -n '10p' file.txt

# print 10 - 20 lines
sed -n "10,20p" filename

# +10 here (with plus sign) means the tail command starts with the 10th line of 
# file file.txt and the output is piped redirected to head which extracts the first 
# line, which is exactly the 10-th line of the file.
tail -n +10 file.txt | head -1
