import 'package:myapproute/res/listData.dart';

void main() {
  Car car = new Car(car_name: 'ABC');

  ProdDataList listData=ProdDataList(operation:'212121');

  print(anySomeThing<Car>(car));

  print(anySomeThing<ProdDataList>(listData));

}

T anySomeThing<T>(T value) {
  if (value is Car) {
    print(value.run());

    return value;
  }

  if (value is ProdDataList) {
    
    print("ProdDataList:${listData.length}");
  }

}

class Car {
  String id;
  String car_name;
  String car_color;

  Car({this.id, this.car_name, this.car_color});

  String run() {
    // print("Car类${this.car_name}");
    return this.car_name;
  }
}

class ProdDataList {
  String list;
  String operation;
  String sdwip;
  String wip_weight;

  ProdDataList({this.list, this.operation, this.sdwip, this.wip_weight});

  factory ProdDataList.fromJson(Map<String, dynamic> json) {
    return ProdDataList(
      list: json['list'],
      operation: json['operation'],
      sdwip: json['sdwip'].toString(),
      wip_weight: json['wip_weight'].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list'] = this.list;
    data['operation'] = this.operation;
    data['sdwip'] = this.sdwip;
    data['wip_weight'] = this.wip_weight;

    return data;
  }
}
