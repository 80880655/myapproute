import 'package:myapproute/Rect/Person.dart';
import 'package:myapproute/Rect/Person2.dart' as lib;

void main() {
  var p = new Person('XX', 20);

  p.printInfo();

  var p2 = new lib.Person('YYY', 30);

  p2.printInfo();
}
