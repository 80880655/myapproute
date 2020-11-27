
// import 'lib/Person.dart';
// import 'lib/Rect.dart';



import 'package:myapproute/Rect/Person.dart';

void main() {
  

  // 时间：2020/5/14 11:22分

  // 1、私有和公有，直接使用“下划线”+属性名称 即可. 但是如果将类写在main同一个文本中，则就不分私有或_了。
  // 所有的都是公有。
  // 必须将类放置在其他的地方或文件夹中，这样才会生效。

  var p=new Person('name', 12);


  // p._sex;  // 报错： 因为 _sex 是私有的。

  // 构造函数的传入参数中虽然有 _sex ,因为是增加了  下划线，所以属于私有；
  // 所以这里直接使用 p._sex 访问不了，也用不了， 构造函数中也没有需要输入_sex 的变量属性。
  


  //2、get和set 类方法
  // var n=new Rect(23, 10);

  // print(n.area);


  // // set 的使用
  // n.areaHeight=40;
  // print(n.area);


}



