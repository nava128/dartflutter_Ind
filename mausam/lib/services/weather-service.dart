


import 'package:mausam/services/location-service.dart';
import 'package:http/http.dart' as http;
import 'package:mausam/const.dart';
import 'dart:convert';

class WeatherInfo{
    int status;
    double latitude;
    double logitude;
    int condition; //id
    String shortStaus;
    String description;
    String icon;
    double temperature;
    String country;
    String city;

    WeatherInfo({
      this.status,
      this.latitude,
      this.logitude,
      this.condition, //id
      this.shortStaus,
      this.description,
      this.icon,
      this.temperature,
      this.country,
      this.city,
    });

    bool get success=> status==200;
}

class WeatherService{

  static Future<WeatherInfo> getCurrentLocationWeather() async{
     print('getting current location');
      var location= await LocationService.getCurrentLocation();
      print('got current location, getting weather info');
      var weatherInfo= await getWeatherByLocation(location);
      print('returning weather info ${weatherInfo.status}');
      return weatherInfo;
  }

  static Future<WeatherInfo> getWeatherByLocation(LocationInfo info) async{
      var url= '$kWeatherByLatLongUrl&lat=${info.latitude}&lon=${info.longitude}';
      var result= await getWeatherFromApi(url);
      return result;
  }

  static Future<WeatherInfo> getWeatherByCity(String city){
    return null;
  }

  static Future<WeatherInfo> getWeatherFromApi(String url) async{
    print('sending request to $url');
    var response=await http.get(url);
    //print(response.statusCode);
    //print(response.body);

   if (response.statusCode!=200)
     return WeatherInfo(status:response.statusCode);


    var jsonString=response.body;
    var json=jsonDecode(jsonString);

    //print(jsonString);
    //print(json['coord']['lon']);

    var info= WeatherInfo(
      status:200,
      latitude: json['coord']['lat'],
      logitude: json['coord']['lon'],
      condition: json['weather'][0]['id'],
      shortStaus: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      icon:json['weather'][0]['icon'],
      temperature: json['main']['temp'],
      city: json['name'],
      country: json['sys']['country']

    );

    return info;
  }



  static getConditionIconUrl(String icon){
    return 'http://openweathermap.org/img/wn/$icon@2x.png';
  }

}