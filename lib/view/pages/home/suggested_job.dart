import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/text_widget.dart';

class SuggestedJobCard extends StatefulWidget {
  const SuggestedJobCard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SuggestedJobCardState createState() => _SuggestedJobCardState();
}

class _SuggestedJobCardState extends State<SuggestedJobCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 183,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset: Offset(_animation.value * 25, 0),
                child: Container(
                  height: 55.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.primary900,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: AppTheme.primary900,
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: ListTile(
                          leading: Image.asset(AppAssets.twitterLogoAsset),
                          title:  Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextWidget(
                              textAlign: TextAlign.start,
                              text: 'Senior UX Designer',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14.sp,
                                color: AppTheme.backgroundOnBoarding,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          subtitle: Align(
                            alignment: Alignment.topLeft,
                            child: TextWidget(
                              textAlign: TextAlign.start,
                              text: 'Zoom • United States',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                fontSize: 10.sp,
                                color: AppTheme.neutral400,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          trailing: const FittedBox(
                            child: Icon(Iconsax.archive_minus,
                                color: AppTheme.backgroundOnBoarding),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, left: 8),
                            child: Row(
                              children: [
                                Container(
                                  width: 23.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary800,
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      textAlign: TextAlign.start,
                                      text: 'Fulltime',
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 8.sp,
                                        color: AppTheme.backgroundOnBoarding,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Container(
                                  width: 23.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary800,
                                  ),
                                  child: Center(
                                    child:  TextWidget(
                                      textAlign: TextAlign.start,
                                      text: 'Remote',
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 8.sp,
                                        color: AppTheme.backgroundOnBoarding,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                Container(
                                  width: 23.w,
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary800,
                                  ),
                                  child: Center(
                                    child:TextWidget(
                                      textAlign: TextAlign.start,
                                      text: 'Senior',
                                      style: TextStyle(
                                        fontFamily: 'SF',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 8.sp,
                                        color: AppTheme.backgroundOnBoarding,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              TextWidget(
                                textAlign: TextAlign.start,
                                text: 'Month',
                                style: TextStyle(
                                  fontFamily: 'SF',
                                  fontSize: 14.sp,
                                  color: AppTheme.backgroundOnBoarding,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Spacer(),
                              // apply job
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.jobDetailsRoute);
                                },
                                child: Container(
                                  width: 96,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppTheme.primary500,
                                  ),
                                  child: Center(
                                    child: TextWidget(
                                      text: 'Apply now',
                                      style: TextStyle(
                                          fontFamily: 'SF',
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 9.sp,
                                          color:
                                              AppTheme.backgroundOnBoarding,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 20);
        },
      ),
    );
  }
}
