import 'package:flutter/material.dart';
import 'package:next_gen_interview_task/AppConst/Styles/app_colors.dart';

class HelperFunction {
  static String findIcon(String name) {
    switch (name) {
      case "clouds":
        return "assets/icon/clouds.png";
      case "rain":
        return "assets/icon/rainy.png";
      case "drizzle":
        return "assets/icon/rainy.png";
      case "thunderstorm":
        return "assets/icon/thunder.png";
      case "snow":
        return "assets/icon/snow.png";
      case "wind":
        return "assets/icon/wind.png";
      case "haze":
        return "assets/icon/haze.png";
      case "mist":
        return "assets/icon/mist.png";
      default:
        return "assets/icon/sunny.png";
    }
  }

  static String formatTimeHourFromString(String time) {
    List<String> timeParts = time.split(":");
    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);

    String period = (hour >= 12) ? 'PM' : 'AM';

    if (hour == 0) {
      hour = 12;
    } else if (hour > 12) {
      hour -= 12;
    }

    return '$hour:${minute.toString().padLeft(2, '0')} $period';
  }

  static String formatTimeHourOnlyFromString(String time) {
    List<String> timeParts = time.split(":");
    int hour = int.parse(timeParts[0]);
    ;
    String period = (hour >= 12) ? 'PM' : 'AM';
    if (hour == 0) {
      hour = 12;
    } else if (hour > 12) {
      hour -= 12;
    }
    return '$hour $period';
  }

  static Color checkTimeForecast(String time) {
    List<String> timeParts = time.split(":");
    int hour = int.parse(timeParts[0]);
    DateTime dateTime = DateTime.now();
    if (hour == dateTime.hour) {
      return AppColors.primary;
    }
    return Colors.black.withOpacity(.3);
  }
}
