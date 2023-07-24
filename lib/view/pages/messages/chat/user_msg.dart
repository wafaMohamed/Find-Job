import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/text_widget.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 75.w,
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: AppTheme.primary500,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextWidget(
                  text:
                      "Hi facebook, thank you for considering me, this is good news for me.",
                  style: TextStyle(
                    fontFamily: 'SF',
                    color: AppTheme.neutral200,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12.sp,
                  ),
                  maxLines: 20,
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text: "10.18",
                  style: TextStyle(
                    color: AppTheme.neutral200,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 8.sp,
                    fontFamily: 'SF',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
        ],
      ),
    );
  }
}
