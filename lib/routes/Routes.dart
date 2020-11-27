/* 
  时间：2020/6/8 16:53分

  1、抽离代码。
  2、将所有的 import 全部放置在这个页面中。
  3、当前测试，尝试使用3个页面。
  
*/

import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';
import 'package:myapproute/pages/tabs/AppBarDemo.dart';
import 'package:myapproute/pages/tabs/AppBarTabBarDemo.dart';
import 'package:myapproute/pages/tabs/ButtonPage.dart';
import 'package:myapproute/pages/tabs/CheckBoxDemo.dart';
import 'package:myapproute/pages/tabs/DataTransferByConstructorPage.dart';
import 'package:myapproute/pages/tabs/DatePage.dart';
import 'package:myapproute/pages/tabs/DialogPage.dart';
import 'package:myapproute/pages/tabs/DioDemoPage.dart';
import 'package:myapproute/pages/tabs/Example01Page.dart';
import 'package:myapproute/pages/tabs/Example02Page.dart';
import 'package:myapproute/pages/tabs/Example03Page.dart';
import 'package:myapproute/pages/tabs/Example04Page.dart';
import 'package:myapproute/pages/tabs/GetPostDemo2Page.dart';
import 'package:myapproute/pages/tabs/GetPostDemo3Page.dart';
import 'package:myapproute/pages/tabs/GetPostDemo4Page.dart';
import 'package:myapproute/pages/tabs/GetPostDemoPage.dart';
import 'package:myapproute/pages/tabs/HistorySearchTitlePage.dart';
import 'package:myapproute/pages/tabs/HomePage.dart';
import 'package:myapproute/pages/tabs/IDataWidget.dart';
import 'package:myapproute/pages/tabs/IconTestPage.dart';
import 'package:myapproute/pages/tabs/LoginTextFieldPage.dart';
import 'package:myapproute/pages/tabs/RadioDemo.dart';
import 'package:myapproute/pages/tabs/RegistrationPage.dart';
import 'package:myapproute/pages/tabs/SearchPage.dart';
import 'package:myapproute/pages/tabs/SlideMenu01Page.dart';
import 'package:myapproute/pages/tabs/SlideMenu02Page.dart';
import 'package:myapproute/pages/tabs/FocusEvenetPage.dart';

import 'package:myapproute/pages/tabs/SwiperPage.dart';
import 'package:myapproute/pages/tabs/TabBarControllerPage.dart';
import 'package:myapproute/pages/tabs/TextFieldPage.dart';
import 'package:myapproute/pages/tabs/WangYiTitelChooseDemo.dart';
import 'package:myapproute/pages/user/SecondPage.dart';
import 'package:myapproute/pages/user/UserPage.dart';

import '../pages/tabs/SettingsPage.dart';
import '../pages/user/LoginPage.dart';
import '../pages/tabs.dart';

// 配置路由
final routes = {
  // 替换Main.dart 中的 home:Tabes2();
  "/": (context, {arguments}) => Tabes(),
  "/home": (context, {arguments}) => HomePage(),
  "/search": (context, {arguments}) => SearchPage(arguments: arguments),
  "/setting": (context, {arguments}) => SettingsPage(arguments: arguments),
  "/login": (context, {arguments}) => LoginPage(arguments: arguments),

  // 不传递参数,使用这套不烦
  // "/second": (context, {arguments}) => SecondPage(arguments: arguments),
  "/second": (context) => SecondPage(),
  "/appBarDemo": (context) => AppBarDemo(),
  "/appBarTabBarDemo": (context) => AppBarTabBarDemo(),

  // 2020/6/10 10:48分  TabBarController 控制 TabBar`
  "/tabBarController": (context) => TabBarControllerPage(),

  '/user': (context) => UserPage(),

  '/button': (context) => ButtonPage(),

  '/textField': (context) => TextFieldPage(),

  '/loginText': (context) => LoginTextField(),

  '/checkBox': (context) => CheckBoxDemo(),

  '/radioDemo': (context) => RadioDemo(),

  '/registration': (context) => RegistrationPage(),

  '/datePage': (context) => DatePage(),

  '/swiperPage': (context) => SwiperPage(),

  // 路由可以嵌套
  '/example01Page': (context) => Example01Page(),
  '/example02Page': (context) => Example02Page(),
  '/example03Page': (context) => Example03Page(),
  '/example04Page': (context) => Example04Page(),

  '/dialogPage': (context) => DialogPage(),


  '/slideMenu01': (context) => SlideMenu01Page(),

  '/slideMenu02': (context) => SlideMenu02Page(),


  // 【重点：监听自定义事件】
  '/focusEvenet': (context) => FocusEvenetPage(),

  '/getPostDemoPage': (context) => GetPostDemoPage(),


  '/getPostDemo2Page': (context) => GetPostDemo2Page(),

  '/getPostDemo3Page': (context) => GetPostDemo3Page(),

  '/getPostDemo4Page': (context) => GetPostDemo4Page(),

    // dio 请求网络数据 + loading 等待动画页面
  '/dioDemoPage': (context) => DioDemoPage(),


  // 时间：2020/7/1 10:40  MVP传递数据的方式。
  // "/setting": (context, {arguments}) => SettingsPage(arguments: arguments),

  // 注意，这里的参数名称一定是 arguments ； 否则报错，这里的规则与下面的 onGenerateRoute 定义的名称有关。
  '/dataTransferByConstructorPage': (context,{arguments}) => DataTransferByConstructorPage(data: arguments,),

  // IDataWidget
  // '/iDataWidget': (context,{arguments}) => IDataWidget(),

  // 2020/11/11 仿网易标签选择Demo
  '/WangYiTitelChooseDemo': (context) => WangYiTitelChooseDemo(),

  '/HistorySearchTitlePage':(context)=>HistorySearchTitlePage(),

  // 使用阿里巴巴ICON图标：
  '/IconTestPage':(context)=>IconTestPage(),



};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  // // 统一处理
  final String name = settings.name;

  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      // 时间：2020/6/9 17:43分 可能下面这句有问题，搞成了必须要传入参数才可以，否则就报错。
      // 这点原因找到了，并解决了。 原因是 onGenerateRoute 多了一个大括号
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
