import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/size_config.dart';

class HomeViewModel extends BaseViewModel {
  void onInit(BuildContext context) {
    SizeConfig().init(context);
  }
}
