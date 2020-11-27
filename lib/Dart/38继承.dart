
class Person {
  String name='张三';
  num age=44;

  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

class Student extends Person {
  // Web(String name, num age) : super(name, age);
  void study(){
    print('study object');
  }


}

void main() {
  // 1、面向对象的三大特性： 封装、继承、多态。

  // Dart 中的类的继承：
  //   1、子类使用 extends 关键字来继承父类。
  //   2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数。
  //   3、子类能复写父类的方法 getter 和 setter.

  Student w = new Student();

  w
    ..name
    ..age
    ..printInfo();





}

