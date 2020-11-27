// import 'lib/MySql.dart';
// import 'lib/MsSql.dart';
// import 'lib/Oraclel.dart';



import 'package:myapproute/Rect/MsSql.dart';
import 'package:myapproute/Rect/MySql.dart';
import 'package:myapproute/Rect/Oraclel.dart';

main() {
  
  // 时间：2020/5/15 15:22

  //1、 test  implements
  MySql mySql=new MySql();
  mySql.add();
  

  MsSql msSql=new MsSql();
  msSql.add();

  msSql.run();

  print(msSql.uri);


  print('----------------------------------');
  // 2、 extends
  Oracle ocl=new Oracle();
  print(ocl.uri);
  
  ocl.add();
  ocl.del();




}