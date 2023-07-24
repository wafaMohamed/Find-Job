import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/themes/apptheme.dart';

class WriteMessageButton extends StatelessWidget {
  const WriteMessageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(AppAssets.paperClipAsset),
          ),
          SizedBox(
            width: 2.w,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
              height: 7.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.neutral300,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 1.w,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write a message...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: AppTheme.neutral400,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(AppAssets.microphoneAsset),
          ),
        ],
      ),
    );
  }
}
