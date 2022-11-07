import 'dart:convert';

import '/core/app_export.dart';
import 'package:yasan_s_application1/presentation/cars_screen/models/cars_model.dart';
import 'package:http/http.dart' as http;
class CarsController extends GetxController {
  Rx<CarsModel> carsModelObj = CarsModel().obs;
Data? data_model;

  var isDataLoading = false.obs;
var  futureData;

  @override
  void onReady() {
    super.onReady();
    getApi();
  }

  @override
  void onClose() {
    super.onClose();
  }



 Future <List<Data>> getApi() async {
  final link = Uri.parse('https://fakestoreapi.com/products');
   final response =
      await http.get(link);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    futureData= jsonResponse.map((data) => new Data.fromJson(data)).toList();
      return jsonResponse.map((data) => new Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
  }

}
