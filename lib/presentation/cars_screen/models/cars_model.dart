import 'package:get/get.dart';
import 'cars_item_model.dart';

class CarsModel {
  RxList<CarsItemModel> carsItemList = RxList.filled(2, CarsItemModel());

}





class Data {
  final dynamic price;
  final String image;
  final String title;

  Data({required this.price, required this.image, required this.title});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      price: json['price'],
      image: json['image'],
      title: json['title'],
    );
  }


 }
