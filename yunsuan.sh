#关shell编程运算符的案例
num=3;
price=4;
totalPrice=`expr $num \* $price`;
standardPrice=12;
echo $totalPrice;
if [ $totalPrice == $standardPrice ]
 then
echo '标准价格';
else if [ $totalPrice -gt $standardPrice ]
 then
	echo '太贵了';
else 
echo '促销价';
	fi
fi
#通过这个进行输入
#read name;
#echo "${name}";
#开启转译，显示换行
echo -e "lala \n haoba"
#关于系统函数的执行
echo `date`;
#自动转译的输出函数
printf "hello \n world";
#加减乘除还可以这样做
totalPrice2=$[$num*$price];
echo $totalPrice2;
