import 'package:flutter/material.dart';
import 'package:weatherapp/models/city.dart';
import 'package:weatherapp/models/constration.dart';
import 'package:weatherapp/view/home.dart';

class welcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return welcomestate();
  }

}
class welcomestate extends State<welcome>{

  Constants constants = Constants(); 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<City> cities = City.citylist.where((city)=> city.isdefault == false).toList();
    List<City> selectedcity = City.getselectedlist();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: constants.secondrycolor.withOpacity(.6),
        title: Center(child: Text(selectedcity.length.toString() + "  Selected",style: TextStyle(fontSize: 25),)),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder:(BuildContext context , int index ){
          return Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: size.height*.08,
            width: size.width,
            decoration: BoxDecoration(
              border: cities[index].isselected == true ? Border.all(
                color: constants.secondrycolor.withOpacity(.6),
                width: 2,
              ): Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow:[
                BoxShadow(
                  color: constants.primarycolor.withOpacity(.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      cities[index].isselected =! cities[index].isselected;
                    });
                  },
                  child: Image.network(cities[index].isselected == true ? "https://github.com/realflutternuggets/flutter-weather-app/blob/main/assets/checked.png?raw=true" : "https://github.com/realflutternuggets/flutter-weather-app/blob/main/assets/unchecked.png?raw=true",width: 30,)),
                SizedBox(
                  width: 30,
                ),
                Text(cities[index].city,
                style: TextStyle(
                  fontSize: 20,
                  color: cities[index].isselected == true ? constants.primarycolor : Colors.black54),)

              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pin_drop),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }
        ),
    );
  }

}