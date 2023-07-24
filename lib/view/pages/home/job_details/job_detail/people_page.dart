import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utilities/assets/app_assets.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/text_widget.dart';


class PeopleIndex extends StatelessWidget {
  const PeopleIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: TextWidget(
              textAlign: TextAlign.start,
              text: '6 Employees For',
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral900,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: TextWidget(
              textAlign: TextAlign.start,
              text: 'UI/UX Design',
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral500,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing:
            Container(
              padding: const EdgeInsets.fromLTRB(22, 18, 26, 10),
              width: 45.w,
              height: 7.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.neutral300,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      textAlign: TextAlign.start,
                      text: 'UI/UX Designer',
                      style: TextStyle(
                        fontFamily: 'SF',
                        overflow: TextOverflow.ellipsis,
                        color: AppTheme.neutral900,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.h),
                    child: Image.asset(
                      AppAssets.arrowDownAsset,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: AppTheme.neutral200,
                height: 1.h,
              );
            },
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                        AppAssets.personalProfileAsset,
                        height: 6.h,
                        width: 12.w,
                        fit: BoxFit.cover,
                      ),
                    ),
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
                        text: 'Senior UI/UX at Twitter',
                        style: TextStyle(
                          fontFamily: 'SF',
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.neutral500,
                          fontSize: 9.sp,
                        )),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Column(
                        children: [
                          TextWidget(
                              textAlign: TextAlign.start,
                              text: 'Work during',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                color: AppTheme.neutral500,
                                fontSize: 9.sp,
                              )),
                          TextWidget(
                              textAlign: TextAlign.start,
                              text: '5 Years',
                              style: TextStyle(
                                fontFamily: 'SF',
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis,
                                color: AppTheme.primary500,
                                fontSize: 9.sp,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
