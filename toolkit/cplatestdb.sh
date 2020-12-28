# mount dir on vm1 to a dir on local computer
sudo mount -t nfs -o resvport vm1:/export/home /private/nfs

# enter the mount point on local computer
cd /private/nfs/dump-restore/prod

# find out the latest dump file
dbfile=`ls -lrt | tail -1 | awk '{print $9}'`
echo "Copy "  == $dbfile ==

# copy dump from mount point to a local dir
cp -f $dbfile ~/Downloads 

cd ~/Downloads
# un-mount mount point
sudo umount /private/nfs

# un-tar the dump file
tar xzvf $dbfile

# restore dump files to local monog db
folder=${dbfile%.*}
#echo "folder is "  == $folder ==
mongorestore --db MyDB --drop ~/Downloads/$folder/dump/MyDB
