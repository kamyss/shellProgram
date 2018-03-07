#数组的定义
my_array=(1 2 3 4 5 6);
my_array[6]=7;
echo ${my_array[6]};
#打印出数组的所有元素
echo ${my_array[@]};
#获取数组长度的方法
echo ${#my_array[@]};
#或者
echo ${#my_array[*]}
#字符串截取有用的八种方法
# #号截取删除左边字符串，保留右边字符串取全部字符串
var='http://www.jjdhk.cn';
echo ${var#*//};
# ##号截取删除左边字符串，保留右边字符串取全部字符串
var2='http://www.jjdhk.cn/index';
echo ${var2##*/}
#如果是要保留左边的请把#号替换成%号
#提取字符串
#从哪个位置到结束
echo ${var:1};
#从右边开始截取
echo ${var:0-2:2};
#从右边第几个位置开始到结束
echo ${var:0-3};
#输出字符串长度也可以使用length
expr length "$var";
#动态输出可以使用expr
expr 5 \*  6;
expr 5 + 6;
#遍历数组(循环的使用)
for value in "${my_array[@]}";
do
	echo $value;
done
#if 条件的判断
if [ -n "$var" ]; then
echo '有值'
else
echo '没有值'
fi
#测试数组下标变量要不要带$符号问题数组必须{}花括号里面的值不带$
i=2;
echo ${my_array[i]};

