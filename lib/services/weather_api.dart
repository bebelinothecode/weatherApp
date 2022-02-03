import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dating_app/model/weather_model.dart';

class weatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c1ba05384a746ce80a36773627b34355&units=metric');
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
