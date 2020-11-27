// 快捷键： flm
import 'package:flutter/material.dart';
import 'package:myapproute/pages/tabs.dart';
// import 'package:myapproute/routes/Routes.dart';
import 'routes/Routes.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

/*
  时间：2020/6/8 14:58分
    1、命名路由的使用。
*/

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],

      /*
        时间：2020/6/8 命名路由传值示例； 将代码拆分成几部分。

        1、需要引入 routes文件夹下面的routes.dart文件
      */
      theme: ThemeData.light(),

      // 去掉 debug 的图标 
      debugShowCheckedModeBanner: false,


      // Tabes2 也可以省略掉，全部放在 routes.dart 文件中; 使用initialRoute代替
      // home: Tabes(),

      // title: 'XXXXX',
      initialRoute: '/',  // 初始化的时候加载的路由，看 routes.dart 中的文件即可。

      // initialRoute: '/appBarTabBarDemo',

      onGenerateRoute: onGenerateRoute,
    );
  }
}
