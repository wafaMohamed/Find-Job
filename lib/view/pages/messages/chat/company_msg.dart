import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/text_widget.dart';

class CompanyMessage extends StatelessWidget {
  const CompanyMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Container(
            width: 75.w,
            //height: 20.h,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: AppTheme.neutral200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Add your content here
                TextWidget(
                  maxLines: 20,
                  text:
                      "Hi wafa!, I'm Melan the selection team from facebook. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
                  style: TextStyle(
                    color: AppTheme.neutral800,
                    fontFamily: 'SF',
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text: "10.18",
                  style: TextStyle(
                    color: AppTheme.neutral400,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 8.sp,
                    fontFamily: 'SF',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
