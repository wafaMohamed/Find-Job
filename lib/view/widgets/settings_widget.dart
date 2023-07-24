import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import 'black_text_widget.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                BlackTextWidget(text: text),
                const Spacer(),
                const Icon(Iconsax.arrow_right_1),
              ],
            ),
            SizedBox(
              height: 2.h,
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
