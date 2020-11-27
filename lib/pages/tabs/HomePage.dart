import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/IDataProvider.dart';
import 'package:myapproute/pages/class/IGenericDataProvider.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';
import 'package:myapproute/pages/tabs/IDataWidget.dart';
import 'package:myapproute/pages/tabs/IGenericDataWidget.dart';

class HomePage extends StatefulWidget {
  // HomePage({Key key}) : super(key: key);

  final arguments;
  HomePage({this.arguments});

  @override
  _HomePageState createState() => _HomePageState();
}

/* 
  时间：2020/6/2 16：39分
  实现目标：
    1、实现目标页面的跳转。
    2、使用  Navigator  组件。
*/

class _HomePageState extends State<HomePage> {
  // 时间：2020/7/1 10:40  MVP传递数据的方式。
  final data = TransferDataEntity(id: "001", name: "张三丰", age: 18);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      // 垂直居中
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: <Widget>[
            RaisedButton(
                child: Text('search跳转Search页面'),
                onPressed: () {
                  Navigator.pushNamed(context, "/search", arguments: {
                    "id": "1233455 Test SearchPage页面",
                  });
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              ),

              // 时间：2020/6/8 16:04分
              // 使用命名路由来实现传值的过程
              RaisedButton(
                child: Text('setting命名路由传值'),
                onPressed: () {
                  // 命名路由传值和页面跳转
                  Navigator.pushNamed(context, "/setting", arguments: {
                    "id": "gaofeng222",
                  });

                  // Navigator.pushNamed(context, "/setting");
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              ),

              RaisedButton(
                child: Text('SecondPage.dart页面'),
                onPressed: () {
                  // Navigator.pushNamed(context, "/second",arguments: {
                  //   "id": "gaofeng444444444",
                  // });

                  // 为空都不行，为null也会报错。 随便传入什么都可以。
                  // Navigator.pushNamed(context, "/second",arguments: {'as':'null'});

                  Navigator.pushNamed(context, "/second");
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              ),

              RaisedButton(
                child: Text('注册页面'),
                onPressed: () {
                  Navigator.pushNamed(context, "/login", arguments: {
                    "id": "gaofeng444444444",
                  });
                },
              ),

              RaisedButton(
                child: Text('AppBarDemo'),
                onPressed: () {
                  Navigator.pushNamed(context, "/appBarDemo");
                },
              ),

              // 时间：2002/6/9 22:38分 AppBarDemo 演示。
              RaisedButton(
                child: Text('AppBar中增加TabBar的Demo'),
                onPressed: () {
                  Navigator.pushNamed(context, "/appBarTabBarDemo");
                },
              ),

              RaisedButton(
                // child: Text('TabBarControllerPage-定义顶部tab切换'),
                child: Text('定义顶部tab切换'),
                onPressed: () {
                  Navigator.pushNamed(context, "/tabBarController");
                },
              ),
              RaisedButton(
                child: Text('按钮组件的介绍'),
                onPressed: () {
                  Navigator.pushNamed(context, "/button");
                },
              ),

              RaisedButton(
                child: Text('文本textField组件'),
                onPressed: () {
                  Navigator.pushNamed(context, "/textField");
                },
              ),
              RaisedButton(
                child: Text('表单演示页面20206/16'),
                onPressed: () {
                  Navigator.pushNamed(context, "/loginText");
                },
              ),

              RaisedButton(
                child: Text('CheckBox演示页面'),
                onPressed: () {
                  Navigator.pushNamed(context, "/checkBox");
                },
              ),
              RaisedButton(
                child: Text('Radio/switch演示页面'),
                onPressed: () {
                  Navigator.pushNamed(context, "/radioDemo");
                },
              ),
              RaisedButton(
                child: Text('注册页面综合练习'),
                onPressed: () {
                  Navigator.pushNamed(context, "/registration");
                },
              ),
              RaisedButton(
                child: Text('日期组件练习'),
                onPressed: () {
                  Navigator.pushNamed(context, "/datePage");
                },
              ),
              RaisedButton(
                child: Text('轮播图 swiper'),
                onPressed: () {
                  Navigator.pushNamed(context, "/swiperPage");
                },
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                child: Text('dialog 组件 示例'),
                disabledColor: Colors.grey,
                disabledTextColor: Colors.white,
                disabledElevation: 0,
                // 圆角大小
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () {
                  Navigator.pushNamed(context, "/dialogPage");
                },
              ),

              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('MVP模式传值Demo1'),
                onPressed: () {
                  Navigator.pushNamed(context, "/dataTransferByConstructorPage",
                      arguments: this.data);
                },
              ),

              // //时间：2020/7/1 12:07 InheritedWidget传值Demo2
              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('InheritedWidget传值Demo2'),
                onPressed: () {
                  // Navigator.pushNamed(context, "/iDataWidget", arguments: this.data);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IDataProvider(
                                child: IDataWidget(),
                                data: data,
                              )));
                },
              ),

              RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).accentColor,
                child: Text('InheritedWidget泛型传值Demo3'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IGenericDataProvider<TransferDataEntity>(
                                // child: IDataWidget(),
                                child: IGenericDataWidget(),
                                data: data,
                              )));
                },
              ),


  ]
        ),
      ],
    );
  }
}
