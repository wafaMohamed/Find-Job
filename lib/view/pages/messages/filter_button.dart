import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/route/routes.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/bottomsheet_messages.dart';
import '../../widgets/text_widget.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 1.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        text: "Message filters",
                        style: TextStyle(
                          fontFamily: 'SF',
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.neutral900,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    BottomSheetMessages(
                      text: 'Unread',
                      onpressed: () {
                        Navigator.pushNamed(context,
                            AppRoutes.unReadMessagesRoute);
                      },
                    ),
                    SizedBox(height: 2.h),
                    BottomSheetMessages(
                      text: 'Spam',
                      onpressed: () {
                        Navigator.pushNamed(context,
                            AppRoutes.spamMessagesRoute);
                      },
                    ),
                    SizedBox(height: 2.h),
                    BottomSheetMessages(
                      text: 'Archived',
                      onpressed: () {
                        Navigator.pushNamed(context,
                            AppRoutes.archiveMessagesRoute);
                      },
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              );
            },
          );
        },
        child: Image.asset(
          AppAssets.filterAsset,
        ));
  }
}
