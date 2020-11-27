import 'package:flutter/material.dart';

// 时间：2020/5/11 14:42 声明一个 Product 类
class Product {
  // 商品标题
  final String title;
  // 商品描述
  final String description;

  Product(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
      title: '导航的数据传递和接收',
      home: ProductList(
          // generate 生成
          prodcuts: List.generate(
        // 数量是 20个
        20,
        (i) => Product('XX:商品 $i', 'description: 商品详情,编号 $i'),
      )),
    ),
  );
}

class ProductList extends StatelessWidget {
  // 接收参数
  final List<Product> prodcuts;

  // 构造函数, 增加 @required 意义是必须的参数, super(key:key) 为父类的方法
  ProductList({Key key, @required this.prodcuts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        // 创建多少个，直接使用 prodcuts.length
        itemCount: prodcuts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Data:' + prodcuts[index].title),
            // onTap 响应事件，跳转到下一个页面
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  
                  // 新建一个页面 ProductDetail(), 传递序号
                  builder: (context) =>
                      new ProductDetail(product: prodcuts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  // 构造函数
  ProductDetail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}
