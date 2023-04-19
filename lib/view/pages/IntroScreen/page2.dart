

import 'package:find_job_amit/utilities/themes/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/strings/app_strings.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        AppAssets.boarding2Asset,
        fit: BoxFit.cover,
      ),
      SizedBox(height: 2.h),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.titleOnBoarding2String1,
              style: TextStyle(
                  color: AppTheme.neutral900,
                  fontFamily: 'SF',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500),
            ),
            Row(children: [
              Text(
                AppString.titleOnBoarding2String11,
                style: TextStyle(
                    color: AppTheme.neutral900,
                    fontFamily: 'SF',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                AppString.titleOnBoarding2Primary500String1,
                style: TextStyle(
                    color: AppTheme.primary500,
                    fontFamily: 'SF',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
            ]),

            Text(
              AppString.titleOnBoarding2Primary500String11,
              style: TextStyle(
                  color: AppTheme.primary500,
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
          AppString.subTitleOnBoarding2String,
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
