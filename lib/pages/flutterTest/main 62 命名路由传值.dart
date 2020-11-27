// // 快捷键： flm
// import 'package:flutter/material.dart';
// import 'package:myapp/page/tabs/FormPage2.dart';
// // import 'package:myapp/main%2050%20StatefulWidget%E7%BB%84%E4%BB%B601.dart';

// import 'package:myapp/page/tabs/HomePage.dart';
// import 'package:myapp/page/tabs/SettingsPage2.dart';
// import 'package:myapp/page/tabs2.dart';
// import 'package:myapp/page/tabs/CategoryPage.dart';
// import 'package:myapp/page/tabs/SearchPage.dart';
// import 'package:myapp/page/tabs/SettingsPage.dart';

// void main() {
//   runApp(MyApp());
// }

// /*
//   时间：2020/6/8 14:58分
//     1、命名路由的使用。
// */

// class MyApp extends StatelessWidget {
//   final routes = {
//     '/home': (context) => HomePage(),
//     '/form': (context) => FormPage2(),
//     '/search': (context) => SearchPage(),

//     // 第一点，使用命名路由传参示例
//     '/setting': (context,{arguments}) => SettingsPage(arguments:arguments),

    
//     '/category': (context) => CategoryPage(),

//     '/setting2':(context,{arguments}) => SettingsPage2(arguments:arguments),
//   };

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       /*
//         时间：2020/6/8 命名路由传值示例。
//         1、定义常量一个路由。
//         2、使用 onGenerateRoute 方法来监听.
//         3、参考视频31.31
//       */

//       home: Tabes2(),

//       // 第二点，使用 onGenerateRoute 的通用代码来监听事件。
//       // 第三点，修改 SettingsPage 页面的 构造函数，传递  arguments 可选参数即可。
//       onGenerateRoute: (RouteSettings settings) {
//         // 统一处理
//         final String name = settings.name;
//         final Function pageContentBuilder = this.routes[name];
//         if (pageContentBuilder != null) {
//           if (settings.arguments != null) {
//             final Route route = MaterialPageRoute(
//                 builder: (context) =>
//                     pageContentBuilder(context, arguments: settings.arguments));
//             return route;
//           }
//         } else {
//           final Route route = MaterialPageRoute(
//               builder: (context) => pageContentBuilder(context));
//           return route;
//         }
//       },
//     );
//   }
// }
