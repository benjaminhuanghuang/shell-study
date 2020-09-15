


###########################################
# variable
###########################################
USER_NAME= Bob        # if value has space , it should be wrapped in quoate
NAME="Ben Huang"
FAC_COLOR=blue

echo Hi $USER_NAME, your favorite color is $FAC_COLOR.
echo 
###########################################
# parameter
###########################################
USER_NAME=$1

echo Hello $0
echo Hello $USER_NAME
echo Hello $2
echo 


###########################################
# run command
###########################################
echo $(date)
echo "Woringk path is "$(pwd)


###########################################
# if then...elif then
# ==  =  
#  =(==), -lt(<), -le(<=), -eq(==), -ne(!=), -gt(>), -ge(>=)
#  -z(is empty string)
###########################################
COLOR="blue"
if [ $COLOR = "blue1" ]
then
  echo "The color is blue"
else
  echo "The color is not blue"
fi


USER_GUESS=2
COMPUTER=50
if [ $USER_GUESS -lt $COMPUTER ]
then
  echo "You are too low"
elif [ $USER_GUESS -gt $COMPUTER ]
then
  echo "You are too high"
else 
  echo "you are right"
fi


###########################################
# while...do...done
###########################################
COUNT=0
while [ $COUNT -lt 10 ]
do
  echo "COUNT=$COUNT"
  ((COUNT++))
done

###########################################
# for...in...do...done
###########################################
NAMES=$@          # @ are the parameters passed in
for NAME in $NAMES
do
  echo "Hello $NAME"
done


###########################################
# return value
# Command to check the exit code of last command
# $ echo $?
###########################################
exit 100