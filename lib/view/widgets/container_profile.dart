import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/themes/apptheme.dart';

class ContainerProfile extends StatelessWidget {
  const ContainerProfile({Key? key, required this.text, required this.text1, required this.text2, required this.text3, required this.text4, required this.text5}) : super(key: key);
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.neutral100,
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(11),
      width: 85.w,
      height: 10.h,
      child: Row(
        children: [
          Column(
            children: [
              TextWidget(
                text:text,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral500),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextWidget(
                text: text1,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral900),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: .5.w,
            height: 6.h,
            color: AppTheme.neutral300,
          ),
          const Spacer(),
          Column(
            children: [
              TextWidget(
                text: text2,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral500),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextWidget(
                text: text3,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral900),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: .5.w,
            height: 6.h,
            color: AppTheme.neutral300,
          ),
          const Spacer(),
          Column(
            children: [
              TextWidget(
                text: text4,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral500),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextWidget(
                text: text5,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "SF",
                    color: AppTheme.neutral900),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
