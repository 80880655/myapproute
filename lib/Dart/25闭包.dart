
// var a ='输出：全局变量，常驻在内存中';

// var a=123;
void main() {
  // 时间：2020/5/13 16:27分 闭包 &  全局变量 和 局部变量
  // print(a);

  // fn(){
  //   a++;
  //   print(a);
  // }

  // fn();  // 全局变量 a 会一直改变
  // fn();
  // fn();


  // // 局部变量 b 不会一直改变
  // printInfo(){
  //   var b=123;
  //   b++;
  //   print(b);
  // }

  // printInfo();
  // printInfo();


  //2、闭包, 方法里面嵌套方法，并且返回方法；
  // 闭包的作用：  
  //     2.1 常驻内存
  //     2.2 不污染全局

  fn(){
    var a=123;
    return (){
      a++;
      print(a);
    };
  }

  var b=fn();
  // 执行多少次 都是 124,125,126
  b();  // 返回 124
  b();  // 返回 125
  b();  // 返回 126


  
}


