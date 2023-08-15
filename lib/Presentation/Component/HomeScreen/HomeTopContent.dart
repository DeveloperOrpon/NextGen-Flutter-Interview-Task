import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_gen_interview_task/Controllers/WeatherController.dart';

import '../../../AppConst/Styles/app_colors.dart';
import '../../../Utils/helper_function.dart';

class HomeTopContent extends StatelessWidget {
  final WeatherController weatherController;
  const HomeTopContent({Key? key, required this.weatherController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElasticInLeft(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  HelperFunction.findIcon(
                                    weatherController
                                        .weatherRes.value!.days![1].icon!,
                                  ),
                                  width: 30,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'UV INDEX',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                )
                              ],
                            ),
                            Text(
                              weatherController
                                  .weatherRes.value!.days![1].uvindex
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Moderate',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ElasticInLeft(
                    delay: Duration(milliseconds: 500),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 10,
                      margin:
                          const EdgeInsets.only(top: 5, bottom: 20, left: 4),
                      child: Container(
                        height: 200,
                        width: 110,
                        decoration: BoxDecoration(
                            color: AppColors.primaryLighter,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        CupertinoIcons.sun_haze,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "SUNRISE",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    HelperFunction.formatTimeHourFromString(
                                            weatherController.weatherRes.value!
                                                .days![1].sunrise!)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Text(
                                    "SUNSET : ${HelperFunction.formatTimeHourFromString(weatherController.weatherRes.value!.days![1].sunset!)}",
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 1,
                              color: Colors.grey,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.wind_snow,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "WIND",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                Text(
                                  weatherController
                                      .weatherRes.value!.days![1].windspeed
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                const Text(
                                  "MP/H",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ElasticInLeft(
                    delay: Duration(milliseconds: 700),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 2,
                          color: Colors.green,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Tip',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              width: Get.width * .4,
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8, bottom: 8),
                              child: Text(
                                '${weatherController.weatherRes.value!.days![1].conditions}\n${weatherController.weatherRes.value!.days![1].description}',
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ElasticInRight(
                delay: const Duration(milliseconds: 900),
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/map.png'),
                          alignment: Alignment.topCenter)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        HelperFunction.findIcon(
                          weatherController.weatherRes.value!.days![1].icon!,
                        ),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        HelperFunction.findIcon(
                          weatherController.weatherRes.value!.days![1].icon!,
                        ),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
