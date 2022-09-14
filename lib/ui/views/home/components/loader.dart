import 'package:flutter/cupertino.dart';

import '../../../../constants/app_images.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppImages.rippleIcon),
    );
  }
}
