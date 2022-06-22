

modify /etc/mail.rc
```
set from=xxxx@gmail.com smtp:=smpt.google.com
set smtp-auth-use=xxx@gmail.com smtp-auth-password=xxxx
set smth-auth=login
```

send email
```
  echo "this is a test email" |mail -s "monitor" aaa@16.3.com
```




