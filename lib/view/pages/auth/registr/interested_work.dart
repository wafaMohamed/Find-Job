import 'package:find_job_amit/utilities/strings/app_strings.dart';
import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:find_job_amit/view/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/Custom_interested_work.dart';

class InterestedWork extends StatelessWidget {
  InterestedWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.h),
                CustomText(
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    text: AppString.whatTypeWorkInterestedString,
                    style: const TextStyle(
                        color: AppTheme.neutral900,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                    fontFamily: "SF",
                    onpressed: () {}),
                CustomText(
                  maxLines: 2,
                  style: TextStyle(
                      color: AppTheme.neutral500,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                  text: AppString.tellUsWhatInterestedString,
                  fontFamily: 'SF',
                  onpressed: () {},
                ),
                SizedBox(height: 5.h),
                // multiSelected Work Interested container
               const CustomInterestedWork(),
                SizedBox(height: 7.h),

                CustomMainButton(
                    onpressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.locationRoute);
                    },
                    text: "Next"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
