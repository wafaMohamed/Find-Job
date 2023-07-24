import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';
import 'custom_text.dart';

class GrayBarWidget extends StatelessWidget {
  const GrayBarWidget({Key? key, required this.text}) : super(key: key);
  final String text;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
          height: 5.h,
          width: 360.w,
          decoration: BoxDecoration(
            color: AppTheme.neutral100,
            border: Border.all(
              color: AppTheme.neutral200,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 5.w,
              ),
              CustomText(
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                    color: AppTheme.neutral500,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
                text: text,
                fontFamily: 'SF',
                onpressed: () {},
              ),
            ],
          )),
    );
  }
}
