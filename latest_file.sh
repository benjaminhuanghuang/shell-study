# find out the latest dump file
#
# -r reverse order
# -t order by time
# tail -1 : the last one
# awk '{print $9}  the 9th column in the output
dbfile=`ls -lrt | tail -1 | awk '{print $9}'`
echo "Copy "  == $dbfile ==