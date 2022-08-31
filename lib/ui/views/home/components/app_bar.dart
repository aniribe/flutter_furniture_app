import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/size_config.dart';
import '../../../ui_util/ui_helpers.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset(
        AppImages.menuIcon,
        height: SizeConfig.defaultSize! * 2,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppImages.scanIcon,
          height: SizeConfig.defaultSize! * 2,
        ),
      ),
      const Center(
        child: Text(
          'Scan',
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      horizontalSpace(SizeConfig.defaultSize as double),
    ],
  );
}
