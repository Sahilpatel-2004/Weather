import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/resource/component/getData.dart';


class loading extends StatefulWidget {
  final String city_search;

  loading ({
    required this.city_search
  });

  @override
  State<StatefulWidget> createState() {
    return loadingstate();
  }
}

class loadingstate extends State<loading> {
  late String city = "surat";
  late String temp;
  late String hum;
  late String air_speed;
  late String dec;
  late String main;
  late String icon;


  void startApp(String city) async {
    getData_weather instance = getData_weather(location: city);
    await instance.getData();

    temp = instance.temp;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    dec = instance.description;
    main = instance.main;
    icon = instance.icon;
    

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        "/home",
        arguments: {
          'temp_value': temp,
          'hum_value': hum,
          'air_spped_value': air_speed,
          'doc_value': dec,
          'main_value': main,
          'icon_value': icon,
          'city_value': city,
        },
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    city = widget.city_search.isNotEmpty ? widget.city_search : "surat";
    startApp(city);
  }

  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.4, 0.6],
            colors: [const Color.fromARGB(255, 7, 34, 88), const Color.fromARGB(255, 5, 29, 123)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Images/weather.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.09),
              Text(
                "Weather App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SpinKitRipple(
                color: const Color.fromARGB(255, 3, 7, 244),
                borderWidth: 5,
                size: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
