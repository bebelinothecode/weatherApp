import 'package:dating_app/model/weather_model.dart';
import 'package:dating_app/services/weather_api.dart';
import 'package:dating_app/widgets/additionalInformation.dart';
import 'package:dating_app/widgets/current_weather.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/widgets/date.dart';


class homePage extends StatefulWidget {
  String weathertext;
  homePage({required this.weathertext});

  @override
  _homePageState createState() => _homePageState(weathertext);
}



class _homePageState extends State<homePage> {
  String weathertext;

  _homePageState(this.weathertext);
  weatherApiClient client = weatherApiClient();
  Weather? data;


  Future<void> getData() async{
     print(weathertext);
     data = (await client.getCurrentWeather(weathertext))!;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromARGB(100, 51, 102, 53),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: const Text('WEATHER',
        style: TextStyle(
          color: Colors.black
        ),
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot  snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  currentWeather((data?.temp)! <= 0? Icons.ac_unit : Icons.wb_sunny_sharp, '${data?.temp} °C', '${data?.cityName}'),
                  const SizedBox(height: 10),
                  const Text('Additional Information',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  currentDateText(),
                  const SizedBox(height: 25),
                  additionalInformation('${data?.wind} m/s', "${data?.pressure} hPa", "${data?.humidity} %",'${data?.feels_like} °C'),
                ],
            );
          }
          else if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Text('there are problems');
          },
      ),
    );
  }
}


