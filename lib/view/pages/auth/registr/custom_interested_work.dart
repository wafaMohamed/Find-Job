import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/custom_text.dart';


class CustomInterestedWork extends StatefulWidget {
  const CustomInterestedWork({Key? key}) : super(key: key);

  @override
  State<CustomInterestedWork> createState() => _CustomInterestedWorkState();
}

class _CustomInterestedWorkState extends State<CustomInterestedWork> {
  final List<bool> _isSelected = [false, false];
  final List<bool> _isSelected1 = [false, false];
  final List<bool> _isSelected2 = [false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //ui/ux and illustrator designer row
          Row(
            children: [
              //UI/UX Designer Container
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected[0] = !_isSelected[0];
                    });
                  },
                  child: Container(
                    width: 156,
                    height: 125,
                    decoration: BoxDecoration(
                      color: _isSelected[0]
                          ? AppTheme.primary100
                          : AppTheme.backgroundOnBoarding,
                      border: Border.all(
                          color: _isSelected[0]
                              ? AppTheme.primary500
                              : AppTheme.neutral300,
                          width: 1),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primary300.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        //ImageIcon for ui uix
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                                width: 48,
                                // set the width of the outer container
                                height: 48,
                                // set the height of the outer container
                                decoration: BoxDecoration(
                                  color: AppTheme.backgroundOnBoarding,
                                  border: Border.all(
                                      color: _isSelected[0]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ImageIcon(
                                    AssetImage(_isSelected[0]
                                        ? AppAssets.uiUxDesignerInner
                                        : AppAssets.uiUxDesignerAsset),
                                    size: 100,
                                    color: _isSelected[0]
                                        ? AppTheme.primary500
                                        : AppTheme.neutral900)),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                        // Text UI/UX Designer
                        Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: AppString.uIUXDesignerString,
                              fontFamily: 'SF',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.neutral900,
                                  fontSize: 11.sp),
                              onpressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              //Illustrator Designer Container
              Expanded(
                child: GestureDetector(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isSelected[1] = !_isSelected[1];
                      });
                    },
                    child: Container(
                      width: 156,
                      height: 125,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.primary300.withOpacity(0.3),
                            spreadRadius: 6,
                            blurRadius: 9,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: _isSelected[1]
                            ? AppTheme.primary100
                            : AppTheme.backgroundOnBoarding,
                        border: Border.all(
                            color: _isSelected[1]
                                ? AppTheme.primary500
                                : AppTheme.neutral300,
                            width: 1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          //ImageIcon for Illustrator Designer
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 14,
                              ),
                              Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppTheme.backgroundOnBoarding,
                                    border: Border.all(
                                        color: _isSelected[1]
                                            ? AppTheme.primary500
                                            : AppTheme.neutral300,
                                        width: 1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: ImageIcon(
                                      AssetImage(_isSelected[1]
                                          ? AppAssets.illustratorDesignerInner
                                          : AppAssets.illustratorDesignerAsset),
                                      size: 100,
                                      color: _isSelected[1]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral900)),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                          //text for Illustrator Designer
                          Row(
                            children: [
                              const SizedBox(
                                width: 9,
                              ),
                              CustomText(
                                textAlign: TextAlign.start,
                                text: AppString.illustratorDesignerString,
                                fontFamily: 'SF',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: AppTheme.neutral900,
                                    fontSize: 10.70.sp),
                                onpressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //developer and management row
          Row(
            children: [
              //Developer Container
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected1[0] = !_isSelected1[0];
                    });
                  },
                  child: Container(
                    width: 156,
                    height: 125,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primary300.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: _isSelected1[0]
                          ? AppTheme.primary100
                          : AppTheme.backgroundOnBoarding,
                      border: Border.all(
                          color: _isSelected1[0]
                              ? AppTheme.primary500
                              : AppTheme.neutral300,
                          width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        //image icon developer
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: AppTheme.backgroundOnBoarding,
                                  border: Border.all(
                                      color: _isSelected1[0]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ImageIcon(
                                    AssetImage(_isSelected1[0]
                                        ? AppAssets.developerInnerAsset
                                        : AppAssets.developerAsset),
                                    size: 100,
                                    color: _isSelected1[0]
                                        ? AppTheme.primary500
                                        : AppTheme.neutral900)),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                        //text developer
                        Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: AppString.developerString,
                              fontFamily: 'SF',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.neutral900,
                                  fontSize: 11.sp),
                              onpressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              //Management Container
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected1[1] = !_isSelected1[1];
                    });
                  },
                  child: Container(
                    width: 156,
                    height: 125,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primary300.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: _isSelected1[1]
                          ? AppTheme.primary100
                          : AppTheme.backgroundOnBoarding,
                      border: Border.all(
                          color: _isSelected1[1]
                              ? AppTheme.primary500
                              : AppTheme.neutral300,
                          width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            //ImageIcon for Information Technology
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: AppTheme.backgroundOnBoarding,
                                  border: Border.all(
                                      color: _isSelected1[1]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ImageIcon(
                                    AssetImage(_isSelected1[1]
                                        ? AppAssets.managementInnerAsset
                                        : AppAssets.managementAsset),
                                    size: 100,
                                    color: _isSelected1[1]
                                        ? AppTheme.primary500
                                        : AppTheme.neutral900)),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),

                        //Text for Information Technology
                        Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            CustomText(
                              textAlign: TextAlign.start,
                              text: AppString.managementString,
                              fontFamily: 'SF',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppTheme.neutral900,
                                  fontSize: 11.sp),
                              onpressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //Information Technology and Research and Analytics row
          Row(
            children: [
              //Information Technology Container
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected2[0] = !_isSelected2[0];
                    });
                  },
                  child: Container(
                    width: 156,
                    height: 125,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primary300.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: _isSelected2[0]
                          ? AppTheme.primary100
                          : AppTheme.backgroundOnBoarding,
                      border: Border.all(
                          color: _isSelected2[0]
                              ? AppTheme.primary500
                              : AppTheme.neutral300,
                          width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        //ImageIcon for Information Technology
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: _isSelected2[0]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ImageIcon(
                                    AssetImage(_isSelected2[0]
                                        ? AppAssets
                                            .informationTechnologyInnerAsset
                                        : AppAssets.informationTechnologyAsset),
                                    size: 100,
                                    color: _isSelected2[0]
                                        ? AppTheme.primary500
                                        : AppTheme.neutral900)),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        // Text Information Technology
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  AppString.informationString,
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontWeight: FontWeight.w400,
                                    color: AppTheme.neutral900,
                                    fontSize: 11.sp,
                                  ),
                                ),
                                Text(
                                  AppString.technologyString,
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontWeight: FontWeight.w400,
                                    color: AppTheme.neutral900,
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              //Research and Analytics Container
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected2[1] = !_isSelected2[1];
                    });
                  },
                  child: Container(
                    width: 156,
                    height: 125,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primary300.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: _isSelected2[1]
                          ? AppTheme.primary100
                          : AppTheme.backgroundOnBoarding,
                      border: Border.all(
                          color: _isSelected2[1]
                              ? AppTheme.primary500
                              : AppTheme.neutral300,
                          width: 1),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        //ImageIcon for Research and Analytics
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // i use row for align property
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: _isSelected2[1]
                                          ? AppTheme.primary500
                                          : AppTheme.neutral300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ImageIcon(
                                    AssetImage(_isSelected2[1]
                                        ? AppAssets
                                            .researchAndAnalyticsInnerAsset
                                        : AppAssets.researchAndAnalyticsAsset),
                                    size: 100,
                                    color: _isSelected2[1]
                                        ? AppTheme.primary500
                                        : AppTheme.neutral900)),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        // Text Research and Analytics
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppString.researchString,
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontWeight: FontWeight.w400,
                                    color: AppTheme.neutral900,
                                    fontSize: 11.sp,
                                  ),
                                ),
                                Text(
                                  AppString.andAnalyticsString,
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontWeight: FontWeight.w400,
                                    color: AppTheme.neutral900,
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
