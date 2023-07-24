import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';

class BlackTextWidget extends StatelessWidget {
  const BlackTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      style: TextStyle(
        color: AppTheme.neutral900,
        fontSize: 15.sp,
        fontFamily: 'SF',
        fontWeight: FontWeight.w400,

      ),
    );
  }
}
