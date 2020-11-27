import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Example03Page extends StatefulWidget {
  @override
  _Example03PageState createState() => _Example03PageState();
}

class _Example03PageState extends State<Example03Page> {
  List<Map> listImage = [
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SwiperPage 轮播图-例子02')),
        body: Column(
          children: <Widget>[
            Container(
                // height: 230.0,
                // width: double.infinity,
                child: AspectRatio(
              // 高宽度比例
              aspectRatio: 16 / 9,
              child: Swiper(
                itemCount: listImage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    listImage[index]['url'],
                    // 平铺
                    fit: BoxFit.fill,
                  );
                },
                // 分页器，底部的分页器
                pagination: SwiperPagination(


                  // 2020/6/17 15:29
                  // // 分页器与容器边框的距离
                  // margin: EdgeInsets.all(20.0),


                ),
                // 左右的箭头
                control: SwiperControl(),
                // 无限循环
                loop: true,
                // 自动轮播开关
                autoplay: true,

                // 点击某一个轮播的时候发生
                onTap: (int) {
                  print(int);
                },
              ),
            )),
            Container(
              child: Text('文本内容'),
            )
          ],
        ));
  }
}
