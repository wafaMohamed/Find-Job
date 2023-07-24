import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';

class TextStarWidget extends StatelessWidget {
  const TextStarWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 55),
      child: Row(
        children: [
          TextWidget(
            textAlign: TextAlign.start,
            text: text,
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral900,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextWidget(
            textAlign: TextAlign.start,
            text: '*',
            style: TextStyle(
              fontFamily: 'SF',
              textBaseline: TextBaseline.alphabetic,
              overflow: TextOverflow.ellipsis,
              color: AppTheme.danger500,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
