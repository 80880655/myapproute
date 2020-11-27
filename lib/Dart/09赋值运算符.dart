
void main() {
  

  // 1、基础运算符 =  ??=

  // int a=10;
  // int b=3;
  // print(a);

  // int c=a+b;
  // print(c);


  // 2、 ??=
  // int b=10;
  // int b=null;
  int b;
  // 代表 如果 b为 空，则将 23赋值给到b ,否则 保持b的原值
  b??=23;
  print(b);




}
