# find out the latest dump file
#
# -r reverse order
# -t order by time
dbfile=`ls -lrt | tail -1 | awk '{print $9}'`
echo "Copy "  == $dbfile ==