

for (( c=1; c <=5; c++)); do
  echo "Welcome $c times"
done

# create files 
cd ~
mkdir shell_tut
cd shell_tut

for ((i=0; i<10; i++))
do
    touch test_$i.txt
done
