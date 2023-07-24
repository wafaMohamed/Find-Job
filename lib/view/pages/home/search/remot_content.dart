import 'package:chip_list/chip_list.dart';
import 'package:find_job_amit/view/widgets/app_bar_with_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/main_button.dart';

class RemoteContent extends StatefulWidget {
  const RemoteContent({Key? key}) : super(key: key);

  @override
  State<RemoteContent> createState() => _RemoteContentState();
}

class _RemoteContentState extends State<RemoteContent> {
  final List<String> _Types = [
    'Remote',
    'Onsite',
    'Hybrid',
    'Any',
  ];
  final List<int> _selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 2.h),
        const AppBarText(
          text: 'On-Site/Remote',
        ),
        SizedBox(height: 2.h),
        ChipList(
          listOfChipNames: _Types,
          supportsMultiSelect: true,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontFamily: 'SF', fontSize: 12.sp),
          inactiveBgColorList: const [AppTheme.backgroundOnBoarding],
          activeBgColorList: const [AppTheme.primary100],
          activeTextColorList: const [AppTheme.primary500],
          activeBorderColorList: const [AppTheme.primary500],
          inactiveBorderColorList: const [AppTheme.neutral500],
          inactiveTextColorList: const [AppTheme.neutral500],
          listOfChipIndicesCurrentlySeclected:_selectedIndex,
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: double.infinity,
          child: CustomMainButton(onpressed: () {}, text: 'Show result'),
        )
      ],
    );
  }
}
