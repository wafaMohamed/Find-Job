import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'back_button_widget.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButtonWidget(),
        // Replace this with your custom back button widget
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
      ],
    );
  }
}
