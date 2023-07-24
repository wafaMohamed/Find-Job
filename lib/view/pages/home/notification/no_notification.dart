import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/custom_text.dart';

class NoNotification extends StatelessWidget {
  const NoNotification({Key? key}) : super(key: key);

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
                SizedBox(height: 2.h),
                 AppBarText(text:AppString.notificationString),
                SizedBox(height: 18.h),
                Image.asset(AppAssets.notificationAsset),
                SizedBox(height: 3.h),
                CustomText(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    text: AppString.noNotificationsString,
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
                    text: AppString.receiveNotificationString,
                    fontFamily: 'SF',
                    onpressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
