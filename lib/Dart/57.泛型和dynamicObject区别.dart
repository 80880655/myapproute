import 'package:myapproute/pages/class/TransferDataEntity.dart';

/**
 * 时间：2020/7/1 14:40分
 * 1、泛型类的使用
 * 2、dynamic 和 Object 的区别
 * 
 * 
*/
class Car {
  String id;
  String car_name;
  String car_color;

  Car({this.id, this.car_name, this.car_color});
}

class TransferDataEntity {
  String name;
  String id;
  int age;

  TransferDataEntity({
    String this.id,
    String this.name,
    int this.age,
  });
}



main() {

  Object a;

  a=TransferDataEntity();

  print(a is TransferDataEntity);  //返回true

  a=Car();

  print(a is Car); //返回true


  dynamic b;
  b=TransferDataEntity();

  print(b is TransferDataEntity);  //返回true

  b=Car();

  print(b is Car); //返回true







}


