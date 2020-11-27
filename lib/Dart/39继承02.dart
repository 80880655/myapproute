class Person {
  String name;
  num age;

  void printInfo() {
    print("${this.name}----${this.age}");
  }

  // 带参数的构造函数, 不会继承构造函数，所以这里需要使用 super
  Person(this.name, this.age);

}

class Web extends Person {
  Web(String name, num age) : super(name, age);

  void study() {
    print('study object');
  }


}

void main() {
  // 1、面向对象的三大特性： 封装、继承、多态。

  // Dart 中的类的继承：
  //   1、子类使用 extends 关键字来继承父类。
  //   2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数。
  //   3、子类能复写父类的方法 getter 和 setter.

  Web w = new Web('李四',33);

  w
    ..name
    ..age
    ..printInfo();





}
