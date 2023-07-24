import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/text_widget.dart';

class RecentJobCard extends StatefulWidget {
  const RecentJobCard({Key? key}) : super(key: key);

  @override
  State<RecentJobCard> createState() => _RecentJobCardState();
}

class _RecentJobCardState extends State<RecentJobCard> {
  bool isIconBlue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
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
          return Column(
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
                      color: isIconBlue ? Colors.blue : null,
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
                            width: 18.w,
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
                                  fontSize: 8.sp,
                                  color: AppTheme.primary500,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            width: 18.w,
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
                                  fontSize: 8.sp,
                                  color: AppTheme.primary500,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            width: 18.w,
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
                                  fontSize: 8.sp,
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
                        text: '15/Month',
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
                  height: 1.h,
                ),
                Divider(color: AppTheme.neutral200, height: 1.h),
              ]);
        },
      ),
    );
  }
}
