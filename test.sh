echo "这是参数:$*";
echo "参数的个数有：$#";
echo "所有的参数有：$@";
echo "这个的进程号：$$";
echo "使用shell显示当前选项$-";
for file in `ls /etc`
do
	echo $file
done