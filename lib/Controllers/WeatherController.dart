import 'dart:developer';

import 'package:dio/dio.dart' as DIO;
import 'package:get/get.dart';
import 'package:next_gen_interview_task/Core/Api.dart';
import 'package:next_gen_interview_task/Core/ApiPath.dart';

import '../Models/WeatherRes.dart';

class WeatherController extends GetxController {
  Api api = Api();
  Rxn<WeatherRes> weatherRes = Rxn<WeatherRes>();

  @override
  void onInit() {
    api.initApi();
    getCurrentWeatherResponse();
    super.onInit();
  }

  getCurrentWeatherResponse() async {
    try {
      DIO.Response response = await api.dio.get(WEATHER_URL);

      log("Weather Response : ${response.data}");
      WeatherRes weather = WeatherRes.fromJson(response.data);
      weatherRes.value = weather;
      // weatherRes.value???
    } on DIO.DioException catch (error) {
      log("Error : $error");
    }
  }
}
