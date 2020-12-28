folder="dump-071816.2300"
echo "* Recover dump file : "$folder
mongorestore --db MyDB --drop ~/Downloads/$folder/dump/MyDB

