import 'package:flutter/material.dart';
import 'package:weatherapp/models/constration.dart';
import 'package:weatherapp/view/home.dart';


class splash_screen extends StatelessWidget{

 final Constants constants = Constants(); 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: constants.primarycolor.withOpacity(0.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://github.com/realflutternuggets/flutter-weather-app/blob/main/assets/get-started.png?raw=true"),
              SizedBox(
                height: 30
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (cintext)=>home()));
                },
                child: Container(
                  height: 50,
                  width: size.width*0.7,
                  decoration: BoxDecoration(
                    color: constants.primarycolor,
                    borderRadius:BorderRadius.circular(20), 
                  ),
                  child: Center(child: Text("Get Started",style: TextStyle(fontSize: 25),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}