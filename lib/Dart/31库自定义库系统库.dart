

import 'dart:math';

import 'package:myapproute/Rect/Rect.dart';   // 内置库


void main() {
  // Dart 主要有三种库：
  //1、自定义库；  单独存放库，然后使用的时候引入即可。
  var p = new Rect();
  print("${p.height}-----${p.width}");
  print("${p.width}");
  print(p.area); // 打印出结果： 面积为200

  //2、系统内置库
  int a=12;
  int b=15;

  print(min(a,b));


  //3、Pub包管理系统中的库
  /*
    第一步：
      https://pub.dev/packages
      https://pub.flutter-io.cn/packages
      https://pub.dartlang.org/flutter

    第二步：
      创建一个 pubspec.yaml 文件，内容如下：
        name:XX
        description: A new flutter module project.
        dependencies:
          http:^0.12.0+2
          date_format:^1.0.6
    
    第三步：配置 dependencies

    第四步：运行 put get 获取远程库

    第五步：查看文档引入库使用说明.

    【个人说明】：
      在本测试Dart 文档中已经手工创建了 一个 pubspec.yaml文件，并将 http 的第三方库引入进来了。


  */  
  //



}
