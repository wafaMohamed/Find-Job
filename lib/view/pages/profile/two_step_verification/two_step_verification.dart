import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:find_job_amit/utilities/themes/apptheme.dart';
import 'package:find_job_amit/view/widgets/black_text_widget.dart';
import 'package:find_job_amit/view/widgets/bold_text.dart';
import 'package:find_job_amit/view/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/grey_text.dart';
import '../../../widgets/toggle_button.dart';

class TwoStepVerification extends StatelessWidget {
  const TwoStepVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              const AppBarText(text: "Two-step verification"),
              SizedBox(
                height: 3.h,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
                width: double.infinity,
                height: 10.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppTheme.neutral300,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    GreyTextWidget(
                        text: "Secure account by two-step verification",
                        fontSize: 10.sp),
                    SizedBox(
                      width: 3.w,
                    ),
                    const ToggleButtonCustom(),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              const BoldTextWidget(text: "Select a verification method"),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.phoneTwoStepRoute);
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
                  width: double.infinity,
                  height: 10.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.neutral300,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const BlackTextWidget(
                        text: "Telephone number (SMS)",
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Image.asset(
                        AppAssets.arrowDownAsset,
                        height: 5.h,
                        width: 5.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: GreyTextWidget(
                    text:
                        "Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.",
                    fontSize: 11.sp),
              ),
              SizedBox(height: 28.h,),
              CustomMainButton(
                  onpressed: () {
                    Navigator.pushNamed(context, AppRoutes.phoneTwoStepRoute);
                  },
                  text: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
