import 'package:find_job_amit/view/widgets/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged, required this.imageAsset,
  }) : super(key: key);

  final String text;
  final int value;
  final int groupValue;
  final Function(int?) onChanged;
  final String imageAsset;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(imageAsset),
                SizedBox(
                  width: 3.w,
                ),
                BoldTextWidget(text: text),
                const Spacer(),
                Radio(
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
              ],
            ),
            Divider(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
