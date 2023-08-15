import 'package:get/get.dart';
import 'package:next_gen_interview_task/Controllers/WeatherController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WeatherController>(WeatherController());
  }
}
