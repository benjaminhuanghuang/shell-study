BEGIN {
  FS=",";
  template="email_template.txt";
  output="acceptance";
  getline;
  NR=0;
}

{
  # 从输入文件中读取关联字段
  firstname=$1;
  lastname=$2;
  email=$3;
  title=$4;

  # 设置输出文件名
  outfile=(output NR ".txt");
  # 从模板中读取一行，替换特定字段，
  # 并打印结果到输出文件。
  while ( (getline ln &lt; template) &gt; 0 )
  {
    sub(/{firstname}/,firstname,ln);
    sub(/{lastname}/,lastname,ln);
    sub(/{email}/,email,ln);
    sub(/{title}/,title,ln);
    print(ln) &gt; outfile;
  }
  # 关闭模板和输出文件，继续下一条记录
  close(outfile);
  close(template);
}