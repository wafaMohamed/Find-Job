import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/main_button.dart';

class PasswordChangedSuccessfully extends StatelessWidget {
  const PasswordChangedSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 18.h),
                Image.asset(AppAssets.passAsset),
                SizedBox(height: 3.h),
                CustomText(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    text: AppString.passwordChangedHeadTitleString,
                    style: TextStyle(
                        color: AppTheme.neutral900,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                    fontFamily: "SF",
                    onpressed: () {}),
                Center(
                  child: CustomText(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                        color: AppTheme.neutral500,
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w400),
                    text: AppString.passwordChangedSubTitleString,
                    fontFamily: 'SF',
                    onpressed: () {},
                  ),
                ),
                SizedBox(height: 25.h),
                CustomMainButton(
                    onpressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.bottomNavigationRoute);
                    },
                    text: AppString.openEmailString),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
