import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Example04Page extends StatefulWidget {
  @override
  _Example04PageState createState() => _Example04PageState();
}

class _Example04PageState extends State<Example04Page> {
  List<Map> listImage = [
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SwiperPage 轮播图-例子04')),
        body: Swiper(
          itemCount: listImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              listImage[index]['url'],
              fit: BoxFit.fill,
            );
          },
          pagination: SwiperPagination(),
          control: SwiperControl(),
        ));
  }
}
