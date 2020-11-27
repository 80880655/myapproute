class A {
  void fnA() {
    print('fnA');
  }

  void run() {
    print('runA');
  }
}

class B {
  // 如果写构造函数，就会报错。

  void fnB() {
    print('fnB');
  }

  void run() {
    print('runB');
  }
}

// 继承
class D with A, B {}

class E with B, A {}

/*
 * - mixin 类只能继承自 object
 * - mixin 类不能有构造函数
 * - 一个类能够 mixin 多个 mixin 类
  */
void main() {
  D d = new D();

  d.fnA(); // 返回：fnA
  d.fnB(); // 返回：fnB
  // d.fnB2();  // 返回：空
  d.run(); // 返回：runB ; 为什么？

  print('-------------------');
  E e=new E();

  e.run();  // 返回：runA  ;


    //  结论： class D with A, B {} 和 class E with B, A {} ； 那个在最后，就执行那个里面的方法。


}
