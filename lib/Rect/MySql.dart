import 'DB.dart';

class MySql implements DB {
  @override
  String uri;

  @override
  add() {
    // TODO: implement add
    
    print('MySql的 add方法');

  }

  @override
  del() {
    // TODO: implement del
    
    print('MySql的 del 方法');
  }

  @override
  save() {
    // TODO: implement save
    print('MySql的 save 方法');
  }

  @override
  void printDB() {
    // TODO: implement printDB
  }


  
}


