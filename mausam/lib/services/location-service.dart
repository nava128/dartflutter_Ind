


import 'package:geolocator/geolocator.dart';

class LocationInfo{

  dynamic error;

  Position position;

  double get latitude => position.latitude;

  double get longitude => position.longitude;

  bool get success=> error==null;

  LocationInfo({this.position, this.error});
}


class LocationService{

  static Future<LocationInfo> getCurrentLocation() async{

    try {
      var locator = Geolocator();
      locator.forceAndroidLocationManager=true;
      Position pos = await locator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      var location = LocationInfo(position: pos);
      print('location is ${location.latitude}, ${location.longitude}');
      return location;
    }catch (e){
      print('error getting location:'+e);
      return LocationInfo(error: e);
    }
  }

}