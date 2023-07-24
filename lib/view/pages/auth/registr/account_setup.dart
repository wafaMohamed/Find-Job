import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/back_button_widget.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/main_button.dart';

class AccountSetup extends StatelessWidget {
  const AccountSetup({Key? key}) : super(key: key);

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
                const BackButtonWidget(),
                SizedBox(height: 10.h),
                Image.asset(AppAssets.createAccountAsset),
                SizedBox(height: 3.h),
                CustomText(
                    textAlign: TextAlign.center,
                    text: AppString.yourAccountSetUpString,
                    style: TextStyle(
                        color: AppTheme.neutral900,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                    fontFamily: "SF",
                    onpressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomText(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                        color: AppTheme.neutral500,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400),
                    text: AppString.weHaveCustomizedFeedsString,
                    fontFamily: 'SF',
                    onpressed: () {},
                  ),
                ),
                SizedBox(height: 33.h),
                CustomMainButton(
                    onpressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.bottomNavigationRoute);
                    },
                    text: AppString.getStartedString),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
