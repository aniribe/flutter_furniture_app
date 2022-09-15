import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/app_images.dart';

AppBar buildAppBar(Function() onBackPressed) {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset(AppImages.arrowIcon),
      onPressed: onBackPressed,
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(AppImages.bagIcon),
        onPressed: () {},
      ),
    ],
  );
}
