

abstract class A{
  fnA();
}


abstract class B{
  fnB();
}

// 1、 多重继承A 和 B ，需要全部实现里面的方法！
class C implements A,B {
  @override
  fnA() {
    // TODO: implement fnA
    print('FN------A');
  }

  @override
  fnB() {
    // TODO: implement fnB
    print('FN------B');
  }
  
}


void main() {

  print('------多重接口');

  C c=new C();

  c.fnA();
  c.fnB();
  
}



