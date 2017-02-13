#!/bin/bash

# 大括号扩展： $(commands) 会展开为命令commands的输出结果。并且允许嵌套使用，所以commands中允许包含子大括号扩展。
# 反撇好扩展：将commands扩展为命令commands的输出结果。不允许嵌套。


files="$(ls)"
web_files=`ls public_html`
echo "$files"      # we need the quotes to preserve embedded newlines in $files
echo "$web_files"  # we need the quotes to preserve newlines 
X=`expr 3 * 2 + 4` # expr evaluate arithmatic expressions. man expr for details.
echo "$X"