class A {
  void fnA() {
    print('fnA');
  }

  void run() {
    print('runA');
  }
}

class B {
  void fnB() {
    print('fnB');
  }

  void run() {
    print('runB');
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age) {
    print('Person 构造函数：${this.name}----${this.age}');
  }

  printPerson() {
    print('Person 类的方法');
  }
}

// 继承
class D extends Person with A, B {
  // 时间：2020/5/15 16:49 实现了 父类中的构造函数；
  D(String name, int age) : super(name, age);
}

/*
 * - mixin 类只能继承自 object
 * - mixin 类不能有构造函数
 * - 一个类能够 mixin 多个 mixin 类
  */
void main() {
  D d = new D('name', 30);   // 返回： Person 构造函数：name----30

  d.printPerson();  // Person 类的方法

  d.run();  // runB

  print(d is Object);  // 返回  true;


}
