import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../utilities/themes/apptheme.dart';

class GreyTextWidget extends StatelessWidget {
  const GreyTextWidget({Key? key, required this.text, required this.fontSize}) : super(key: key);
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextWidget(
        text: text,
        maxLines: 20,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppTheme.neutral500,
          fontSize: fontSize,
          fontFamily: 'SF',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
