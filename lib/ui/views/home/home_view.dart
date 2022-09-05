import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants/app_colors.dart';
import 'package:furniture_app/constants/app_images.dart';
import 'package:furniture_app/constants/size_config.dart';
import 'package:furniture_app/ui/ui_util/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.onInit(context),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
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
        ),
      ),
    );
  }
}
