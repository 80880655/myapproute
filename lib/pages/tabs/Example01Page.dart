import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Example01Page extends StatefulWidget {
  @override
  _Example01PageState createState() => _Example01PageState();
}

class _Example01PageState extends State<Example01Page> {
  List<Map> listImage = [
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SwiperPage 轮播图-例子01')),
        // body: Swiper(
        //   itemCount: 3,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Image.network('https://www.itying.com/images/flutter/2.png');
        //   },
        //   pagination: SwiperPagination(),
        //   control: SwiperControl(),
        // ));

        body: Swiper(
          itemCount: listImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              listImage[index]['url'],
              // 平铺
              fit: BoxFit.fill,
            );
          },

          // 分页器，底部的分页器
          pagination: SwiperPagination(),
          // 左右的箭头
          control: SwiperControl(),
        ));
  }
}
