import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_gen_interview_task/Controllers/WeatherController.dart';

import 'ForeCastTile.dart';

class ForeCastScrollBar extends StatelessWidget {
  final WeatherController weatherController;
  const ForeCastScrollBar({Key? key, required this.weatherController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElasticInUp(
      delay: const Duration(milliseconds: 1000),
      child: SizedBox(
        height: 170,
        width: Get.width,
        child: ListView.builder(
          itemCount: weatherController.weatherRes.value!.days![1].hours!.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final hourValue =
                weatherController.weatherRes.value!.days![1].hours![index];
            return ForeCastTile(hourValue: hourValue, index: index);
          },
        ),
      ),
    );
  }
}
