import 'package:flutter/cupertino.dart';
import '../../constants/size_config.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: SizeConfig.defaultSize! * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
