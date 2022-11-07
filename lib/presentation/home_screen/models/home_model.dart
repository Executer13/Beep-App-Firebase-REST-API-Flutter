import 'package:location/location.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
class HomeModel {




Future<LocationData?> currentLocation() async {
 bool serviceEnabled;
 PermissionStatus permissionGranted;

 Location location = new Location();

 serviceEnabled = await location.serviceEnabled();
 if (!serviceEnabled) {
 serviceEnabled = await location.requestService();
 if (!serviceEnabled) {
 return null;
 }
 }

 permissionGranted = await location.hasPermission();
 if (permissionGranted == PermissionStatus.denied) {
 permissionGranted = await location.requestPermission();
 if (permissionGranted != PermissionStatus.granted) {
 return null;
 }
 }
 return await location.getLocation();
}


}
