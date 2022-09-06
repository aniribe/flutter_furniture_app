import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants/app_colors.dart';
import 'package:furniture_app/constants/app_images.dart';
import 'package:furniture_app/constants/size_config.dart';
import 'package:furniture_app/constants/string_constants.dart';
import 'package:furniture_app/ui/ui_util/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'components/section_title.dart';
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
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
                child: const SectionTitle(
                    title: StringConstants.browseByCategories),
              ),
              Container(
                width: SizeConfig.defaultSize! * 20.5,
                child: AspectRatio(
                  aspectRatio: 0.83,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        color: Colors.blueAccent,
                      ),
                      ClipPath(
                        clipper: CategoryCustomShape(),
                        child: AspectRatio(
                          aspectRatio: 1.025,
                          child: Container(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.lineTo(width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
