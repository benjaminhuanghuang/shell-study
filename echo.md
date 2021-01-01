- -n参数
默认情况下，echo输出的文本末尾会有一个回车符。-n参数可以取消末尾的回车符，使得下一个提示符紧跟在输出内容的后面。
```
  $ echo a;echo b
  a
  b
``
```
  $ echo -n a;echo b
  ab
``

- -e参数
-e参数会解释引号（双引号和单引号）里面的特殊字符（比如换行符\n）。如果不使用-e参数，即默认情况下，引号会让特殊字符变成普通字符，echo不解释它们，原样输出。

```
  $ echo "Hello\nWorld"
  Hello\nWorld

  # 双引号的情况
  $ echo -e "Hello\nWorld"
  Hello
  World

  # 单引号的情况
  $ echo -e 'Hello\nWorld'
  Hello
  World
```