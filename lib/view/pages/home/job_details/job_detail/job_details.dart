import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:find_job_amit/view/pages/home/job_details/job_detail/toggle_switch_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/app_bar_with_text.dart';
import '../../../../widgets/custom_job_info.dart';
import '../../../../widgets/main_button.dart';
import '../../../../widgets/text_widget.dart';


class JobDetails extends StatefulWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: AppBarText(
                      text: 'Job Detail',
                    ),
                  ),
                  Icon(
                    Iconsax.archive_minus5,
                    color: AppTheme.primary500,
                    size: 3.5.h,
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomJobInfo(),
              /// 3 containers
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            fontSize: 9.sp,
                            color: AppTheme.primary500,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
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
                          text: 'Remote',
                          style: TextStyle(
                            fontFamily: 'SF',
                            overflow: TextOverflow.ellipsis,
                            fontSize: 9.sp,
                            color: AppTheme.primary500,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
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
                          text: 'Senior',
                          style: TextStyle(
                            fontFamily: 'SF',
                            overflow: TextOverflow.ellipsis,
                            fontSize: 9.sp,
                            color: AppTheme.primary500,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              const Expanded(
                child: ToggleSwitchScreen(),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: CustomMainButton(
                  onpressed: () {
                    Navigator.pushNamed(context, AppRoutes.applyJobScreenRoute);
                  },
                  text: 'Apply now',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
