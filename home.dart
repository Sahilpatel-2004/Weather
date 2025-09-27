import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/view/loading.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return homestate();
  }
}

class homestate extends State<home> {
  TextEditingController searchcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null || route.settings.arguments == null) {
      return Scaffold(body: Center(child: Text("No weather data received.")));
    }
    var city_name = [
      'Mumbai',
      'Delhi',
      'Bangalore',
      'Hyderabad',
      'Ahmedabad',
      'Chennai',
      'Kolkata',
      'Pune',
      'Jaipur',
      'Surat',
      'Lucknow',
    ];

    final _random = new Random();
    var city = city_name[_random.nextInt(city_name.length)];

    Map<dynamic, dynamic> info =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    String temp = (info['temp_value'].toString());
    String air_speed = (info['air_spped_value'].toString());

    if (temp == "NA") {
      print("NA");
    } else {
      temp = (info['temp_value'].toString()).substring(0, 4);
      air_speed = (info['air_spped_value'].toString()).substring(0, 4);
    }
    String icon = info['icon_value'];
    String getcity = info['city_value'];
    String hum = info['hum_value'];
    String des = info['doc_value'];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Colors.blueGrey[700]),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Container(
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   stops: [0.3, 0.9],
              //   colors: [Colors.blueAccent, Colors.lightBlue],
              // ),
              image: DecorationImage(
                image: AssetImage("assets/Images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if ((searchcontroller.text).replaceAll(" ", "") ==
                                "") {
                              print("No Search Any City");
                            } else {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => loading(
                                        city_search:
                                            searchcontroller.text.toString(),
                                      ),
                                ),
                              );
                            }
                          },
                          child: Icon(Icons.search, color: Colors.blue),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: searchcontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search $city",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  // first
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Row(
                            children: [
                              Image.network(
                                "https://openweathermap.org/img/wn/$icon@2x.png",
                              ),
                              Column(
                                children: [
                                  Text(
                                    "$des",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "In $getcity",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // second
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 20,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(WeatherIcons.thermometer, size: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "$temp",
                                    style: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "C",
                                    style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  // thired left
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Icon(WeatherIcons.day_windy)],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Text(
                                "$air_speed",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "km/hr",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      // four right
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Icon(WeatherIcons.humidity)],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Text(
                                "$hum",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "%",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text("Data Provided By OpenWeather.org",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
