import 'package:flutter/material.dart';

import '../../../AppConst/Styles/app_text_styles.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: const Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
    title: const Text(
      'Weather',
      style: AppTextStyles.h4,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Icon(
          Icons.more_vert_outlined,
          color: Colors.black,
        ),
      )
    ],
  );
}
