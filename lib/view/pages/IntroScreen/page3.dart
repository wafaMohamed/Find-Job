import 'package:find_job_amit/utilities/themes/apptheme.dart';
import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/strings/app_strings.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        AppAssets.boarding3Asset,
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
                AppString.titleOnBoarding3String,
                style: TextStyle(
                    color: AppTheme.neutral900,
                    fontFamily: 'SF',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                AppString.titleOnBoarding3Primary500String1,
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
                  AppString.titleOnBoarding3Primary500String11,
                  style: TextStyle(
                      color: AppTheme.primary500,
                      fontFamily: 'SF',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  AppString.titleOnBoarding33String1,
                  style: TextStyle(
                      color: AppTheme.neutral900,
                      fontFamily: 'SF',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              AppString.titleOnBoarding33String11,
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
        child: CustomText(
          maxLines: 2,
          style: TextStyle(
              color: AppTheme.neutral500,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400),
          fontFamily: 'SF',
          text: AppString.subTitleOnBoarding3String,
          onpressed: () {},
        ),
      ),
    ]);
  }
}
