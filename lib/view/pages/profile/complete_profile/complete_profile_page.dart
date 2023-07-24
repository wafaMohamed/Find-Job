import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:find_job_amit/view/widgets/app_bar_with_text.dart';
import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/complete_profile_widget.dart';
import '../../../widgets/grey_text.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  // List<bool> isSelectedList = [false, false, false, false]; // selection status for each container.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 10),
                child: AppBarText(text: "Complete Profile"),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: CircularPercentIndicator(
                  radius: 10.h,
                  lineWidth: 3.w,
                  animation: true,
                  percent: 0.5,
                  center: TextWidget(
                    text: '50%',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        fontFamily: "SF",
                        color: AppTheme.primary500),
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextWidget(
                      text: '2/4 Completed',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                          fontFamily: "SF",
                          color: AppTheme.primary500),
                    ),
                  ),
                  addAutomaticKeepAlive: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: AppTheme.primary500,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              GreyTextWidget(
                text: 'Complete your profile before applying for a job',
                fontSize: 13.sp,
              ),
              SizedBox(
                height: 4.h,
              ),

              /// 4 containers

              CompleteWidget(
                text: 'Personal Details',
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.editeProfilePageRoute);
                },
                subTitle: 'Full name, email, phone number, and your address',
              ),
              Image.asset(AppAssets.vectorGreyAsset,
                  color: AppTheme.primary500),
              CompleteWidget(
                text: 'Education',
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.educationRoute);
                },
                subTitle:
                    'Enter your educational history to be considered by the recruiter',
              ),
              Image.asset(
                AppAssets.vectorGreyAsset,
              ),
              CompleteWidget(
                text: 'Experience',
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.experienceRoute);
                },
                subTitle:
                    'Enter your work experience to be considered by the recruiter',
              ),
              Image.asset(
                AppAssets.vectorGreyAsset,
              ),
              CompleteWidget(
                text: 'Portfolio',
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.portfolioRoute);
                },
                subTitle:
                    'Create your portfolio. Applying for various types of jobs is easier.',
              ),
              SizedBox(
                height: 4.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
