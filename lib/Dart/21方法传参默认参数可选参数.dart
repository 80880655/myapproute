void main() {
  //1、定义传参的函数方法
  // sum(count) {
  //   var intSum = 1;
  //   for (var i = 1; i <= count; i++) {
  //     intSum += i;
  //   }

  //   print(intSum);
  // }

  // int sum2(int count) {
  //   var intSum = 1;
  //   for (var i = 1; i <= count; i++) {
  //     intSum += i;
  //   }

  //   print(intSum);
  // }

  // sum(50);
  // sum(100);
  // sum2(101);

  //2、定义一个带可选参数的方法;  可选参数 使用 “中括号”括起来， 一般放置在最后面
  // String printUserInfo(String username, [int age, String sex]) {
  //   if (age != null && sex != "") {
  //     return "姓名：$username----年龄:$age----性别：$sex";
  //   }
  //   if (sex != null) {
  //     return "姓名：$username----性别:$sex";
  //   }
  //   return "姓名：$username";
  // }

  // print(printUserInfo('XXX'));
  // print(printUserInfo('XXX', 21));
  // print(printUserInfo('XXX', 21, '男'));

  // String sex2 = null;
  // String sex3 = "";
  // var s = sex2?.isEmpty; // 返回 null
  // var s1 = sex3?.isEmpty; // 返回 true,代表有值
  // print(s);
  // print(s1);



  // 3、默认参数的函数和方法
  // String printUserInfo(String username, [int age, String sex='男']) {
  //   if (age != null) {
  //     return "姓名：$username----年龄:$age----性别：$sex";
  //   }
  //   if (sex != null) {
  //     return "姓名：$username----性别:$sex";
  //   }
  //   return "姓名：$username";
  // }

  // print(printUserInfo('李四'));
  // print(printUserInfo('李四',21));


  // 4、命名参数：  使用大括号
  // String printUserInfo(String username, {int age,String sex='男'}) {
  //   if (age != null) {
  //     return "姓名：$username----年龄:$age----性别：$sex";
  //   }
  //   if (sex != null) {
  //     return "姓名：$username----性别:$sex";
  //   }
  //   return "姓名：$username";
  // }

  // print(printUserInfo('赵武',age: 20));
  // print(printUserInfo('赵武',age: 20,sex: 'XX'));
  


  // 5、实现一个把 方法 当做参数的方法
  // fn1(){
  //   print('fn1的方法');
  // }

  // // 传入方法作为参数
  // fn2(functionName){
  //   functionName();
  // }

  // fn2(fn1);     // 正确写法，返回：fn1的方法

  // fn2(fn1());   // 错误写法




  // 6、匿名方法，就是一个没有名字的方法;  使用匿名方法是需要加上 “括号”
  var a=(){
    print('这是一个匿名方法');
  };

  a();

}
