import 'package:find_job_amit/utilities/strings/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        AppAssets.boarding1Asset,
        fit: BoxFit.cover,
      ),
      SizedBox(height: 2.h),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                AppString.titleOnBoarding1String,
                style: TextStyle(
                    color: AppTheme.neutral900,
                    fontFamily: 'SF',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                AppString.titleOnBoarding1Primary500String1,
                style: TextStyle(
                    color: AppTheme.primary500,
                    fontFamily: 'SF',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
            ]),
            Row(
              children: [
                Text(
                  AppString.titleOnBoarding1Primary500String11,
                  style: TextStyle(
                      color: AppTheme.primary500,
                      fontFamily: 'SF',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  AppString.titleOnBoarding11String1,
                  style: TextStyle(
                      color: AppTheme.neutral900,
                      fontFamily: 'SF',
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              AppString.titleOnBoarding11String11,
              style: TextStyle(
                  color: AppTheme.neutral900,
                  fontFamily: 'SF',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          AppString.subTitleOnBoarding1String,
          style: TextStyle(
              color: AppTheme.neutral500,
              fontFamily: 'SF',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        ),
      ),
    ]);
  }
}
