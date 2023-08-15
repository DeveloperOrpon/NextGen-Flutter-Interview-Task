import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_gen_interview_task/Controllers/WeatherController.dart';

import '../Component/HomeScreen/ForeCastScrollBar.dart';
import '../Component/HomeScreen/HomeAppBar.dart';
import '../Component/HomeScreen/HomeTopContent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherController = Get.put(WeatherController());
    return Scaffold(
      appBar: homeAppBar(),
      body: Obx(() => weatherController.weatherRes.value == null
          ? const Center(
              child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoActivityIndicator(radius: 50),
            ))
          : Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Frame.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeTopContent(weatherController: weatherController),
                  ElasticInUp(
                    delay: const Duration(milliseconds: 1000),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Hourly Forecast',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  ForeCastScrollBar(weatherController: weatherController)
                ],
              ),
            )),
    );
  }
}
