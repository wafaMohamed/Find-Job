import 'package:find_job_amit/view/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'black_text_widget.dart';

class NotificationCustom extends StatelessWidget {
  const NotificationCustom({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        children: [
          Row(
            children: [

              BlackTextWidget(text: text),
              const Spacer(),
              const ToggleButtonCustom(),
            ],
          ),
          Divider(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
