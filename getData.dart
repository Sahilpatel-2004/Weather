import 'dart:convert';
import 'package:http/http.dart';

class getData_weather {
  String location;

  // constrction

  getData_weather({required this.location}) {
    location = this.location;
  }

   late String temp;
   late String humidity;
   late String air_speed;
   late String description;
   late String main;
   late String icon;
  

  Future<void> getData() async {
    try {
      Response response = await get(
        Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=31deb9f7422e8dd355a0cc2e36b88535",
        ),
      );
      Map Data = jsonDecode(response.body);

      // Getting tem and HUmidity

      Map temp_Data = Data["main"];
      double gettemp = temp_Data["temp"] - 273.15; // C
      String gethumidity = temp_Data['humidity'].toString(); // %
      

      // Getting Air Data

      Map wind = Data['wind'];
      double getair_speed = wind['speed'] / 0.27777777778;  // km/hr

      // Getting Description

      List weather_data = Data['weather'];
      Map weather_main_data = weather_data[0];
      String getmain_dec = weather_main_data['main'];
      String getdec = weather_main_data['description'];

      // Assign value

      temp = gettemp.toString();
      humidity = gethumidity;
      main = getmain_dec;
      description = getdec;
      air_speed = getair_speed.toString();
      icon = weather_main_data['icon'].toString();
      

      
    } catch (e) {
      temp = "NA";
      humidity = "NA";
      main = "NA";
      description = "Can't Find Data";
      air_speed = "NA";
      icon = "03d";
    }
  }
}
