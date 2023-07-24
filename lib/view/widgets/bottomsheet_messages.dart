import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';

class BottomSheetMessages extends StatelessWidget{
  const BottomSheetMessages({Key? key, required this.text, required this.onpressed}) : super(key: key);
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(24, 14, 24, 10),
        width: double.infinity,
        height: 7.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.neutral300,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [

            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: text,
                  style: TextStyle(
                    fontFamily: 'SF',
                    overflow: TextOverflow.ellipsis,
                    color: AppTheme.neutral700,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppTheme.neutral700,
              size: 3.h,
              weight: 1.h,
            ),
          ],
        ),
      ),
    );
  }
}
