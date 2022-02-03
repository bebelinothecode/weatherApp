import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget additionalInformation(String wind, String pressure, String humidity, String feels_like)  {

return Container(
  width: double.infinity,
  padding: const EdgeInsets.all(10.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              Text("Wind",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              ),
              SizedBox(height: 15),
              Text("Pressure",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              ),
              SizedBox(height: 15),
              Text("Humidity",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              ),
              SizedBox(height: 15),
              Text('Feels like',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              Text(wind,
              style: const TextStyle(
                fontSize: 18.0
              ),
              ),
              const SizedBox(height: 15),
              Text(pressure,
              style: const TextStyle(
                fontSize: 18.0,
              ),
              ),
              const SizedBox(height: 15),
               Text(humidity,
               style: const TextStyle(
                 fontSize: 18.0,
               ),
               ),
              const SizedBox(height: 15),
              Text(feels_like,
              style: const TextStyle(
                fontSize: 18.0
              ),
              )
            ],
          ),
        ],
      ),
    ],
  ),
);
}