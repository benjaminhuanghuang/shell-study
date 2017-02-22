
# connect string
your_name="ben"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"

echo $greeting $greeting_1

# get string length
string="abcd"
echo ${#string}  # 4

# sub string
string="alibaba is a great company"
echo ${string:1:4} # liba

string="alibaba is a great company"
echo `expr index "$string" is` # find location of "is" in string


#####  Replace
foo="I'm a cat."
echo ${foo/cat/dog}  # prints "I'm a dog."

# 使用双斜线替换所有匹配的字符串
foo="I'm a cat, and she's cat."
echo ${foo/cat/dog}   # prints "I'm a dog, and she's a cat."
echo ${foo//cat/dog}  # prints "I'm a dog, and she's a dog."