for ((i=1024; i<=20000; i++))
do
    echo "" >> /tmp/httpd_port_test.log
    echo "Checking $i" >> /tmp/httpd_port_test.log
    /etc/init.d/httpd stop
    sed -i "s/^Listen [0-9]*$/Listen $i/g" /etc/httpd/conf/httpd.conf
    /etc/init.d/httpd start
    if [ "$?" -ne 0 ]
        then
        echo "ERROR: port $i failed."
        echo "ERROR: port $i failed." >> /tmp/httpd_port_test.log
        else
        echo "Success: port $i" >> /tmp/httpd_port_test.log
    fi
done