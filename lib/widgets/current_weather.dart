import 'package:flutter/material.dart';

Widget currentWeather(IconData icon,double? temp, String location) {
  //double weather = double.parse(temp);
 // print(weather);
  //assert(weather is double);
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            //color:Colors.orange,
            color: (temp! < 0)?Colors.blue:Colors.orange,
            size: 75.0),
        const SizedBox(height: 10),
        Text(temp.toString(),
        style: const TextStyle(fontSize: 40),
        ),
        const SizedBox(height: 10),
        Text(location,
        style: const TextStyle(fontSize: 20,
        color: Colors.black38),
        )
      ],
    ),
  );


}