import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myapproute/routes/Routes.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SwiperPage 轮播图')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // //crossAxisAlignment 无效
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              RaisedButton(
                child: Text('轮播图 swiper example01'),
                onPressed: () {
                  Navigator.pushNamed(context, "/example01Page");
                },
              ),

              SizedBox(height:20.0),
              RaisedButton(
                child: Text('轮播图 swiper example02'),
                onPressed: () {
                  Navigator.pushNamed(context, "/example02Page");
                },
              ),

              SizedBox(height:20.0),
              RaisedButton(
                child: Text('轮播图-控制按钮 swiper example03'),
                onPressed: () {
                  Navigator.pushNamed(context, "/example03Page");
                },
              ),

              SizedBox(height:20.0),
              RaisedButton(
                child: Text('轮播图 swiper example04'),
                onPressed: () {
                  Navigator.pushNamed(context, "/example04Page");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
