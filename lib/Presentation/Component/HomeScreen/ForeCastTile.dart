import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../Models/WeatherRes.dart';
import '../../../Utils/helper_function.dart';

class ForeCastTile extends StatelessWidget {
  final Hours hourValue;
  final int index;
  const ForeCastTile({Key? key, required this.hourValue, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BounceInRight(
      delay: Duration(milliseconds: 100 + 40 * index),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: HelperFunction.checkTimeForecast(hourValue.datetime!),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(2, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              HelperFunction.formatTimeHourOnlyFromString(hourValue.datetime!),
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Image.asset(
              HelperFunction.findIcon(
                hourValue.icon!,
              ),
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            Text(
              (hourValue.temp.toString()),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
