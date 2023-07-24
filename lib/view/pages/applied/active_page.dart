import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/gray_bar_widget.dart';
import '../../widgets/text_widget.dart';

class ActiveJobScreen extends StatefulWidget {
  const ActiveJobScreen({Key? key}) : super(key: key);

  @override
  State<ActiveJobScreen> createState() => _ActiveJobScreenState();
}

class _ActiveJobScreenState extends State<ActiveJobScreen> {
  bool isIconBlue = false;
  int currentStep = 0;
  List<bool> stepCompletionStatus = [
    false,
    false,
    false
  ]; // Track completion on each step

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const GrayBarWidget(
            text: '3 Jobs',
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 1.h,
              );
            },
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Image.asset(AppAssets.twitterLogoAsset),
                        title: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            textAlign: TextAlign.start,
                            text: 'Senior UX Designer',
                            style: TextStyle(
                              fontFamily: 'SF',
                              overflow: TextOverflow.ellipsis,
                              color: AppTheme.neutral900,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        subtitle: TextWidget(
                            textAlign: TextAlign.start,
                            text: 'Discord • Jakarta, Indonesia',
                            style: TextStyle(
                              fontFamily: 'SF',
                              overflow: TextOverflow.ellipsis,
                              color: AppTheme.neutral700,
                              fontSize: 9.sp,
                            )),
                        trailing: GestureDetector(
                          onTap: () {
                            setState(() {
                              isIconBlue = !isIconBlue;
                            });
                            // Navigator.pushNamed(context, AppRoutes.savedScreenRoute);
                          },
                          child: Icon(
                            Iconsax.archive_minus,
                            color: isIconBlue ? AppTheme.primary500 : null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Container(
                                  width: 20.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary100,
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      textAlign: TextAlign.start,
                                      text: 'Fulltime',
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 10.sp,
                                        color: AppTheme.primary500,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Container(
                                  width: 20.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary100,
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      textAlign: TextAlign.start,
                                      text: 'Remote',
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 10.sp,
                                        color: AppTheme.primary500,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextWidget(
                              textAlign: TextAlign.start,
                              text: 'Posted 2 days ago',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                fontSize: 10.sp,
                                color: AppTheme.neutral500,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        width: 327,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 10),
                        decoration: BoxDecoration(
                          color: AppTheme.neutral100, // Neutral/100
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: AppTheme.neutral400),
                          // Neutral/300
                        ),
                        child:  InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.stepperAppliedJobRoute);
                          },
                          child: Row(
                            children: [
                              buildStepItem(0, 'Bio data'),
                              buildLineDash(0),
                              buildStepItem(1, 'Type work'),
                              buildLineDash(1),
                              buildStepItem(2, 'portfolio'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Divider(color: AppTheme.neutral200, height: 1.h),
                    ]),
              );
            },
          ),
        ],
      ),
    );
  }
  Widget buildStepItem(int step, String title) {
    final isActive = currentStep == step;
    final isCompleted = stepCompletionStatus[step];
    final containerColor = isActive
        ? AppTheme.primary500
        : AppTheme.backgroundOnBoarding;
    final edgeColor = isActive ? AppTheme.primary500 : AppTheme.neutral400;
    final textColor = isActive ? AppTheme.backgroundOnBoarding : AppTheme.neutral400;
    const completedIconColor = AppTheme.backgroundOnBoarding;
    final completedIconSize = 4.h;


    return Expanded(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              if (!isCompleted) {
                setState(() {
                  currentStep = step;
                });
              }
            },
            child: FittedBox(
              fit: BoxFit.fill,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints:
                    const BoxConstraints.tightFor(width: 40, height: 40),
                    // Set exact width and height
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: containerColor,
                      border: Border.all(
                        width: 1,
                        color: edgeColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                  if (isCompleted)
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.primary500,
                      ),
                      child: Icon(
                        Icons.check,
                        color: completedIconColor,
                        size: completedIconSize,
                      ),
                    ),
                  if (!isCompleted)
                    Center(
                      child: Text(
                        (step + 1).toString(),
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'SF',
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.contain,
            child: TextWidget(
              text: title,
              style: TextStyle(
                fontFamily: "SF",
                color: isCompleted
                    ? AppTheme.primary500
                    : (isActive ? AppTheme.primary500 : AppTheme.neutral900),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLineDash(int step) {
    final isCompleted = stepCompletionStatus[step];
    final dashColor = isCompleted ? AppTheme.primary500 : AppTheme.neutral400;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.h),
        child: Dash(
          direction: Axis.horizontal,
          length: 50,
          dashLength: 8,
          dashColor: dashColor,
        ),
      ),
    );
  }
}
