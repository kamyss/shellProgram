echo "这是参数:$*";
echo "参数的个数有：$#";
echo "所有的参数有：$@";
echo "这个的进程号：$$";
echo "使用shell显示当前选项$-";
for file in `ls /etc`
do
	echo $file
done
#变量的使用
your_name='zjh';
echo $your_name;
#只读变量的使用
my_age='26';
readonly my_age;
my_age='26';
my_sex='man';
echo $my_age;
#删除变量(只读变量无法释放)
unset my_sex;
echo $my_sex;
#字符串类型，以及变量拼接字符串的使用
my_name='zjh'
#第一种拼接方式
greeting_1='hey boy my name is'$my_name' hello ';
greeting_2=" hey boy my name is ${my_name} hello";
echo $greeting_1 $greeting_2;
#获取字符串的长度
the_string='abcd';
echo ${#the_string};
#不加花括号的
#echo $#the_string;会出错
#对字符串的提取和php提取类似从第6个位置截取5个字符
my_string='hello world';
echo ${my_string:6:5};
#查找字符串的位置比较特殊要注意
string='the robots is exsite';
echo `expr index "$string" t`;

