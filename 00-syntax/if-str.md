##  string testing

[ string ]：如果string不为空（长度大于0），则判断为真。

[ -n string ]：如果字符串string的长度大于零，则判断为真。

[ -z string ]：如果字符串string的长度为零，则判断为真。

[ string1 = string2 ]：如果string1和string2相同，则判断为真。

[ string1 == string2 ] 等同于[ string1 = string2 ]。

[ string1 != string2 ]：如果string1和string2不相同，则判断为真。

[ string1 '>' string2 ]：如果按照字典顺序string1排列在string2之后，则判断为真。

[ string1 '<' string2 ]：如果按照字典顺序string1排列在string2之前，则判断为真。

注意，test命令内部的>和<，必须用引号引起来（或者是用反斜杠转义）。否则，它们会被 shell 解释为重定向操作符。


```
  read input
  
  if [[ $input == 'y' || $input == 'Y' ]];then
      echo "YES"
  else
      echo "NO"
  fi
```