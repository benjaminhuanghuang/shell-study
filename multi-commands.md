- ;

  分号（;）是命令的结束符，使得一行可以放置多个命令，上一个命令执行结束后，再执行第二个命令。
  ```
    $ clear; ls
  ```
  使用分号时，第二个命令总是接着第一个命令执行，不管第一个命令执行成功或失败。

- &&
  ```
  $ cat filelist.txt && ls -l filelist.txt
  ```
  如果Command1命令运行成功，则继续运行Command2命令。

- ||
  ```
  $ makdir foo || mkdir bar
  ```
  如果Command1命令失败，才会继续运行Command2命令。

