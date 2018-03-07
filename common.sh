#shell编程函数的额使用哦
getTotalPrice(){
	echo '获取总的价格函数';
}
getTotalPrice;
#函数带参数的测试
getAllPrice(){
	echo "商品的单价是：$1";
	echo "商品的数量是：$2";
	totalPrice=$[$1*$2];
	echo "总商品价格：$totalPrice";
	return $totalPrice;
}
getAllPrice 5 4;
echo "总价格是：$?";