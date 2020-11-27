void main(List<String> args) {

  var b=null;

  String a=b??'hello';

  // 说明1： 如果 b 为null ，则输出 hello
  print(a);



  // 说明2：
  // var c=null;
  var c='1';
  
  c??='hello3';

  print(c);



}
