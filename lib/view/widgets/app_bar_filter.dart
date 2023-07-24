import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'back_button_widget.dart';

class AppBarFilter extends StatelessWidget {
  const AppBarFilter({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButtonWidget(),
        Expanded(
          child: Center(
            child: TextWidget(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              text: text,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18.sp,
                color: AppTheme.neutral900,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        CustomText(
          text: "Reset",
          fontFamily: "SF",
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
          onpressed: onPressed,
        )
      ],
    );
  }
}
