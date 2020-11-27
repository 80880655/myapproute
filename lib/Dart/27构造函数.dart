
import '26类和对象.dart';

void main() {
  //1、默认构造函数
  var p=new Person('张三',29);

  p.printInfo();   // 输出： this 方法：张三----29

  //2、命名构造函数
  var p2=new Person.now();
  var p3=new Person.setInfo('李四',30);

  p2;
  p3;

}


// 1、默认构造函数
// class Person {

//   String name="XX";
//   int age=10;

//   // 写法1：
//   // Person(String name,int age){
//   //   this.name=name;
//   //   this.age=age;
//   // }

//   // 构造函数简化  写成
//   // 写法2：
//   // Person(this.name,this.age);
//   Person(this.name,this.age);

//   void printInfo(){
//     print("this 方法：${this.name}----${this.age}");
//   }

// }



// 2、命名构造函数
class Person {

  String name="XX";
  int age=10;

  Person(this.name,this.age);
  Person.now(){
    print('命名构造函数的方法');
  }

  Person.setInfo(String name,int age){
    this.name=name;
    this.age=age;

    print("命名方法2：${this.name}----${this.age}");

  }

  void printInfo(){
    print("this 方法：${this.name}----${this.age}");
  }

}


