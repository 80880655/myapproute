class Person {
  String name;
  num age;

  void printInfo() {
    print("${this.name}----${this.age}");
  }

  // 带参数的构造函数, 不会继承构造函数，所以这里需要使用 super
  Person(this.name, this.age);

}


//  super 的使用, 子类是3个参数，父类是 2个参数
class Web extends Person {
  String sex;

  Web(String name, num age,String sex) : super(name, age){

    this.sex=sex;
  }

  void run(){
    print("${this.name}----${this.age}-----${this.sex}");

  }

}

void main() {
  // 1、面向对象的三大特性： 封装、继承、多态。

  // Dart 中的类的继承：
  //   1、子类使用 extends 关键字来继承父类。
  //   2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数。
  //   3、子类能复写父类的方法 getter 和 setter.

  Web w = new Web('李四',33,'男');

  w
    ..name
    ..age
    ..sex
    ..printInfo()
    ..run();





}
