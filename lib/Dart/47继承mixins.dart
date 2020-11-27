// 因为没有多继承，因此如果要综合多个类属性和方法可以 implements 多个接口，如果不是
// 抽象类，则可以通过 mixin 混入多个类的属性和方法。

class A {
  void fnA() {
    print('fnA');
  }

  void run() {
    print('runA');
  }
}

abstract class B {
  void fnB() {
    print('fnB');
  }

  void fnB2() {}

  void run() {
    print('runB');
  }
}

// 时间：2020/5/15 16:18分
// 1、mixin ； 可以选择 重现哪些方法
class C extends Object with A, B {
  void fnA() {
    print('C_fnA');
  }
}

class D with A,B {

}

/**
 * - mixin 类只能继承自 object
 * - mixin 类不能有构造函数
 * - 一个类能够 mixin 多个 mixin 类
  */
void main() {
  print('-----mixin-----');

  C c = new C();

  c.fnA(); // 返回：C_fnA

  c.fnB(); // 返回：fnB
  c.fnB2(); // 返回：空
  c.run(); // 返回：runB

  print('-----类型-----');
  print(c is C); // 返回：true
  print(c is A); // 返回：true
  print(c is B); // 返回：true

  print('-----类D-----');
  D d=new D();

  d.fnA();   // 返回：fnA
  d.fnB();   // 返回：fnB
  // d.fnB2();  // 返回：空
  d.run();   // 返回：runB ; 为什么？

}
